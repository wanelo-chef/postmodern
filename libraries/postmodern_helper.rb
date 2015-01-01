require 'chef/mixin/shell_out'
include Chef::Mixin::ShellOut

module Postmodern
  class Helper < Struct.new(:node)
    def pg_options
      options = []
      if pg_config
        options << '--with-pg-config'
        options << pg_config
      end
      options.join(' ')
    end

    def pg_config
      case node.platform
      when 'omnios'
        '/opt/pgsql934/bin/pg_config'
      end
    end
  end
end

include_recipe 'build-essential'

package node['postmodern']['ruby_package_name']

helper = Postmodern::Helper.new(node)

gem_package 'pg' do
  options("-- #{helper.pg_options}")
  gem_binary node['postmodern']['gem_binary']
  not_if { helper.pg_options.empty? }
end

gem_package 'postmodern' do
  version node['postmodern']['version']
  gem_binary node['postmodern']['gem_binary']
end


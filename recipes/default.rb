include_recipe 'build-essential'

ruby_package_search = node['postmodern']['ruby_package_search']

if ruby_package_search
  ruby_package = begin
    pkg = shell_out("pkgin se ruby | grep #{ruby_package_search} | grep -- '-base-'").stdout.split(/[\s;]/).first
    pkg.split('-')[0..-2].join('-') if pkg
  end
  ruby_package = node['postmodern']['ruby_package_name'] if ruby_package.nil? or ruby_package.eql?('')
else
  ruby_package = node['postmodern']['ruby_package_name']
end

raise "Ruby package not defined, is [#{ruby_package}]" if ruby_package.nil? or ruby_package.eql?('')
package ruby_package

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


include_recipe 'build-essential'

package node['postmodern']['ruby_package_name']

gem_package 'postmodern' do
  version node['postmodern']['version']
  gem_binary node['postmodern']['gem_binary']
end


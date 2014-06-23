default['postmodern']['version'] = '0.4.2'

case node['platform']
  when 'smartos'
    default['postmodern']['ruby_package_name'] = 'ruby193'
    default['postmodern']['gem_binary'] = '/opt/local/bin/gem'
  when 'omnios'
    default['postmodern']['ruby_package_name'] = 'ruby-19'
    default['postmodern']['gem_binary'] = '/opt/omni/bin/gem'
  else
    default['postmodern']['ruby_package_name'] = 'ruby1.9.3'
    default['postmodern']['gem_binary'] = 'gem'
end

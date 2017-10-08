#
# Cookbook:: gocd
# Recipe:: nginx-proxy
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'nginx' do
  action :install
end

service 'nginx' do
  supports status: true, restart: true, reload: true
  action [:start, :enable]
end

template '/etc/nginx/nginx.conf' do
  source 'nginx.conf.erb'
  owner 'nginx'
  group 'nginx'
  mode '0644'
  notifies :restart, 'service[nginx]'
end

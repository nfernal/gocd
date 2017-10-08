#
# Cookbook:: gocd
# Recipe:: go-server
#
# Copyright:: 2017, The Authors, All Rights Reserved.

yum_repository 'gocd' do
  description 'GoCD YUM Repository'
  baseurl node['gocd']['repository']['yum']['baseurl']
  gpgcheck node['gocd']['repository']['yum']['gpgcheck']
  gpgkey node['gocd']['repository']['yum']['gpgkey']
end

include_recipe 'java'

package 'go-server' do
  action :install
end

service 'go-server' do
  supports status: true, restart: true, reload: true
  action [:start, :enable]
end

remote_file '/var/lib/go-server/plugins/external/github-oauth-authorization-plugin-2.0.0-12.jar' do
  owner 'root'
  group 'root'
  mode '0644'
  source node['gocd']['gocd_oauth_login']['url']
  checksum '070937a42d437914562e03c69a1130579116cae89a1ceaf066818c88780549c0'
  notifies :restart, 'service[go-server]', :delayed
end



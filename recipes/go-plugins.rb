#
# Cookbook:: gocd
# Recipe:: go-plugins
#
# Copyright:: 2017, The Authors, All Rights Reserved.

remote_file '/var/lib/go-server/plugins/external/github-oauth-authorization-plugin-2.0.0-12.jar' do
  owner node['gocd']['user']
  group node['gocd']['group']
  mode '0644'
  source node['gocd']['gocd_oauth_login']['url']
  checksum '070937a42d437914562e03c69a1130579116cae89a1ceaf066818c88780549c0'
  notifies :restart, 'service[go-server]', :delayed
end

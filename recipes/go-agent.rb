#
# Cookbook:: gocd
# Recipe:: go-agent
#
# Copyright:: 2017, The Authors, All Rights Reserved.

yum_repository 'gocd' do
  description 'GoCD YUM Repository'
  baseurl node['gocd']['repository']['yum']['baseurl']
  gpgcheck node['gocd']['repository']['yum']['gpgcheck']
  gpgkey node['gocd']['repository']['yum']['gpgkey']
end

include_recipe 'java'

package 'go-agent' do
  action :install
end

service 'go-agent' do
  supports status: true, restart: true, reload: true
  action [:start, :enable]
end

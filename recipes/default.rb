#
# Cookbook:: gocd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

yum_repository 'gocd' do
  description 'GoCD YUM Repository'
  baseurl node['gocd']['repository']['yum']['baseurl']
  gpgcheck node['gocd']['repository']['yum']['gpgcheck']
  gpgkey node['gocd']['repository']['yum']['gpgkey']
end

include_recipe 'hostname'

ohai 'reload' do
  action :reload
end

include_recipe 'java'
include_recipe 'gocd::go-server'


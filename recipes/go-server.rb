#
# Cookbook:: gocd
# Recipe:: go-server
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'go-server' do
  action :install
end

service 'go-server' do
  supports :status => true, :restart => true, :reload => true
  action [:start, :enable]
end

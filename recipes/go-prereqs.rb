#
# Cookbook:: gocd
# Recipe:: go-prereqs
#
# Copyright:: 2017, The Authors, All Rights Reserved.

gopem = data_bag_item('private_keys', 'go')
goaws = data_bag_item('aws_keys', 'keys')

template "/home/#{node['gocd']['user']}/.ssh/go_rsa" do
  source 'go_rsa.erb'
  owner node['gocd']['user']
  group node['gocd']['group']
  mode '0400'
  variables({
    :gopem => gopem
    })
end

template "/home/#{node['gocd']['user']}/.ssh/known_hosts" do
  source 'known_hosts.erb'
  owner node['gocd']['user']
  group node['gocd']['group']
  mode '0644'
end

directory "/home/#{node['gocd']['user']}/.aws" do
  owner node['gocd']['user']
  group node['gocd']['group']
  mode '0644'
  action :create
end

template "/home/#{node['gocd']['user']}/.aws/config" do
  source 'config.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

template "/home/#{node['gocd']['user']}/.aws/credentials" do
  source 'credentials.erb'
  owner 'root'
  group 'root'
  mode '0644'
  variables({
    :awscreds => goaws
    })
end

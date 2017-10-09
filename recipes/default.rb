#
# Cookbook:: gocd
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
#

# include_recipe 'gocd::nginx-proxy'
include_recipe 'gocd::go-server'
include_recipe 'gocd::go-agent'
include_recipe 'gocd::go-plugins'
include_recipe 'gocd::nginx-proxy'

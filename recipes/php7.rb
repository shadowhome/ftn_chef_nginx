#
# Cookbook:: webnodes
# Recipe:: php7
#
# Copyright:: 2017, The Authors, All Rights Reserved.
remote_directory '/etc/php2' do
  source 'nginx'
  action :create
  owner 'root'
  group 'root'
  recursive true
end

#
# Cookbook:: webnodes
# Recipe:: php7
#
# Copyright:: 2017, The Authors, All Rights Reserved.
remote_directory '/etc/php2' do
  source 'php'
  action :create
  owner 'root'
  group 'root'
  recursive true
  notifies :restart, 'service[php7.0-fpm]', :immediately
end

service 'php7.0-fpm' do
  action [:enable, :start]
end

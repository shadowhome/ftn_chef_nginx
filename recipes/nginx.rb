#
# Cookbook:: webnodes
# Recipe:: nginx
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'snmpd'
remote_directory '/etc/nginx2' do
  source 'nginx'
  action :create
  owner 'root'
  group 'root'
  recursive true
  notifies :restart, 'service[nginx]', :immediately
end
 
directory '/var/lib/nginx/tmp/client_body' do
  action :create
end
 
service 'nginx' do
  action [:enable, :start]
end

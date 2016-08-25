#
# Cookbook Name:: demo_trusted_certs
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
dir = '/etc/chef/trusted_certs'

directory dir do
  owner 'root'
  group 'root'
  mode 00755
  recursive true
  action :create
end


['cad-chef-server', 'cad-delivery', 'cad-supermarket'].each do |c|
  cookbook_file "#{dir}/#{c}.crt" do
    source "#{c}.crt"
    owner 'root'
    group 'root'
    mode 00644
  end
end

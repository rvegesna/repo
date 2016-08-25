#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
package "httpd" do
       package_name "httpd"
       version "2.2.15-54.el6.centos"
       action :remove
end

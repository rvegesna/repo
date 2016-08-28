#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
if node["platform"] == "centos"
      abc  = "httpd"
else
      abc = "apache2"
end
package "httpd" do
       package_name abc
       version "2.2.15-54.el6.centos"
       action :upgrade
end
cookbook_file "/var/www/html/index.html" do
          source "index.html"
          owner  "root"
          group  "root"
          mode   "0644"
          notify "service[httpd]"
end
case node[:platform]
   when centos
          kkk = httpd
   when ubuntu
           kkk = apache2
end
service "httpd" do
      service_name kkk
      action :start
end
template "/tmp/abc" do
       source "abc.erb"
       owner  "root"
       group  "root"
       mode   "0644"
end
file "/etc/abc" do
     content "helllllllo"
     action :create
end
cron "updatng" do
        command "pwd"
        user "root"
        hour  "10"
        minute "30"
end
execute "running" do
           command "/bin/ls -latr"
           action :run
end
bash "setting up application" do
        cwd "/tmp"
        code <<-EOH
         yum install -y curl
        EOH
end
include "apache::browse"
include "motd"

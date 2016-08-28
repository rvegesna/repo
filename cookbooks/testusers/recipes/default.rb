#
# Cookbook Name:: testusers
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
search(:users, "*:*").each do | data|
         user data["id"] do
                  uid data["uid"]
                  comment data["comment"]
                  home   data["home"]
                  password data["password"]
                  shell     data["shell"]
         end
end


#
# Author::  Dustin Currie (<dustin@onlinedesert.com.com>)
# Cookbook Name:: php
# Recipe:: php-cli
#
# Copyright 2010, Dustin Currie
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

pack = value_for_platform(
  [ "centos", "redhat", "fedora", "suse" ] => {
    "default" => "php-cli"
  },
  "default" => "php5-cli"
)
if platform?("ubuntu") or platform?("debian")
  template "/etc/php5/cli/php.ini" do
    source "php-cli.ini.erb"
    owner "root"
    group "root"
    mode 0644
  end
end  

package pack do
  action :upgrade
end

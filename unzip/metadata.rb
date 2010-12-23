maintainer       "Dustin Currie"
maintainer_email "dustin@onlinedesert.com"
license          "Apache 2.0"
description      "Installs unzip."
version          "0.1.0"


recipe "unzip", "Installs unzip"

%w{ centos fedora redhat ubuntu debian }.each do |os|
  supports os
end
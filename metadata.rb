maintainer        "Opscode, Inc."
maintainer_email  "cookbooks@opscode.com"
license           "Apache 2.0"
description       "Installs and configures Chef Server - MODIFIED FOR LOCAL USE"
long_description  IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version           "1.0.0"
recipe            "ele_chef-server", "Compacts the Chef Server CouchDB."
recipe            "ele_chef-server::rubygems-install", "Set up rubygem installed chef server."
recipe            "ele_chef-server::apache-proxy", "Configures Apache2 proxy for API and WebUI"
recipe            "ele_chef-server::nginx-proxy", "Configures NGINX proxy for API and WebUI"

%w{ ubuntu debian redhat centos fedora amazon freebsd openbsd }.each do |os|
  supports os
end

%w{ runit couchdb apache2 openssl zlib xml java gecode }.each do |cb|
  depends cb
end

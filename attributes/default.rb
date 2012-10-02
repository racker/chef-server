#
# Author:: Joshua Timberman <joshua@opscode.com>
# Cookbook Name:: ele_chef-server
# Attributes:: default
#
# Copyright 2008-2011, Opscode, Inc
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

case node["platform"]
when "arch"
  default["ele_chef_server"]["init_style"]  = "arch"
  default["ele_chef_server"]["path"]        = "/var/lib/chef"
  default["ele_chef_server"]["run_path"]    = "/var/run/chef"
  default["ele_chef_server"]["cache_path"]  = "/var/cache/chef"
  default["ele_chef_server"]["backup_path"] = "/var/lib/chef/backup"
when "debian","ubuntu","redhat","centos","fedora","amazon"
  default["ele_chef_server"]["init_style"]  = "init"
  default["ele_chef_server"]["path"]        = "/var/lib/chef"
  default["ele_chef_server"]["run_path"]    = "/var/run/chef"
  default["ele_chef_server"]["cache_path"]  = "/var/cache/chef"
  default["ele_chef_server"]["backup_path"] = "/var/lib/chef/backup"
when "openbsd","freebsd","mac_os_x"
  default["ele_chef_server"]["init_style"]  = "bsd"
  default["ele_chef_server"]["path"]        = "/var/chef"
  default["ele_chef_server"]["run_path"]    = "/var/run"
  default["ele_chef_server"]["cache_path"]  = "/var/chef/cache"
  default["ele_chef_server"]["backup_path"] = "/var/chef/backup"
else
  default["ele_chef_server"]["init_style"]  = "none"
  default["ele_chef_server"]["path"]        = "/var/chef"
  default["ele_chef_server"]["run_path"]    = "/var/run"
  default["ele_chef_server"]["cache_path"]  = "/var/chef/cache"
  default["ele_chef_server"]["backup_path"] = "/var/chef/backup"
end

default['ele_chef_server']['bin_path']        = "/usr/sbin"
default['ele_chef_server']['umask']           = "0022"
default['ele_chef_server']['url']             = "http://localhost:4000"
default['ele_chef_server']['log_dir']         = "/var/log/chef"
default['ele_chef_server']['api_port']        = "4000"
default['ele_chef_server']['webui_port']      = "4040"
default['ele_chef_server']['webui_enabled']   = false
default['ele_chef_server']['solr_heap_size']  = "256M"
default['ele_chef_server']['validation_client_name'] = "chef-validator"
default['ele_chef_server']['expander_nodes'] = 1

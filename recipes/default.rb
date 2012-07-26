#
# Cookbook Name:: tmux-for-iterm2
# Recipe:: default
#
# Author:: Louis-Alban KIM
# Copyright:: Copyright (c) 2012, Louis-Alban KIM
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "libevent"

install_command = []
install_command << 'sh autogen.sh'
install_command << './configure'
install_command << 'make'
install_command << 'make install'

package "tmux" do
  action :remove
end

package "libtool"
package "pkg-config"
package "libncurses5-dev"

remote_file "/tmp/#{node['tmux-for-iterm2']['tar']}" do
  source node['tmux-for-iterm2']['url']
  checksum node['tmux-for-iterm2']['checksum']
end

unless ::File.exists?("#{Chef::Config[:file_cache_path]}/.tmux-for-iterm2-installed")

  execute "untar tmux-for-iterm2" do
    command "tar -zxf #{node['tmux-for-iterm2']['tar']}"
    cwd "/tmp"
  end

  execute "install tmux-for-iterm2" do
    command install_command.join(" && ")
    cwd "/tmp/#{node['tmux-for-iterm2']['dir']}"
  end

  file "#{Chef::Config[:file_cache_path]}/.tmux-for-iterm2-installed"
end
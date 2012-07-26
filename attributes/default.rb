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

default['tmux-for-iterm2']['version']   = "20120203"
default['tmux-for-iterm2']['dir']       = "tmux-for-iTerm2-#{node['tmux-for-iterm2']['version']}"
default['tmux-for-iterm2']['tar']       = "#{default['tmux-for-iterm2']['dir']}.tar.gz"
default['tmux-for-iterm2']['url']       = "http://iterm2.googlecode.com/files/#{default['tmux-for-iterm2']['tar']}"
default['tmux-for-iterm2']['checksum']  = "261570af86c639f4a0d665a8c96a5fd78abdd227554dae93a46331ff80c6eda7"

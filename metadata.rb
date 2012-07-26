maintainer       "Louis-Alban KIM"
maintainer_email ""
license          "Apache 2.0"
description      "Installs/Configures tmux-for-iterm2"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.1"
depends          "libevent"

%w{ ubuntu debian }.each do |os|
  supports os
end
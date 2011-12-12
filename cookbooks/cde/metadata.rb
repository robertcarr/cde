maintainer       "YOUR_COMPANY_NAME"
maintainer_email "YOUR_EMAIL"
license          "All rights reserved"
description      "Installs/Configures cde"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"


recipe "cde::config_shell", "Configures a basic shell environment"
recipe "cde::config_git", "Configures basic git environment"
recipe "cde::config_knife", "Configures basic knife environment"



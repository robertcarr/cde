maintainer       "YOUR_COMPANY_NAME"
maintainer_email "YOUR_EMAIL"
license          "All rights reserved"
description      "Installs/Configures cde"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"


recipe "cde::config_shell", "Configures a basic shell environment"
recipe "cde::config_git", "Configures basic git environment"
recipe "cde::config_knife", "Configures basic knife environment"

attribute "git/username",
  :display_name => "Git user name",
  :description => "Your full name used with git",
  :required => true,
  :recipes => [ "cde::config_git" ]

attribute "git/email",
  :display_name => "Git email address",
  :description => "Your email address used for git",
  :required => true,
  :recipes => [ "cde::config_git" ]
 


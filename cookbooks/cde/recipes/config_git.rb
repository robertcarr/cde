# Install the basic git package and configuration template to
# 

package "git" do
  action :install
end

template "~/.gitconfig" do
  source "gitconfig.erb"
end


# Install the basic git package and configuration template to
# 

rs_utils_marker :begin

package "git-core" do
  action :install
end

template "/root/.gitconfig" do
  source "gitconfig.erb"
end

template "/root/.ssh/id_rsa" do 
  source "id_github.erb"
  mode 0600
end

rs_utils_marker :end

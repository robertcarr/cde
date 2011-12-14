# Install the basic git package and configuration template to
# 

rs_utils_marker :begin

package "git-core" do
  action :install
end

template "/root/.gitconfig" do
  source "gitconfig.erb"
end

template "/root/.ssh/id_github" do 
  source "id_github.erb"
end

bash "Activate SSH" do
  code <<-EOH
  ssh-add /root/.ssh/id_github
  EOH
end

rs_utils_marker :end

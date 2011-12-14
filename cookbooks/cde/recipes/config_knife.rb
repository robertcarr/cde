rs_utils_marker :begin

directory "/root/.chef" do
  action :create
end

template "/root/.chef/knife.rb" do
  source "knife.rb.erb"
end

rs_utils_marker :begin


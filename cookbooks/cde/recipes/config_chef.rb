# Install chef gem

rs_utils_marker :begin

gem_package "chef" do
  action :install
  options("--no-ri --no-rdoc")
end

rs_utils_marker :end



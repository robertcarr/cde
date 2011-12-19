# Install chef ge


gem_package "chef" do
  action :install
  options("--no-ri --no-rdoc")
end


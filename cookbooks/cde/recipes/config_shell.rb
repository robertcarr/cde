# Add customized prompt & autocomplete for shell
#

template "/etc/motd" do
  source "motd.erb"
end

template "/root/.git_completion.sh" do
  source "git-completion.bash"
end

template "/root/.vimrc" do
  source "vimrc.erb"
end

bash "Activate environment" do
  code <<-EOH
  echo "source /root/.git_completion.sh" >> ~/.bashrc
  prompt='[\\u@\\h \\W\$(__git_ps1 " (%s)")]\\$ '
  echo -e "PS1='$prompt'" >> /root/.bashrc
  echo export GIT_PS1_SHOWDIRTYSTATE=true >> /root/.bashrc
  echo export GIT_PS1_SHOWUNTRACKEDFILES=true >> /root/.bashrc
  echo export PATH=$PATH:/opt/rightscale/sandbox/bin >> /root/.bashrc
  EOH
end


  

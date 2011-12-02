# Add customized prompt & autocomplete for shell
#

template "~/.git_complete.sh" do
  source "git-completion.bash"
end

template "~/.vimrc" do
  source "vimrc.erb"
end

bash "Activate environment" do
  code <<-EOH
  echo "source ~/.git_complete.sh" >> ~/.bashrc
  echo export PS1='\u@\h:\w$(__git_ps1 " [\[\e[34;1m\]%s\[\e[0m\]]")\$ ' >> ~/.bashrc
  echo export GIT_PS1_SHOWDIRTYSTATE=true >> ~/.bashrc
  echo export GIT_PS1_SHOWUNTRACKEDFILES=true >> ~/.bashrc
  echo export PATH=$PATH:/opt/rightscale/sandbox/bin >> ~/.bashrc
  EOH
end


  

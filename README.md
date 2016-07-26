
1. Install git
  yum -y install git

********* if you have some problem with git command, try this **************************
  sudo rpm -Uvh http://dl.fedoraproject.org/pub/epel/5/i386/epel-release-5-4.noarch.rpm
  sudo yum install git-core
**************************************************************************************** 

2. git clone
  cd ~
  git clone https://github.com/slog2/vim_setting.git
  cd ~/vim_setting
  . install.sh

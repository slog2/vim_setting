#!/bin/sh
#########################################
# install.sh
#
# - install .vimrc and vim plugins
##########################################
cd $(dirname $0)

# install vim and git 
yum -y install git git-core vim-enhanced

# ignore Git SSL certificate problem 
git config --global http.sslVerify false

# check vim version 
VIM_VERSION=$(vim --version | head -1 | grep -o '[0-9]\.[0-9]')
if [ $(echo "$VIM_VERSION < 7.4" | bc -l) == 1 ]; then
	read -p "Installed vim version is $VIM_VERSION... Do you want to install vim 7.4? " yn
	case $yn in 
		[Yy]* ) ./vim_install.sh; break;;
		* ) echo 'bye.'; exit;;
	esac
fi

# backup
\cp -if --backup=t  ~/.vimrc   ~/.vimrc.bak
\cp -irf --backup=t ~/.vim   ~/.vim_bak

# copy .vimrc and .vim directory
cp .vimrc ~/
cp -r .vim ~/ 

# install vim vundle plugin 
if [ ! -d ~/.vim/bundle/vundle/ ]; then
	mkdir ~/.vim/bundle/ -p
	git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
fi 

# install all the plugins specified in .vimrc by vundle 
vim +PluginInstall +qall

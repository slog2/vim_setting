#!/bin/sh
#########################################
# install.sh
#
# You shuold install git first  >  yum -y install git
##########################################
cd $(dirname $0)

cp ~/.vimrc ~/.vimrc.bak

# copy .vimrc and .vim directory
cp .vimrc ~/
cp -r .vim ~/ 

# install vim 
yum -y install git git-core vim-enhanced

# ignore Git SSL certificate problem 
git config --global http.sslVerify false

# install vim vundle plugin 
mkdir ~/.vim/bundle/ -p
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle

# install all the plugins specified in .vimrc by vundle 
vim +PluginInstall +qall

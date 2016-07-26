#!/bin/sh

#########################################
# install.sh
#
# You shuold install git first  >  yum -y install git
##########################################

mv ~/.vimrc ~/.vimrc.bak

cp .vimrc ~/.vimrc
cp -r .vim ~/ 

yum -y install git git-core vim-enhanced

mkdir ~/.vim/bundle/ -p
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle

vim +PluginInstall +qall

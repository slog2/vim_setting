#!/bin/sh

yum -y install git vim-enhanced

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle

vim +PluginInstall +qall

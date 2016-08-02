#!/bin/sh
##########################################
# vim_install.sh
# - vim version : 7.4 
# - It takes over 5 minutes ..
##########################################

#VIM_VERSION=$(vim --version | head -1 | grep -o '[0-9]\.[0-9]')


yum -y groupinstall 'Development tools'
yum -y install ncurses ncurses-devel wget git
yum -y install ruby perl-devel python-devel ruby-devel perl-ExtUtils-Embed 

cd /usr/local/src
wget ftp://ftp.vim.org/pub/vim/unix/vim-7.4.tar.bz2
tar -xjf vim-7.4.tar.bz2

cd vim74
./configure --prefix=/usr --with-features=huge --enable-rubyinterp --enable-pythoninterp
make && make install

vim --version

# install all the plugins specified in .vimrc by vundle again 
vim +PluginInstall +qall

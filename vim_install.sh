#!/bin/sh
##########################################
# vim_install.sh
#
# - Install VIM 7.4. 
# - It takes over 5 minutes ..
##########################################

VIM_VERSION=$(vim --version | head -1 | grep -o '[0-9]\.[0-9]')

if [ $(echo "$VIM_VERSION >= 7.4" | bc -l) == 1 ]; then
	echo "Warning: Vim $VIM_VERSION already installed."
	exit;
fi

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

# install the plugins specified in .vimrc by Vundle  
vim +PluginInstall +qall

# .bashrc

# User specific aliases and functions

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias l='ls -al'
alias vi='vim'
alias php='/sniper/php/bin/php' 

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

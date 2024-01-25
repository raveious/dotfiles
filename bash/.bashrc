
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
       . /etc/bashrc
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1='[\u@\h \W]\$ '

export EDITOR=vim

alias cd..='cd ..'
alias ll='ls -al'
alias ls='ls --color=auto'
alias yeet='git push'

#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\e[1;36m ⚞^..^⚟   \e[0m'
export EDITOR=nano
export PATH="${PATH}:${HOME}/.local/bin/"

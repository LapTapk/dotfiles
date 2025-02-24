#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LIBVIRT_DEFAULT_URI='qemu:///system'
export PATH="$PATH:/home/oleg/.local/bin"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='\e[93m[\u@\h \W]\$\e[0m '

[ -f "/home/oleg/.ghcup/env" ] && . "/home/oleg/.ghcup/env" # ghcup-env

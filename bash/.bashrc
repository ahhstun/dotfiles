#
# ~/.bashrc
#
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias la='ls -la --color=auto'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ..='cd ..'
#Alacritty Prompt Display


#PS1='\e[0;35m[\u@\h] \w\a\][\u@\h] - \w\$ '

PS1='\e[0;35m[\u@\h]\e[0m \w\$ '

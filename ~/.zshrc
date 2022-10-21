#!/bin/sh

ponysay -f rainbowdrag Oh, hi! Welcome to the terminal! Do something cool.

#bash completion
complete -cf doas

alias poweroff='doas poweroff'
alias reboot='doas reboot'
alias home='cd ~'
alias root='cd /'
alias usr='cd /usr'

alias wget='axel'
alias vim='nvim'
alias edit='nvim'

alias xi='doas xbps-install -Syu'
alias xmanpage='xmandoc'
alias xrm='doas xbps-remove -Rf'
alias xrmorphans='doas xbps-install -Su && doas xbps-remove -oO'

alias python='python3'
alias pip='pip3'

# git alias
alias g='git'
alias st='git status'
alias com='git commit -m'
alias clone='git clone'
alias sth='git stash'
alias lg='git log'
alias u='git add -u'
alias all='git add .'

alias ls="ls --color -l -h" # ls color verbose and human file size

alias grep="grep -n --color" # color and show line and number for each

alias mkdir="mkdir -pv" # create parent directories as needed

alias ping="ping -c 5" # stop ping after 5

alias myip='curl http://ipecho.net/plain; echo' #display current ip address

alias doagain='doas !!'

alias extract='7z -lex'


# Set nvim default editor
export EDITOR=nvim

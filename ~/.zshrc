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
alias xrmorphans='xbps-install -Su && xbps-remove -oO'

alias python='python3'
alias pip='pip3'

# get used to doas instead of sudo
alias sudo='echo "you meant: doas"'
alias sudoedit='echo "you meant: doasedit"'
alias doasedit='sudoedit nvim' # hehe fake doasedit hehe

# git alias
alias g='git'
alias st='git status'
alias com='git commit -m'
alias clone='git clone'
alias sth='git stash'
alias lg='git log'
alias u='git add -u'
alias all='git add .'

# color in grep
export GREP_OPTIONS=' — color=auto'

# Set nvim default editor
export EDITOR=nvim

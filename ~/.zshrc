#!/bin/sh

ponysay -f rainbowdrag Oh, hi! Welcome to the terminal! Do something cool.

# bash completion
complete -cf doas

alias poweroff='doas poweroff'
alias reboot='doas reboot'
alias home='cd ~'
alias root='cd /'
alias usr='cd /usr'

alias wget='axel'
alias vim='nvim'

alias xi='doas xbps-install -Syu'
alias xmanpage='xmandoc'
alias xrm='doas xbps-remove -Rf'
alias xrmorphans='doas xbps-install -Su && doas xbps-remove -oO'

alias python='python3'
alias pip='pip3'

# git aliases
alias status='git status'
alias commit='git commit -m'
alias clone='git clone'
alias stash='git stash'
alias gitlog='git log'
alias addu='git add -u'
alias addall='git add .'

alias ls='exa'

alias grep='grep -n --color' # color and show line and number for each

alias mkdir='mkdir -p' # create parent directories

alias ping='ping -c 6' # stop ping at 6

alias myip='curl http://ipecho.net/plain; echo' #display current ip address

alias doagain='doas !!'

alias extract='7z -lex' # zip list, extract, and extract with full paths

alias stopx='pkill X' # does what it says


# Set nvim default editor
export EDITOR=nvim

#!/bin/sh

neofetch

# bash completion
complete -cf doas

alias poweroff='doas poweroff'
alias reboot='doas reboot'

alias gzip='pigz'
alias ls='exa'
alias wget='axel'

alias vim='nvim'

alias xi='doas xbps-install -Syu'
alias xmanpage='xmandoc'
alias xremove='doas xbps-remove -Rf'
alias xorphans='doas xbps-install -Su && doas xbps-remove -oO'

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

alias grep='grep -n --color' # color and show line and number for each

alias mkdir='mkdir -p' # create parent directories

alias ping='ping -c 6' # stop ping at 6

alias dover='doas !!' # execute last command as sudo "do-over"

alias extract='pigz -dr' # parallel extract recursive

alias stopx='pkill X' # does what it says


# Set nvim default editor
export EDITOR=nvim

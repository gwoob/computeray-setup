ufetch

alias poweroff='sudo poweroff'
alias reboot='sudo reboot'
alias suspend='sudo zzz -H'

alias gzip='pigz'
alias ls='exa'
alias wget='axel'

alias vim='nvim'
alias vi='nvim'

alias xu='sudo xbps-install -Syu'

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

alias ping='ping -c 6' # stop ping at 6

alias sudover='sudo !!' # execute last command as sudo "do-over"

alias unarchive='pigz -dr' # parallel extract recursive

alias killx='pkill X' # does what it says

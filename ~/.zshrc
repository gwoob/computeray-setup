# kool fetch!
ufetch

# don't got sudo
alias sudo='doas'
alias sudoedit='echo "copy as user, edit as user, replace as root"'

# politeness
alias pls='doas'
alias please='doas'

# gentoo specific
alias sync='emaint --auto sync'
alias upgrade='emerge --ask --verbose --update --deep --newuse @world'
alias depclean='emerge --depclean'

# nvim loyalty
export EDITOR=nvim
alias vi='nvim'
alias vim='nvim'
alias nano='nvim'

# ls with long listing and hidden files
alias ls='ls -la'

# pipe output to grep
alias -g G='| grep'
# pipe output to less
alias -g L='| less'
# pipe output to `wc` with option `-l`
alias -g W='| wc -l'
# convert multiline output to single line and copy it to the system clipboard
alias -g C='| tr -d ''\n'' | xclip -selection clipboard' 

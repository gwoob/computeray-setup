# kool fetch!
ufetch

# don't got sudo
alias sudo='doas'
alias sudoedit='echo "Copy, edit as user, replace as root."'

# gentoo specific
alias sync='emaint --auto sync'
alias upgrade='emerge --ask --verbose --update --deep --newuse @world'
alias depclean='emerge --depclean'

# nvim loyalty
export EDITOR=nvim
alias vi='nvim'
alias vim='nvim'
alias nano='nvim'

# kool fetch!
ufetch

# don't got sudo
alias sudo='doas'
alias sudoedit='echo "Copy file, edit with doas."'

# gentoo specific
alias sync='emaint --auto sync'
alias upgrade='emerge --ask --verbose --update --deep --newuse @world'
alias depclean='emerge --depclean'

# nvim loyalty
export EDITOR=nvim
alias vim='nvim'
alias vi='nvim'
alias nano='nvim'

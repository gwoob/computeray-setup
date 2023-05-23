# https://wiki.gentoo.org/wiki/Zsh/Add-ons
autoload -U compinit promptinit
compinit
promptinit; prompt gentoo
zstyle ':completion::complete:*' use-cache 1

# kool fetch!
neofetch

# don't got sudo
alias sudo='doas'

export EDITOR=lvim
alias vi='lvim'
alias vim='lvim'
alias nvim='lvim'
alias nano='lvim'

export PATH='$HOME/.local/bin:$PATH'

# hidden files
alias la='ls -A'

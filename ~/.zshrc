# https://wiki.gentoo.org/wiki/Zsh/Add-ons
autoload -U compinit promptinit
compinit
# install pure prompt
promptinit; prompt pure
zstyle ':completion::complete:*' use-cache 1

# Enable vi mode
bindkey -v

# kool fetch!
neofetch

# don't got sudo
alias sudo='doas'

export EDITOR=lvim
alias vi='lvim'
alias vim='lvim'
alias nvim='lvim'
alias nano='lvim'

# add ~/.local/bin to PATH
if [ -d $HOME/.local/bin ]; then
    PATH=$PATH:$HOME/.local/bin
fi

# hidden files
alias la='ls -A'

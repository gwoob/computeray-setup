# kool fetch!
neofetch

autoload -U compinit promptinit

# load pure prompt
promptinit; prompt pure

# load additional completions
compinit

# enable a cache for completions
zstyle ':completion::complete:*' use-cache 1

# enable vi mode
bindkey -v

# add ~/.local/bin to PATH
if [ -d $HOME/.local/bin ]; then
    PATH=$PATH:$HOME/.local/bin
fi

# don't got sudo
alias sudo='doas'

# LunarVim alias
export EDITOR=lvim
alias vi='lvim'
alias vim='lvim'
alias nvim='lvim'
alias nano='lvim'

# hidden files
alias la='ls -A'

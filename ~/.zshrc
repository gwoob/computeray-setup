# https://wiki.gentoo.org/wiki/Zsh/Add-ons
autoload -U compinit promptinit
compinit
promptinit; prompt gentoo
zstyle ':completion::complete:*' use-cache 1

# kool fetch!
neofetch

# don't got sudo
alias sudo='doas'

# I make typos
alias daos='doas'

# nvim loyalty
export EDITOR=lvim
alias vi='lvim'
alias vim='lvim'
alias nvim='lvim'
alias nano='lvim'

# hidden files
alias la='ls -A'

# grep color
alias grep='grep --color=auto'

# add ~/bin to PATH
if [ -d $HOME/.local/bin ]; then
    PATH=$PATH:$HOME/.local/bin
fi

// what is this?
# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

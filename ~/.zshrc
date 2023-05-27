# kool fetch! Display system information using neofetch and remove empty lines
neofetch | sed '/^$/d'

# Load Starship prompt
eval "$(starship init zsh)"

# Load zsh completions
autoload -U compinit promptinit
compinit

# Enable a cache for completions
zstyle ':completion::complete:*' use-cache 1

# Enable vi mode
bindkey -v

# Add ~/.local/bin to PATH if it exists
[ -d $HOME/.local/bin ] && PATH=$PATH:$HOME/.local/bin

# Use 'doas' instead of 'sudo'
alias sudo='doas'

# LunarVim
export EDITOR=lvim
alias vi='lvim'
alias vim='lvim'
alias nvim='lvim'
alias nano='lvim'

# List all files (including hidden files)
alias la='ls -A'

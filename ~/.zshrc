# kool fetch! Display system information using neofetch and remove empty lines
neofetch | sed '/^$/d'

# Load zsh-vi-mode plugin
source /opt/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# Load Starship prompt
eval "$(starship init zsh)"

# Load zsh completions
autoload -U compinit promptinit
compinit

# Enable a cache for completions
zstyle ':completion::complete:*' use-cache 1

# Add ~/.local/bin to PATH if it exists
[ -d $HOME/.local/bin ] && PATH=$PATH:$HOME/.local/bin

# Check for doas and set up alias if only doas is available
command -v doas >/dev/null 2>&1 && { command -v sudo >/dev/null 2>&1 || alias sudo='doas'; }

# Check for sudo and set up alias if only sudo is available
command -v sudo >/dev/null 2>&1 && { command -v doas >/dev/null 2>&1 || alias doas='sudo'; }

# LunarVim
export EDITOR=lvim
alias vi='lvim'
alias vim='lvim'
alias nvim='lvim'
alias nano='lvim'

# List all files (including hidden files)
alias ls='ls -A'

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

# Add a space after 'doas' command
alias doas='doas '

# Don't got sudo
alias sudo='doas '

# Enable command auto-correction
setopt correct

# LunarVim
export EDITOR=lvim
alias vi='lvim'
alias vim='lvim'
alias nvim='lvim'
alias nano='lvim'

# List all files (including hidden files)
alias ls='ls -A'

# Always prompt for confirmation when copying files
alias cp='cp -i'

# Always prompt for confirmation when deleting files
alias rm='rm -i'

# Aliases for clipboard copy and paste using 'xsel'
alias pbcopy=’xsel — clipboard — input’
alias pbpaste=’xsel — clipboard — output’

# Enable color highlighting for grep
alias grep='grep --color=auto'

# Automatically create parent directories if they don't exist
alias mkdir='mkdir -p'

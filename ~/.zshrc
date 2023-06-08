# kool fetch! Display system information using neofetch and remove empty lines
neofetch | sed '/^$/d'

# Load Starship prompt
eval "$(starship init zsh)"

# Load zsh-vi-mode plugin
source /opt/zsh-vi-mode/zsh-vi-mode.plugin.zsh

# Load zsh-autosuggestions plugin
source /opt/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

# Load zsh completions
autoload -U compinit promptinit
compinit

# Enable a cache for completions
zstyle ':completion::complete:*' use-cache 1

# Enable command auto-correction
setopt correct

# Add ~/.local/bin to PATH if it exists
[ -d $HOME/.local/bin ] && PATH=$PATH:$HOME/.local/bin

# LunarVim
# export EDITOR=lvim
# alias vi='lvim'
# alias vim='lvim'
# alias nvim='lvim'
# alias nano='lvim'

# Neovim
export EDITOR=nvim
alias vi='nvim'
alias vim='nvim'
alias nvim='nvim'
alias nano='nvim'

# Add space after 'doas'; 'doas' as substitute for 'sudo'
alias doas='doas '
alias sudo='doas '

# List all files (including hidden files) with color
alias ls='ls -AG'

# Always prompt for confirmation when copying files
alias cp='cp -i'

# Always prompt for confirmation when deleting files
alias rm='rm -i'

# Aliases for clipboard copy and paste using 'xclip'
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# Enable color highlighting for grep
alias grep='grep --color=auto'

# Automatically create parent directories if they don't exist
alias mkdir='mkdir -p'

alias files='nautilus .'

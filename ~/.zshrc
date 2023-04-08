autoload -U compinit promptinit
compinit
promptinit; prompt gentoo

zstyle ':completion::complete:*' use-cache 1

# kool fetch!
neofetch

# don't got sudo
alias sudo='doas'

# nvim loyalty
export EDITOR=nvim
alias vi='nvim'
alias vim='nvim'
alias nano='nvim'

# ls with long listing and hidden files
alias ls='ls -A'

# grep color
alias grep='grep --color=auto'

# add ~/bin to PATH
if [ -d $HOME/bin ]; then
    PATH=$PATH:$HOME/bin
fi

# pipe output to grep
#alias -p G='| grep'
# pipe output to less
#alias -p L='| less'
# pipe output to `wc` with option `-l`
#alias -p W='| wc -l'
# convert multiline output to single line and copy it to the system clipboard
#alias -p C='| tr -d ''\n'' | xclip -selection clipboard'  

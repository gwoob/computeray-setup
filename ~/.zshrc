autoload -U compinit promptinit
compinit
promptinit; prompt gentoo

XDG_CURRENT_DESKTOP=dwm

zstyle ':completion::complete:*' use-cache 1

# kool fetch!
neofetch

# don't got sudo
alias sudo='doas'
alias sudoedit='echo "copy as user, edit as user, replace as root"'

# gentoo specific
alias sync='doas emaint --auto sync'
alias upgrade='doas emerge --ask --verbose --update --deep --newuse @world'
alias remove='doas emerge --ask --deselect'
alias depclean='doas emerge --ask --depclean'
alias upgrade-shutdown='doas emerge --verbose --deep --newuse --update --with-bdeps=y @world | tee emerge-log.log && shutdown -h now'
alias kernel-make-all='doas make -j32 && doas make -j32 modules_install && doas make -j32 install && doas emerge @module-reuild'

# suspend
alias suspend='loginctl suspend'

# nvim loyalty
export EDITOR=nvim
alias vi='nvim'
alias vim='nvim'
alias nano='nvim'

# ls with long listing and hidden files
alias ls='ls -a'

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

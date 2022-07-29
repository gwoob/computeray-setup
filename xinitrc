[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap
pipewire &
exec startplasma-x11

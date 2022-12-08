#!/bin/sh

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

# initialize X resource database (if file ~/.Xresources is present on the system)
xrdb -load ~/.Xresources

for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
    [ -x "$f" ] && . "$f"
done

udiskie &
pipewire &
pipewire-pulse &
picom &
slock &
exec dwmbar &
exec dbus-run-session dwm

#!/bin/sh

# invoke global X session script
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

xwallpaper --zoom [file]
udiskie &
pipewire &
pipewire-pulse &
picom &
slock &
exec dwmbar &
exec dbus-run-session dwm

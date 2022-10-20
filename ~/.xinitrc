#!/bin/sh
#
#~/.xinitrc
#

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

pipewire &
picom &
slock &
exec dwmbar &
exec dbus-run-session dwm

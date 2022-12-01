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

# set XDG_RUNTIME_DIR environment variable
mkdir -p /tmp/${USER}-runtime && chmod -R 0700 /tmp/${USER}-runtime
export XDG_RUNTIME_DIR=/tmp/${USER}-runtime

udiskie &
pipewire &
pipewire-pulse &
picom &
slock &
exec dwmbar &
exec dbus-run-session dwm

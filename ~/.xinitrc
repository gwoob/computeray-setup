#!/bin/sh

udiskie &
pipewire &
pipewire-pulse &
picom &
slock &
exec dwmbar &
exec dbus-run-session dwm

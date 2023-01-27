#!/bin/sh

xidlehook --not-when-fullscreen --not-when-audio --timer 300 'xbacklight -dec [75]' --timer 1200 'slock && xbacklight -inc [75]' --timer 3600 'sudo zzz - H'

udiskie &

picom &

pipewire &

pipewire-pulse &

xwallpaper --zoom [file]

slock &

exec dwmbar &

exec dbus-run-session dwm

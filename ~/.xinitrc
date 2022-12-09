#!/bin/sh

udiskie &

picom &

pipewire &

pipewire-pulse &

bgs -z [file]

slock &

exec dwmbar &

exec dbus-run-session dwm

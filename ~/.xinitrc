gentoo-pipewire-launcher &
xwallpaper --zoom [file] &
xidlehook --not-when-fullscreen --not-when-audio --timer 300 'xbacklight -dec [75]' --timer 1200 'slock && xbacklight -inc [75]' --timer 3600 'sudo zzz - H'
picom &
slock &
dwmbar &
exec dbus-run-session dwm

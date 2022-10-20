#!/bin/sh
xbps-remove -Rf wpa_supplicant
cp /etc/X11/xinit/xinitrc ~/.xinitrc # copy xinitrc to correct spot
ln -sf /usr/share/zoneinfo/los_angeles /etc/localtime # set timezone
echo "Finished."

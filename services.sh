#!/bin/sh
ln -s /etc/sv/dbus /var/service/
rm /var/service/dhcpcd
rm /var/service/wicd
rm /var/service/wpa_supplicant
ln -s /etc/sv/openntpd /var/service/
ln -s /etc/sv/NetworkManager /var/service/
ln -s /etc/sv/bluetoothd /var/service/

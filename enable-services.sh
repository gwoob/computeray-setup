#!/bin/sh
ln -s /etc/sv/dbus /var/service/
xbps-remove dhcpcd
ln -s /etc/sv/NetworkManager /var/service/
ln -s /etc/sv/bluetoothd /var/service/

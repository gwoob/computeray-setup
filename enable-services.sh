#!/bin/sh
xbps-remove dhcpcd
ln -s /etc/sv/NetworkManager /var/service/
ln -s /etc/sv/dbus /var/service/

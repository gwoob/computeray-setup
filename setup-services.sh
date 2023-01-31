#!/bin/sh

rc-service dhcpcd start && rc-update add dhcpcd default 
rc-service nftables start && rc-update add nftables default
/etc/init.d/dcron start && rc-service dcron start && rc-update add dcron default
rc-service sysklogd start && rc-update add sysklogd default
rc-service alsasound start && rc-update add alsasound boot
/etc/init.d/dbus start && rc-service dbus start && rc-update add dbus default
rc-service libvirtd start && rc-update add libvirtd default 

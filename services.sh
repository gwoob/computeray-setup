#!/bin/sh
ln -s /etc/sv/dhcpcd /var/service/ # dhcpd
ln -s /etc/sv/runit-iptables /var/service/ # restores the iptables.rules and ip6tables.rules rulesets
ln -s /etc/sv/dbus /var/service/ # dbus
ln -s /etc/sv/openntpd /var/service/ # openntpd (openbsd network time protcol)
ln -s /etc/sv/socklog-unix /var/service/ # socklog
ln -s /etc/sv/nanoklogd /var/service/ # socklog

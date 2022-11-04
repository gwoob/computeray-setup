#!/bin/sh
ln -s /etc/sv/dhcpcd /var/service/default/ # dhcpd
ln -s /etc/sv/runit-iptables /var/service/default/ # restores the iptables.rules and ip6tables.rules rulesets
ln -s /etc/sv/dbus /var/service/default/ # dbus
ln -s /etc/sv/cronie /var/service/default/ # cron daemon
ln -s /etc/sv/openntpd /var/service/default/ # openntpd (openbsd network time protcol)
ln -s /etc/sv/socklog-unix /var/service/default/ # socklog
ln -s /etc/sv/nanoklogd /var/service/default/ # socklog

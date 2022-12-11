#!/bin/sh

ln -s /etc/sv/ndhc /var/service/default/ # Privilege-separated secure DHCPv4 client for Linux
ln -s /etc/sv/runit-iptables /var/service/default/ # restores iptables.rules and ip6tables.rules rulesets
ln -s /etc/sv/cronie /var/service/default/ # cron
ln -s /etc/sv/socklog-unix /var/service/default/ # socklog
ln -s /etc/sv/nanoklogd /var/service/default/ # ^
ln -s /etc/sv/dbus /var/service/default/ # dbus system bus (not to be confused with session bus)
ln -s /etc/sv/libvirtd /var/service/default/ # libvirt
ln -s /etc/sv/virtlockd /var/service/default/ # ^
ln -s /etc/sv/virtlogd /var/service/default/ # ^
ln -s /etc/sv/acpid /var/service/default/ # ACPI Daemon # zzz -H
ln -s /etc/sv/snooze-hourly /var/service/default/ # snooze (cron alternative)
ln -s /etc/sv/snooze-daily /var/service/default/ # ^
ln -s /etc/sv/snooze-weekly /var/service/default/ # ^
ln -s /etc/sv/snooze-monthly /var/service/default/ # ^
ln -s /etc/sv/spotifyd /var/service/default/ # spotify client as a daemon

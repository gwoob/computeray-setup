#!/bin/sh

# copy xinitrc to home
cp /etc/X11/xinit/xinitrc ~/.xinitrc

# symlink doas to sudo
ln -s /bin/doas /bin/sudo

# root own doas.conf with read-only permissions
chown -c root:root /etc/doas.conf && chmod 0400 /etc/doas.conf

# symlink dash /bin/sh
ln -sfT dash /usr/bin/sh

# add user to socklog group m
usermod -a -G socklog ben

# add user to audio group
usermod -a -G audio ben

# add user to libvirt group
usermod -a -G libvirt ben

# add flathub flatpak repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# set optimal package repo
mkdir -p /etc/xbps.d
cp /usr/share/xbps.d/*-repository-*.conf /etc/xbps.d/
sed -i 's|https://repo-us.voidlinux.org/|<repository>|g' /etc/xbps.d/*-repository-*.conf

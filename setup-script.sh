#!/bin/sh

# copy xinitrc to home
cp /etc/X11/xinit/xinitrc ~/.xinitrc

# symlink dash /bin/sh
ln -sfT dash /usr/bin/sh

# add user to socklog, audio, libvirt, and plugdev groups
usermod -a -G socklog,audio,libvirt,plugdev ben

# add flathub flatpak repo
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# set optimal package repo
mkdir -p /etc/xbps.d
cp /usr/share/xbps.d/*-repository-*.conf /etc/xbps.d/
sed -i 's|https://repo-us.voidlinux.org/|<repository>|g' /etc/xbps.d/*-repository-*.conf

# set proper timezone
ln -sf /usr/share/zoneinfo/los_angeles /etc/localtime

# enable the PipeWire ALSA device and set as default
mkdir -p /etc/alsa/conf.d
ln -s /usr/share/alsa/alsa.conf.d/50-pipewire.conf /etc/alsa/conf.d
ln -s /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d

# fix font rendering
ln -s /usr/share/fontconfig/conf.avail/70-no-bitmaps.conf /etc/fonts/conf.d/
xbps-reconfigure -f fontconfig

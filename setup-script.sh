#!/bin/sh

# copy xinitrc to home
cp /etc/X11/xinit/xinitrc ~/.xinitrc

# symlink dash /bin/sh
ln -sfT dash /usr/bin/sh

# add user to socklog, audio, libvirt, and plugdev groups
usermod -a -G audio,libvirt,plugdev ben

# set proper timezone
ln -sf /usr/share/zoneinfo/los_angeles /etc/localtime

# enable the PipeWire ALSA device and set as default
mkdir -p /etc/alsa/conf.d
ln -s /usr/share/alsa/alsa.conf.d/50-pipewire.conf /etc/alsa/conf.d
ln -s /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d

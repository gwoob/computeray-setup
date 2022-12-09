#!/bin/sh

# ignore packages

# inside base-system
ignorepkg=xfsprogs
ignorepkg=f2fs-tools
ignorepkg=dhcpcd
ignorepkg=iw
ignorepkg=wpa_supplicant
ignorepkg=nvi
ignorepkg=wifi-firmware
ignorepkg=void-artwork

# inside linux-firmware
ignorepkg=linux-firmware-broadcom
ignorepkg=linux-firmware-intel
ignorepkg=linux-firmware-qualcomm

# inside xorg
ignorepkg=xorg-video-drivers

# inside xorg-apps
ignorepkg=oclock
ignorepkg=xcalc
ignorepkg=xclock
ignorepkg=xeyes
ignorepkg=xlogo

# inside xorg-input-drivers
ignorepkg=xf86-input-synaptics
ignorepkg=xf86-input-wacom
ignorepkg=xf86-input-vmmous

# misc
ignorepkg=pulseaudio
ignorepkg=grub
ignorepkg=os-prober
ignorepkg=vim
ignorepkg=vi

# remove packages
xbps-remove -fOoR xfsprogs f2fs-tools dhcpcd iw wpa_supplicant nvi wifi-firmware  void-artwork linux-firmware-broadcom linux-firmware-intel linux-firmware-qualcomm xorg-video-drivers oclock xcalc xclock xeyes xlogo xf86-input-synaptics xf86-input-wacom xf86-input-vmmous pulseaudio grub os-prober vim vi

#!/bin/sh

# inside base-system
ignorepkg=xfsprogs
ignorepkg=f2fs-tools
openssh
dhcpcd
iw
wpa_supplicant
nvi
wifi-firmware
ignorepkg=void-artwork

# inside linux-firmware
linux-firmware-broadcom
linux-firmware-intel
linux-firmware-qualcomm

# inside xorg
ignorepkg=xorg-video-drivers

# inside xorg-apps
oclock
xcalc
xclock
xeyes
xlogo

# inside xorg-input-drivers
xf86-input-synaptics
xf86-input-wacom
xf86-input-vmmous


ignorepkg=hicolor-icon-theme
ignorepkg=mobile-broadband-provider-info
ignorepkg=os-prober
ignorepkg=rtkit

# copy xinitrc to home
cp /etc/X11/xinit/xinitrc ~/.xinitrc

# add user to socklog, audio, libvirt, and plugdev groups
useadd -m -G users,wheel,audio,video,libvirt,plugdev -s /bin/bash ben
passwd ben

chsh -s /usr/local/bin/zsh ben

# enable the PipeWire ALSA device and set as default
mkdir -p /etc/alsa/conf.d
ln -s /usr/share/alsa/alsa.conf.d/50-pipewire.conf /etc/alsa/conf.d
ln -s /usr/share/alsa/alsa.conf.d/99-pipewire-default.conf /etc/alsa/conf.d

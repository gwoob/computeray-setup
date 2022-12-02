#!/bin/sh

# copy xinitrc to home
cp /etc/X11/xinit/xinitrc ~/.xinitrc

# symlink doas to sudo
ln -s /bin/doas /bin/sudo

# root own doas.conf with read-only permissions
chown -c root:root /etc/doas.conf && chmod 0400 /etc/doas.conf

# symlink dash /bin/sh
ln -sfT dash /usr/bin/sh

usermod -a -G socklog audio libvirt ben # add user to logs group and audio
echo "Done."

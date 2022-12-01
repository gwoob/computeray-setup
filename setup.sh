#!/bin/sh

cp /etc/X11/xinit/xinitrc ~/.xinitrc # copy xinitrc to correct spot
ln -s /bin/doas /bin/sudo # symlink doas to sudo
chown -c root:root /etc/doas.conf && chmod 0400 /etc/doas.conf # root own doas.conf with read-only permissions
ln -sfT dash /usr/bin/sh # symlink dash to /bin/sh
usermod -a -G socklog audio libvirt ben # add user to logs group and audio
echo "Done."

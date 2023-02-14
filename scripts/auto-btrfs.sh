#!/bin/sh

# subvolumes to be mounted
btrfs subvolume create @
btrfs subvolume create @.snapshots
btrfs subvolume create @home
btrfs subvolume create @opt
btrfs subvolume create @root
btrfs subvolume create @srv
btrfs subvolume create @swap
btrfs subvolume create @tmp
btrfs subvolume create @usr_local
btrfs subvolume create @var

# subvolumes to be mounted after user ben is created
btrfs subvolume create @home_ben
btrfs subvolume create @home_ben_.snapshots
btrfs subvolume create @home_ben_Downloads
btrfs subvolume create @home_ben_SteamLibrary

echo "Finished creating subvolumes."

# necessary before creating directories
mount -o subvol=@ /dev/nvme0n1p2 /mnt/gentoo

echo "Root subvolume is mounted, now creating directories."

# creating directories
mkdir /mnt/gentoo/.snapshots
mkdir /mnt/gentoo/home
mkdir /mnt/gentoo/opt
mkdir /mnt/gentoo/root
mkdir /mnt/gentoo/srv
mkdir /mnt/gentoo/swap
mkdir /mnt/gentoo/tmp
mkdir --parents /mnt/gentoo/usr/local
mkdir /mnt/gentoo/var

echo "All appropriate directories have been created"

# mounting subvolumes
mount -o subvol=@.snapshots /dev/nvme0n1p2 /mnt/gentoo/.snapshots
mount -o subvol=@home /dev/nvme0n1p2 /mnt/gentoo/home
mount -o subvol=@opt /dev/nvme0n1p2 /mnt/gentoo/opt
mount -o subvol=@root /dev/nvme0n1p2 /mnt/gentoo/root
mount -o subvol=@srv /dev/nvme0n1p2 /mnt/gentoo/srv
mount -o subvol=@swap /dev/nvme0n1p2 /mnt/gentoo/swap
mount -o subvol=@tmp /dev/nvme0n1p2 /mnt/gentoo/tmp
mount -o subvol=@usr_local /dev/nvme0n1p2 /mnt/gentoo/usr/local
mount -o subvol=@var /dev/nvme0n1p2 /mnt/gentoo/var

echo "Subvolumes are mounted. Don't forget to mount other subvolumes onto the user's directories once made."

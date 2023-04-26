#!/bin/sh

set -euo pipefail
Check if we are running as root

if [ "$(id -u)" -ne 0 ]; then
echo "This script must be run as root" >&2
exit 1
fi
Prompt the user to select a kernel

eselect kernel list
read -p "Please enter the number of the kernel you want to install: " kernel_num
eselect kernel set $kernel_num
Get the kernel source directory and check if the config file exists

cd /usr/src/linux >/dev/null 2>&1
if [ ! -f .config ]; then
zcat /proc/config.gz >.config
fi
Build and install the new kernel and modules

if ! make -j$(nproc) && make -j$(nproc) modules_install; then
echo "Failed to build or install kernel modules" >&2
exit 1
fi
Install the new kernel in /boot

if ! make install; then
echo "Failed to install kernel in /boot" >&2
exit 1
fi
Rebuild any necessary modules

if ! emerge @module-rebuild; then
echo "Failed to rebuild necessary modules" >&2
exit 1
fi

echo "Kernel upgrade completed successfully"
exit 0

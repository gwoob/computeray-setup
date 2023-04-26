#!/bin/sh

set -euo pipefail
Check if we are running as root

if [ "$(id -u)" -ne 0 ]; then
echo "This script must be run as root" >&2
exit 1
fi
Clean up old kernel versions

old_kernel=$(uname -r | cut -d '-' -f 1)
if [ "${kernel}" != "${old_kernel}" ]; then
if [ -z "${old_kernel}" ]; then
echo "Failed to find old kernel version" >&2
exit 1
fi
Backup old kernel and config file

cp /boot/${old_kernel} /boot/${old_kernel}.bak
cp /usr/src/linux/.config /usr/src/linux/.config.bak
if ! emerge -P gentoo-sources; then
echo "Failed to remove old kernel packages" >&2
exit 1
fi
if ! rm -rf "/usr/src/linux-${old_kernel}"; then
echo "Failed to remove old kernel sources" >&2
exit 1
fi
if ! rm -rf "/boot/${old_kernel}"; then
echo "Failed to remove old kernel files from /boot" >&2
exit 1
fi
if ! rm -rf "/lib/modules/${old_kernel}"; then
echo "Failed to remove old kernel modules" >&2
exit 1
fi
fi

echo "Kernel cleanup completed successfully"
exit 0

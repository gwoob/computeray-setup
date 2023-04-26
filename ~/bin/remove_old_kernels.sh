#!/bin/sh

set -euo pipefail

# Check if we are running as root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root" >&2
  exit 1
fi

# Get a list of old kernel versions
old_kernels=$(ls /usr/src/ | grep -v "$(uname -r | cut -d '-' -f 1)")

# Confirm with user which files to remove
echo "The following old kernel versions will be removed:"
echo "${old_kernels}"
echo "Do you want to proceed? [y/N]"
read confirm
if [ "${confirm}" != "y" ] && [ "${confirm}" != "Y" ]; then
  echo "Aborted by user"
  exit 0
fi

# Remove each old kernel version and related files
for kernel in ${old_kernels}; do
  echo "Removing old kernel version ${kernel}"
  if ! emerge -P gentoo-sources; then
    echo "Failed to remove old kernel package for ${kernel}" >&2
    exit 1
  fi
  if ! rm -rf "/usr/src/${kernel}"; then
    echo "Failed to remove old kernel sources for ${kernel}" >&2
    exit 1
  fi
  if ! rm -rf "/lib/modules/${kernel}"; then
    echo "Failed to remove old kernel modules for ${kernel}" >&2
    exit 1
  fi
  if [ -f "/boot/vmlinuz-${kernel}" ]; then
    mv "/boot/vmlinuz-${kernel}" "/boot/vmlinuz-${kernel}.bak"
  fi
  if [ -f "/boot/System.map-${kernel}" ]; then
    mv "/boot/System.map-${kernel}" "/boot/System.map-${kernel}.bak"
  fi
  if [ -f "/boot/config-${kernel}" ]; then
    mv "/boot/config-${kernel}" "/boot/config-${kernel}.bak"
  fi
done

echo "Kernel cleanup completed successfully"
exit 0
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
  cp /boot/${kernel} /boot/${kernel}.bak
  cp /usr/src/${kernel}/.config /usr/src/${kernel}/.config.bak
  if ! emerge -P gentoo-sources; then
    echo "Failed to remove old kernel package for ${kernel}" >&2
    exit 1
  fi
  if ! rm -rf "/usr/src/${kernel}"; then
    echo "Failed to remove old kernel sources for ${kernel}" >&2
    exit 1
  fi
  if ! rm -rf "/boot/${kernel}"; then
    echo "Failed to remove old kernel files from /boot for ${kernel}" >&2
    exit 1
  fi
  if ! rm -rf "/lib/modules/${kernel}"; then
    echo "Failed to remove old kernel modules for ${kernel}" >&2
    exit 1
  fi
done

echo "Kernel cleanup completed successfully"
exit 0

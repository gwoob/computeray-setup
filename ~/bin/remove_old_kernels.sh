#!/bin/sh

# Remove old kernels

set -euo pipefail

# Check if we are running as root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script must be run as root" >&2
  exit 1
fi

# Provide a warning message before removing the old kernel versions
echo "This script will remove all old kernel versions except the currently running one"
echo

# Get a list of old kernel versions
old_kernels=$(ls /usr/src/ | grep -v "$(uname -r | cut -d '-' -f 1)")

if [ -z "$old_kernels" ]; then
  echo "No old kernel versions found"
  exit 0
fi

# Confirm with user which files to remove
echo "The following old kernel versions will be removed:"
echo "${old_kernels}"
echo -n "Do you want to proceed? [y/N] "
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

  if [ -d "/usr/src/${kernel}" ]; then
    if ! rm -rf "/usr/src/${kernel}"; then
      echo "Failed to remove old kernel sources for ${kernel}" >&2
      exit 1
    fi
  fi

  if [ -d "/lib/modules/${kernel}" ]; then
    if ! rm -rf "/lib/modules/${kernel}"; then
      echo "Failed to remove old kernel modules for ${kernel}" >&2
      exit 1
    fi
  fi
done

echo
echo "Kernel cleanup completed successfully"
exit 0

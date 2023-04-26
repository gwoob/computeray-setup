#!/bin/bash

set -euo pipefail

# Check if we are running as root
if [ "$(id -u)" -ne 0 ]; then
echo "This script must be run as root" >&2
exit 1
fi

# Check if the 'eselect' command is available
if ! command -v eselect >/dev/null 2>&1; then
  echo "ERROR: 'eselect' command not found. Please install 'app-admin/eselect'." >&2
  exit 1
fi

# Prompt the user to select a kernel
echo "Available kernels:"
eselect kernel list
read -p "Enter the number of the kernel you want to install: " kernel_num
if ! eselect kernel set $kernel_num >/dev/null; then
  echo "ERROR: Invalid kernel number. Please try again." >&2
  exit 1
fi

# Get the kernel source directory and check if the config file exists
# Requires CONFIG_IKCONFIG_PROC=y
cd /usr/src/linux
if [ ! -f .config ]; then
  echo "INFO: Config file not found. Generating from /proc/config.gz..."
  zcat /proc/config.gz >.config
fi

# Build and install the new kernel and modules
if ! make -j$(nproc) && make -j$(nproc) modules_install; then
  echo "ERROR: Failed to build or install kernel modules." >&2
  exit 1
fi

# Install the new kernel in /boot
if ! make -j$(nproc) install; then
  echo "ERROR: Failed to install kernel in /boot." >&2
  exit 1
fi

# Rebuild any necessary modules
if ! sudo emerge @module-rebuild; then
  echo "ERROR: Failed to rebuild necessary modules." >&2
  exit 1
fi

echo "Kernel upgrade completed successfully."
exit 0


#!/bin/sh

# Update all Flatpaks
flatpak update -y

# Prompt user to continue
printf "All Flatpaks have been updated. Press Enter to continue."
read -r _

# Remove unused dependencies
flatpak uninstall --unused -y

# Prompt user to continue
printf "Unused dependencies have been removed. Press Enter to exit."
read -r _

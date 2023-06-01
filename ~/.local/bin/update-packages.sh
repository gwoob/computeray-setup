#!/bin/bash

# Update Gentoo packages
echo "Updating Gentoo packages..."
emerge -avuDN @world

# Update Flatpaks
echo "Updating Flatpaks..."
flatpak update --user

# Prompt to delete unused dependencies
read -p "Do you want to delete unused dependencies? (y/n): " response

if [[ "$response" =~ ^[Yy]$ ]]; then
    echo "Deleting unused dependencies..."
    emerge --depclean
    flatpak uninstall --unused --user
    echo "Unused dependencies have been deleted."
else
    echo "Unused dependencies will not be deleted."
fi

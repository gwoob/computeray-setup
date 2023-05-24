#!/bin/sh
# Update the system and power off the machine

set -e

# Sync the portage tree and update the system
emaint --auto sync && emerge -avuDN @world > emerge-log.log 2>&1

# Wait for a few seconds before powering off the machine
sleep 5

# Power off the machine
poweroff

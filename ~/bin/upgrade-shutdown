#!/bin/sh
# Update the system and power off the machine

set -e
set -o pipefail

# Sync the portage tree and update the system
emaint --auto sync && emerge -avuDN @world | tee emerge-log.log

# Wait for a few seconds before powering off the machine
sleep 5

# Power off the machine
poweroff

#!/bin/sh

rc-service nftables start && rc-update add nftables default
rc-service libvirtd start && rc-update add libvirtd default 

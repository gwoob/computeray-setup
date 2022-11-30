#!/bin/sh

mkdir -p /etc/xbps.d
cp /usr/share/xbps.d/*-repository-*.conf /etc/xbps.d/
sed -i 's|https://repo-us.voidlinux.org/|<repository>|g' /etc/xbps.d/*-repository-*.conf

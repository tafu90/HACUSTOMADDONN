#!/bin/bash

/usr/sbin/avahi-daemon --no-chroot --no-dbus --daemonize &

# Fake Synology mDNS broadcast
avahi-publish -s "Maina" _http._tcp 5000 --interface=eth0 &
avahi-publish -s "Maina" _smb._tcp 445 --interface=eth0 &

# Keep container alive
tail -f /dev/null

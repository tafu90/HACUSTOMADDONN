#!/bin/bash

/usr/sbin/avahi-daemon --no-chroot --daemonize &

# Fake Synology mDNS broadcast
avahi-publish -s "Maina" _http._tcp 5000 &
avahi-publish -s "Maina" _smb._tcp 445 &

# Keep container alive
tail -f /dev/null

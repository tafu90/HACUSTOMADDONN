#!/bin/bash

/usr/sbin/avahi-daemon --no-chroot --no-dbus --daemonize &

# Fake Synology mDNS broadcast
avahi-publish -s "Maina" _http._tcp 5000 --txt-record=ip=10.0.0.2 &
avahi-publish -s "Maina" _smb._tcp 445 --txt-record=ip=10.0.0.2 &

# Keep container alive
tail -f /dev/null

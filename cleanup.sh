#!/bin/bash

# cleanup.sh - Remove Netdata and its files

echo "🧹 Stopping and removing Netdata..."

sudo systemctl stop netdata
sudo systemctl disable netdata

sudo rm -rf /etc/netdata /var/lib/netdata /usr/lib/netdata /opt/netdata
sudo rm -f /etc/systemd/system/netdata*
sudo userdel netdata 2>/dev/null

echo "✅ Netdata has been removed from the system."

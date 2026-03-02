#!/usr/bin/bash

echo "Starting system update at $(date)" >> /var/log/autoupdate.log
apt update >> /var/log/autoupdate.log 2>&1
apt upgrade -y >> /var/log/autoupdate.log 2>&1
echo "Update completed at $(date)" >> /var/log/autoupdate.log


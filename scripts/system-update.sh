#!/usr/bin/bash

echo "Starting system update at $(date)" >> /var/log/autoupdate.log
apt update >> /var/log/autoupdate.log 2>&1
apt upgrade -y >> /var/log/autoupdate.log 2>&1
echo "Update completed at $(date)" >> /var/log/autoupdate.log


###################################################
########### -- Usage -- ##########################
##################################################
#
# Store this in ~/scripts/
# Run 'sudo crontab -e'
# Add this line to the end of the file:
# 0 10 * * 1 /home/andre/scripts/system-update.sh
# Save it.
# 
# Your system will now update and upgrade automatically every Monday at 10:00 AM.
# A log file will be created at /var/log/autoupdate.log containing update and upgrade information.

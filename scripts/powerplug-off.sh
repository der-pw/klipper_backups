#!/bin/bash

# /etc/systemd/system/powerplug.service
#
# [Unit]
# Description=Schedule PowerPlug OFF
# After=network-online.target
# Conflicts=reboot.target

# [Service]
# Type=oneshot
# ExecStart=/bin/true
# RemainAfterExit=yes
# ExecStop=/home/pi/scripts/powerplug-off.sh

# [Install]
# WantedBy=multi-user.target


if /usr/bin/systemctl list-jobs | egrep -q 'reboot.target.*start' ; then
      echo Skip PowerPlug OFF for reboots
else
    /usr/bin/curl -s http://iobroker:8087/set/0_userdata.0.Script-Trigger.vz235klip_online?value=false
fi

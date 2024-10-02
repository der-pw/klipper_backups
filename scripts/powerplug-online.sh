#!/bin/sh

# crontab -e
# @reboot sleep 60 && /usr/bin/sh /home/pi/scripts/powerplug-online.sh

/usr/bin/curl -s http://iobroker:8087/set/0_userdata.0.Script-Trigger.vz235klip_online?value=true


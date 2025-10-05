#!/bin/bash

# schaltet die Dose nach 15 Sekunden aus

if /usr/bin/systemctl list-jobs | egrep -q 'reboot.target.*start' ; then
      echo Skip PowerPlug OFF for reboots
else
    /usr/bin/curl -s "http://192.168.178.29/cm?cmnd=Backlog%20Delay%20150%3BPower1%20Off"
fi

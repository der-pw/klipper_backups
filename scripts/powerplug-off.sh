#!/bin/bash

if /usr/bin/systemctl list-jobs | egrep -q 'reboot.target.*start' ; then
      echo Skip PowerPlug OFF for reboots
else
    /usr/bin/curl -s http://iobroker:8087/set/0_userdata.0.Script-Trigger.voron02klip_online?value=false
fi



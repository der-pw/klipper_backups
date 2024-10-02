#!/bin/bash

# Dateien umbenennen
mv /home/pi/printer_data/config/settings/adxl.cfg_old /home/pi/printer_data/config/settings/adxl.cfg

# Klipper neu starten
sudo systemctl restart klipper

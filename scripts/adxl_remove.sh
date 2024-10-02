#!/bin/bash

# Dateien umbenennen
mv /home/pi/printer_data/config/settings/adxl.cfg /home/pi/printer_data/config/settings/adxl.cfg_old

# Klipper neu starten
sudo systemctl restart klipper

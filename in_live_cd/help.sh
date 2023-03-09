#!/usr/bin/env bash

# iwctl to connect wifi
# iwctl
# station list # if no station, type `device list` remember the device adapter, and `rfkill list`, rfkill unblock <number of iwctl-device-adapter>
# station wlan0 scan
# station wlan0 get-networks
# station wlan0 connect <wifi-name>
# quit

reflector -c China --sort rate --save /etc/pacman.d/mirrorlist

# if not have configuration files yet
#archinstall
# or using configuration files 
mkdir /root/storage
mount /dev/<storage_part> /root/storage # change to your configration files part
cd /root/storage/<conf_path> # change to your configration files path
archinstall --config user_configuration.json --creds user_credentials.json --disk_layouts user_disk_layout.json
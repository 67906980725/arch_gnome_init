#!/usr/bin/env bash

source ./install.sh
source ./cp_conf.sh

sudo pacman -R blueman
sudo pacman -S bluez bluez-utils
sudo systemctl enable --now bluetooth.service

cp_conf_root "/etc/bluetooth/main.conf"


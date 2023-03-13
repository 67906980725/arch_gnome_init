#!/usr/bin/env bash

source ./install.sh
source ./cp_conf.sh

install cronie
sudo systemctl enable --now cronie.service
cp_conf_home ".config/crontab"

# auto dark / light
cp_conf_home ".local/bin/sunset_sunrise"

crontab "$HOME/.config/crontab"


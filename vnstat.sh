#!/usr/bin/env bash

source ./install.sh

install vnstat
sudo systemctl enable --now vnstat

# vnstat --add -i eth0

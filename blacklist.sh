#!/usr/bin/env bash

source ./cp_conf.sh

cp_conf_root "/etc/modprobe.d/blacklist.conf"

# 关闭蜂鸣
sudo rmmod pcspkr
cp_conf_root "/etc/modprobe.d/nobeep.conf"
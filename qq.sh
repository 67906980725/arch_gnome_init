#!/usr/bin/env bash

source ./install.sh

install_ur linuxqq

# 适用小新pro13的缩放
# sudo sed -i '/^Exec=/s/$/\ --force-device-scale-factor=2.5/' /usr/share/applications/qq.desktop
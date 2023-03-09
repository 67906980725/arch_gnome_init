#!/usr/bin/env bash

source ./install.sh

install nemo chrome-gnome-shell gnome-shell-extension-appindicator  gnome-shell-extension-net-speed
install_ur gnome-shell-extension-clipboard-indicator
xdg-open https://addons.mozilla.org/zh-CN/firefox/addon/gnome-shell-integration/
# xdg-open https://extensions.gnome.org/extension/615/appindicator-support/
# xdg-open https://extensions.gnome.org/extension/1085/simple-net-speed/

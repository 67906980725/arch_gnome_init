#!/usr/bin/env bash

source ./install.sh

install nemo chrome-gnome-shell
# 托盘 剪切板 插件
install_ur gnome-shell-extension-kimpanel-git gnome-shell-extension-clipboard-indicator
# firefox gnome shell 插件
xdg-open https://addons.mozilla.org/zh-CN/firefox/addon/gnome-shell-integration/
# 网速插件
xdg-open https://extensions.gnome.org/extension/1085/simple-net-speed/

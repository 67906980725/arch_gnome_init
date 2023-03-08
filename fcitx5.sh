#!/usr/bin/env bash

source ./install.sh

install fcitx5 fcitx5-configtool fcitx5-gtk fcitx5-qt fcitx5-chinese-addons fcitx5-rime 
cp ./conf/home/.config/fcitx5 $HOME/.config/
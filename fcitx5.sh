#!/usr/bin/env bash

source ./install.sh
source ./default_path.sh

install fcitx5 fcitx5-configtool fcitx5-gtk fcitx5-qt fcitx5-chinese-addons fcitx5-rime 
cp -frp ./conf/home/.config/fcitx5 $HOME/.config/
cp -frp ./conf/home/.local/share/fcitx5/themes $HOME/.local/share/fcitx5/

# env
# GTK_IM_MODULE="fcitx"
# QT_IM_MODULE="fcitx"
# XMODIFIERS="@im=fcitx"
# INPUT_METHOD="fcitx"
# XIM="fcitx"
# XIM_PROGRAM="fcitx"
# SDL_IM_MODULE="fcitx"
# GLFW_IM_MODULE="ibus"

set_env "GTK_IM_MODULE" "fcitx"
set_env "QT_IM_MODULE" "fcitx"
set_env "XMODIFIERS" "@im=fcitx"
set_env "INPUT_METHOD" "fcitx"
set_env "XIM" "fcitx"
set_env "XIM_PROGRAM" "fcitx"
set_env "GLFW_IM_MODULE" "ibus"

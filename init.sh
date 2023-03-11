#!/usr/bin/env bash

# 前提条件: 常用用户账户有root权限, 当前用户是常用用户而非root

cd $(dirname "$0")
source ./install.sh
source ./cp_conf.sh
source ./default_path.sh


sh ./ssh.sh


# mirror
sh ./mirror.sh


# hardware
sh ./bluetooth.sh
sh ./blacklist.sh


# cmd
#  cmd-base
install base-devel bat fd exa neovim  paru asp 
sh ./initool.sh build
#  EDITOR="nvim"
set_env "EDITOR" "nvim"
sh ./zsh.sh
# net
sh ./openvpn.sh


# sys
# sudo sed -i "/root ALL/a $USER\ ALL=(ALL:ALL)\ ALL" /etc/sudoers
# LANG="zh-CN.UTF-8" 
# LC_ALL="en_US.UTF-8"
set_env "LANG" "zh-CN.UTF-8"
set_env "LC_ALL" "en_US.UTF-8"
sh ./swap.sh


# gui
#  xorg-base
install xclip
sh ./wayland.sh
#  gui-base
install firefox mpv
sh ./vscode.sh with_note
sh ./recorder.sh
sh ./notify.sh
sh ./theme.sh
sh ./gnome.sh
sh ./fcitx5.sh

sh ./wps.sh
install_ur wemeet-bin
# install_ur com.qq.weixin.work.deepin-x11 # 企业微信
sh ./sunlogin.sh
install intellij-idea-community-edition jdk8-openjdk 
sh ./datagrip.sh
sh ./wechat.sh
sh ./qq.sh
sh ./start_group.sh


# runtime
sh ./docker.sh
install_ur appimagelauncher


sh ./font.sh


# 以上执行完重启后执行
# sh ./after_reboot.sh

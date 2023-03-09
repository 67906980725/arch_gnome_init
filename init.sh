#!/usr/bin/env bash


cd $(dirname "$0")
source ./install.sh

# sh ./ssh.sh


# mirror
sh ./mirror.sh


# hardware
sh ./bluetooth.sh
install brightnessctl # brightnessctl set 2.5%+    brightnessctl set 2.5%-
sh ./blacklist.sh


# sys
sudo sed -i "/root ALL/a $USER\ ALL=(ALL:ALL)\ ALL" /etc/sudoers
sh ./swap.sh


# cmd
#  cmd-base
install base-devel bat fd exa neovim  paru asp 
sh ./zsh.sh
# net
sh ./openvpn.sh


# gui
#  xorg-base
install xclip
sh ./wayland.sh
#  gui-base
install firefox mpv
sh ./vscode.sh
sh ./recorder.sh
sh ./notify.sh
sh ./theme.sh
sh ./gnome.sh
# 先装theme后装fcitx5能使fcitx5使用theme皮肤而不是自带的皮肤？
sh ./fcitx5.sh

sh ./wps.sh
install_ur wemeet-bin
# install_ur com.qq.weixin.work.deepin-x11 # 企业微信
sh ./sunlogin.sh
# install intellij-idea-community-edition jdk8-openjdk 
sh ./wechat.sh
sh ./qq.sh


# runtime
sh ./docker.sh


sh ./font.sh


# 以上执行完重启后执行
# sh ./after_reboot.sh

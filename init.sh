#!/usr/bin/env bash
# 需要当前用户是常用用户而非root, 并且常用用户账户有root权限

cd $(dirname "$0")
source ./install.sh
source ./cp_conf.sh
source ./default_path.sh

# mirror
sh ./mirror.sh

# hardware
sh ./bluetooth.sh
sh ./blacklist.sh

# cmd
#  cmd-base
install base-devel bat fd exa neovim  paru asp
# EDITOR="nvim"
cp_conf_home ".config/environment.d/cmd.conf"
sh ./initool.sh build
sh ./zsh.sh
#  net
sh ./ssh.sh
sh ./openvpn.sh

# sys
# sudo sed -i "/root ALL/a $USER\ ALL=(ALL:ALL)\ ALL" /etc/sudoers
sh ./swap.sh

# gui
#  xorg-base
install xclip
sh ./wayland.sh
#  gui-base
sh ./gnome.sh
sh ./theme.sh
sh ./fcitx5.sh
sh ./firefox.sh
sh ./mpv.sh
sh ./vscode.sh
sh ./recorder.sh
sh ./notify.sh
sh ./cron.sh
#  gui-normal
sh ./qq.sh
sh ./wechat.sh
sh ./wps.sh
sh ./sunlogin.sh
#install_ur com.qq.weixin.work.deepin-x11
install_ur wemeet-bin
install intellij-idea-community-edition jdk8-openjdk 
sh ./datagrip.sh
sh ./desktop_file.sh

sh ./font.sh

# runtime
sh ./docker.sh
install_ur appimagelauncher
sh ./qemu.sh

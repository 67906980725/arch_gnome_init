#!/usr/bin/env bash
# 前提条件: 常用用户账户有root权限, 当前用户是常用用户而非root

cd $(dirname "$0")
source ./install.sh
source ./cp_conf.sh
source ./default_path.sh

# 使备份恢复的ssh key可用
sh ./conf/home/.ssh/key_reg.sh
# mirror
sh ./mirror.sh

# hardware
sh ./bluetooth.sh
sh ./blacklist.sh

# cmd
#  cmd-base
install base-devel bat fd exa neovim  paru asp 
sh ./initool.sh build
set_env "EDITOR" "nvim" #  EDITOR="nvim"
sh ./zsh.sh
#  net
sh ./ssh.sh
sh ./openvpn.sh

# sys
# sudo sed -i "/root ALL/a $USER\ ALL=(ALL:ALL)\ ALL" /etc/sudoers
sh ./i18n.sh
sh ./swap.sh

# gui
#  xorg-base
install xclip
sh ./wayland.sh
#  gui-base
install firefox mpv # https://greasyfork.org/en/scripts/412245-github-%E5%A2%9E%E5%BC%BA-%E9%AB%98%E9%80%9F%E4%B8%8B%E8%BD%BD
sh ./vscode.sh
sh ./recorder.sh
sh ./notify.sh
sh ./theme.sh
sh ./gnome.sh
sh ./fcitx5.sh
#  gui-normal
sh ./wps.sh
install_ur wemeet-bin
# install_ur com.qq.weixin.work.deepin-x11 # 企业微信
sh ./sunlogin.sh
install intellij-idea-community-edition jdk8-openjdk 
sh ./datagrip.sh
sh ./wechat.sh
sh ./qq.sh
sh ./desktop_file.sh
sh ./cron.sh

# runtime
sh ./docker.sh
install_ur appimagelauncher
sh ./qemu.sh

sh ./font.sh

# 以上执行完重启后执行
# sh ./after_reboot.sh
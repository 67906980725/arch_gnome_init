#!/usr/bin/env bash
# 前提条件: 常用用户账户有root权限, 当前用户是常用用户而非root

# mkdir -p $HOME/.local/project/i/sys
# cd $HOME/.local/project/i/sys
# git@gitee.com:g8307640632/arch_gnome_init.git

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

# runtime
sh ./docker.sh
install_ur appimagelauncher
sh ./qemu.sh

sh ./font.sh

# 以上执行完重启后执行
# sh ./after_reboot.sh
#!/usr/bin/env bash
# 需要当前用户是常用用户而非root, 并且常用用户账户有root权限

# D="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
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
#  base
install base-devel bat fd exa neovim python-pynvim paru asp
cp_conf_home ".config/environment.d/cmd.conf" # EDITOR="nvim"
sh ./initool.sh build
sh ./zsh.sh
#  net
cp_conf_root "/etc/hosts"
sh ./vnstat.sh
sh ./ssh.sh
sh ./openvpn.sh

# sys
# sudo sed -i "/root ALL/a $USER\ ALL=(ALL:ALL)\ ALL" /etc/sudoers
sh ./swap.sh

# gui
#  xorg
install xclip
sh ./wayland.sh
#  base
sh ./gnome.sh
sh ./theme.sh
sh ./fcitx5.sh
sh ./firefox.sh
sh ./mpv.sh
sh ./vscode.sh
sh ./recorder.sh
sh ./notify.sh
sh ./cron.sh
install ntfs-3g
install dmidecode
#  normal
sh ./qq.sh
sh ./wechat.sh
sh ./aliyunpan.sh
sh ./desktop_file.sh # 需要制定
sh ./clash-verge.sh
#  office
sh ./sunlogin.sh
sh ./wps.sh
install_ur wemeet-bin
#install_ur com.qq.weixin.work.deepin-x11
#  develop-java
install intellij-idea-community-edition jdk8-openjdk 
sh ./datagrip.sh
sh ./navicat.sh
#  develop-rust
sh ./rust.sh

# runtime
#install_ur appimagelauncher
sh ./docker.sh
sh ./qemu.sh
#  game
sh ./yuzu.sh

# font
sh ./font.sh

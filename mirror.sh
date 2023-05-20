#!/usr/bin/env bash

source ./install.sh
source ./cp_conf.sh

install reflector

cp_conf_root "/etc/xdg/reflector/reflector.conf"
cp_conf_root "/etc/pacman.conf"

sudo reflector -c China --sort rate --threads 16 --save /etc/pacman.d/mirrorlist 
sudo systemctl enable --now reflector
sudo pacman -Syy
sudo pacman -S archlinuxcn-keyring 
install wqy-microhei


fix_keyring()
{
    # 如果装完archlinuxcn-keyring很多类似下边的错
    # ERROR: 4B1DE545A801D4549BFD3FEF90CB3D62C13D4796 could not be locally signed
    # 先检查时钟是否正确
    timedatectl status
    # 然后
    sudo rm -rf /etc/pacman.d/gnupg
    sudo pacman-key --init
    sudo pacman-key --populate archlinux
    sudo pacman-key --populate archlinuxcn
}
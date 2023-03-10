#!/usr/bin/env bash

source ./install.sh

# flameshot 截图命令： flameshot gui
install flameshot xdg-desktop-portal xdg-desktop-portal-wlr grim 

# obs必要设置: 
#    `右击`-`变换`-`拉伸到全屏`; 
#    `文件-设置-输出-输出模式-高级`; 
#    `输出-录像-格式` 设为 `mp4` (便于分享时在线预览)
install obs-studio
#  设置中文不口口口
install adobe-source-han-sans-cn-fonts adobe-source-han-serif-cn-fonts adobe-source-han-mono-cn-fonts

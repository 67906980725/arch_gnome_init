#!/usr/bin/env bash

source ./install.sh
source ./cp_conf.sh

install vscode direnv

cp_conf_home ".config/Code - OSS/User/settings.json"
# 使用 mg 组合 z 和 code 两个命令, 方便的用vscode打开常用目录
cp_conf_home ".local/bin/mg"

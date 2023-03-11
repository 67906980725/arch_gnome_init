#!/usr/bin/env bash

source ./install.sh
source ./cp_conf.sh
source ./default_path.sh

install vscode direnv

# 使用 mg 组合 z 和 code 两个命令, 方便的用vscode打开常用目录
cp_conf_home ".local/bin/mg"

with_note()
{
    # 生成启动笔记的快捷方式
    cmd="$(which code)"
    sh ./app.sh desk "$cmd" note "" "$NOTE_PATH"
    sh ./app.sh desk "$cmd" work "" "$NOTE_PATH/office"
}

case $1 in
    with_note) with_note;;
    *) ;;
esac



#!/usr/bin/env bash

source ./install.sh
source ./default_path.sh
source ./app.sh

# 创建快捷启动多程序的启动图标

group_normal()
{
    note_cmd="code $NOTE_PATH"
    firefox_cmd="firefox"
    terminal_cmd="kgx"
    qq_cmd="linuxqq"
    wechat_cmd="/opt/apps/com.qq.weixin.deepin/files/run.sh"
    all_cmd="${note_cmd};${firefox_cmd};${terminal_cmd};${qq_cmd};${wechat_cmd};"
    sh ./app.sh desk "" group_normal "" "$all_cmd" 
}
group_normal

group_work()
{
    note_cmd="code $NOTE_PATH/office"
    work_dir_cmd="nemo $HOME/asset/office_java"
    terminal_cmd="kgx"
    idea_cmd="idea"
    datagrip_cmd="$APP_PATH/DataGrip-2020.1.3/bin/datagrip.sh"
    all_cmd="${note_cmd};${work_dir_cmd};${terminal_cmd};${idea_cmd};${datagrip_cmd};"
    sh ./app.sh desk "" group_work "" "$all_cmd" 
}
group_work


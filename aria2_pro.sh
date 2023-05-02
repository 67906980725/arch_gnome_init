#!/usr/bin/env bash

# 鉴于docker新装后重启才可用， 最好重启后再执行
# xdg-open https://p3terx.com/archives/docker-aria2-pro.html

source ./cp_conf.sh

# 密码123456, 或自己改
docker run -d \
    --name aria2-pro \
    --restart unless-stopped \
    --log-opt max-size=1m \
    --network host \
    -e PUID=0 \
    -e PGID=0 \
    -e RPC_SECRET=123456 \
    -e RPC_PORT=6800 \
    -e LISTEN_PORT=6888 \
    -v $HOME/.config/aria2-config:/config \
    -v $HOME/Downloads/aria2-downloads:/downloads \
    p3terx/aria2-pro

cp_conf_home ".local/share/applications/aria_ng.desktop"
cp_conf_home ".local/bin/move_aria2_downloads"
ln -s $HOME/.local/bin/move_aria2_downloads $HOME/Downloads/

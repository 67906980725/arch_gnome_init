#!/usr/bin/env bash

# 鉴于docker新装后重启才可用， 最好重启后再执行

source ./cp_conf.sh

# 密码123456, 或自己改
sudo docker run -d \
    --name aria2-pro \
    --net=host \
    -u root \
    -e PUID=0 \
    -e PGID=0 \
    --restart unless-stopped \
    --log-opt max-size=1m \
    -e UMASK_SET=022 \
    -e RPC_SECRET=123456 \
    -e RPC_PORT=6800 \
    -p 6800:6800 \
    -e LISTEN_PORT=6888 \
    -p 6888:6888 \
    -p 6888:6888/udp \
    -v $HOME/.config/aria2_pro:/config \
    -v $HOME/downloads:/downloads \
    --privileged=true \
    p3terx/aria2-pro

# 以前能用现在不能用了
# docker run -d \
#     --name aria2-pro \
#     --net=host \
#     -u $UID:$GID \
#     -e PUID=$UID \
#     -e PGID=$GID \
#     --restart unless-stopped \
#     --log-opt max-size=1m \
#     -e UMASK_SET=022 \
#     -e RPC_SECRET=123456 \
#     -e RPC_PORT=6800 \
#     -p 6800:6800 \
#     -e LISTEN_PORT=6888 \
#     -p 6888:6888 \
#     -p 6888:6888/udp \
#     -v $HOME/.config/aria2_pro:/config \
#     -v $HOME/downloads:/downloads \
#     p3terx/aria2-pro:202108221156

cp_conf_home ".local/share/applications/aria_ng.desktop"

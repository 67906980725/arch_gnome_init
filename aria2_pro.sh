#!/usr/bin/env bash

# 鉴于docker新装后重启才可用， 最好重启后再执行

source ./install.sh
source ./cp_conf.sh

# 密码123456, 或自己改
docker run -d \
    --name aria2-pro \
    --net=host \
    -u $UID:$GID \
    --restart unless-stopped \
    --log-opt max-size=1m \
    -e PUID=$UID \
    -e PGID=$GID \
    -e UMASK_SET=022 \
    -e RPC_SECRET=123456 \
    -e RPC_PORT=6800 \
    -p 6800:6800 \
    -e LISTEN_PORT=6888 \
    -p 6888:6888 \
    -p 6888:6888/udp \
    -v $CONF_PATH/aria2_pro:/config \
    -v $HOME/downloads:/downloads \
    p3terx/aria2-pro

cp_conf_home ".local/share/applications/aria_ng.desktop"



#!/usr/bin/env bash

app_path="$HOME/.local/app"
fname="DataGrip-2020.1.3"

dpath="/$HOME/Downloads/${fname}.tar.gz"
curl -o "$dpath" "https://download.jetbrains.com.cn/datagrip/datagrip-2020.1.3.tar.gz" -#
tar -zxvf "$dpath" -C "$app_path"

ipath="$app_path/${fname}"
sh ./app.sh desk "$ipath/bin/datagrip.sh" datagrip "$ipath/bin/datagrip.png"

act_path="$ipath/act"
mkdir -p "$act_path"
cp ./conf/home/Downloads/jetbrains-2020.1.3-agent.jar "$act_path/"
nemo "$act_path"
echo "打开datagrip后试用, 然后把jetbrains-2020.1.3-agent.jar拖到软件界面中就可以激活了"

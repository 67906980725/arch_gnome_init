#!/usr/bin/env bash

exdir="阿里小白羊版Linux v2.12.14"

source ./default_path.sh

down_lanzou() {
    key1="$(curl https://wwe.lanzoui.com/iKGsL037ieha | grep iframe | sed '1d' | tr " " "\n" | grep src | awk -F '"' '{print $2}' )"
    key2=$(curl "https://wwe.lanzoui.com$key1" | grep websign | tr "," "\n" | grep \'sign\'\: | awk -F "'" '{print $4}' )
    key3=$(curl -X POST -H "Referer:https://wwe.lanzoui.com$key1" -H 'Content-Type:application/x-www-form-urlencoded' -d "action=downprocess&signs=%3Fctdf&sign=$key2&websign=&websignkey=WPNP&ves=1" "https://wwe.lanzoui.com/ajaxm.php")
    host="$(echo $key3 | jq -r '.dom' )"
    param="$(echo $key3 | jq -r '.url' )"
    key4="$host/file/$param"
    xdg-open $key4

    # key5="$(curl $key4 | grep 'data :' | tr ',' '\n' | grep file | awk -F "'" '{print $4}' )"
    # 到这里请求出错 sign取值?
    # key6="$(curl -X POST "$host/ajax.php" -H 'Content-Type:application/json' -d "{'file':'$key5','el':1,'sign':'CThSM1o/AGZSPVQ3BmABOVY6DjJeYA=='}")"
    # echo $key6
    # curl -o "$DOWN_PATH/$exdir.zip" -L "$url"
}

dfile="$DOWN_PATH/$exdir.zip"
if [ ! -e "$dfile" ]; then
    # xdg-open "https://wwe.lanzoui.com/b01nqc4gd"
    down_lanzou
    sleep 60
fi

unzip "$dfile" -d "$DOWN_PATH"
APP_DIR="$HOME/.local/app/aliyunpan"
mv -f "$DOWN_PATH/$exdir" "$APP_DIR"
sh ./app.sh desk "$APP_DIR/阿里云盘小白羊版" aliyunpan "$APP_DIR/electron/resources/app.png"



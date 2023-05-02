#!/usr/bin/env bash

source ./default_path.sh

# xdg-open https://github.com/odomu/aliyunpan/releases

ver="3.10.25"
file_name="alixby-$ver-x86_64.AppImage"

dfile="$DOWN_PATH/$file_name"
bin_file="$APP_PATH/$file_name"

if [ ! -e "$dfile" ]; then
    ./conf/home/.local/bin/down_github https://github.com/odomu/aliyunpan/releases/download/v$ver/$file_name 1
    # find $HOME/Downloads/ -name "*.AppImage" | xargs chmod +x
fi

mv -f $dfile $bin_file

sh ./app.sh desk "$bin_file" aliyunpan

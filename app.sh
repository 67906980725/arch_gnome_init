#!/usr/bin/env bash


## 把app的入口软链接到$BIN_PATH
cmd()
{
    if [ "$1" != "" ] && [ -x "$1" ]; then
        r_path=$(realpath "$1")
        chmod +x "$r_path"
        ln -s "$r_path" "$HOME/.local/bin/$2"
    fi
}

desk()
{
  # $1: bin_name $2:app_name $3: icon_name
  if [ "$1" != "" ]; then
    r_path=$(realpath "$1")
    chmod +x "$r_path"
    icon="$3"
        echo "
[Desktop Entry]
Encoding=UTF-8
Type=Application
Terminal=false
Icon=\"${icon}\"
Exec=sh -c \"exec ${r_path}\"
Name=$2
Name[zh_CN]=$2
Comment=$2
Comment[zh_CN]=$2
Categories=Tool
" > ~/.local/share/applications/${2}.desktop
  fi
  cmd $1 $2
}


case $1 in
    desk) desk "$2" "$3" "$4";;
    *) cmd "$1" "$2";;
esac

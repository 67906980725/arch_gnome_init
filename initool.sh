#!/usr/bin/env bash

source ./install.sh
source ./default_path.sh

build()
{
    install mlton

    # src="$SRC_PATH/initool"
    # git clone --depth 1 https://github.com/dbohdan/initool.git "$src"

    src="./src/initool"


    cd "$src"
    make
    sudo make install
}

de_build()
{
    # src="$SRC_PATH/initool"
    src="./src/initool"

    cd "$src"
    sudo make uninstall
}

set_domain()
{
    file="$1"
    domain="$2"
    key="$3"
    value="$4"

    initool s "$file" "$domain" "$key" "$value" > "$file"
}

set()
{
    file="$1"
    key="$2"
    value="$3"

    set_domain "$file" "" "$key" "$value"
}

case $1 in
    build) build ;;
    set_domain) set_domain "$2" "$3" "$4" "$5" ;;
    set) set "$2" "$3" "$4" ;;
    *) re ;;
esac

# sudo ./initool.sh set "/etc/sudoers" "$USER ALL" "(ALL:ALL) ALL" 文件格式验证不通过 

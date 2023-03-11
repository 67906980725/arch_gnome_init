#!/usr/bin/env bash

BIN_PATH="$HOME/.local/bin"
APP_PATH="$HOME/.local/app"
DOWN_PATH="$HOME/Downloads"
SRC_PATH="$HOME/.local/project/open_source"

# dsp
DSP="wayland"
is_wayland()
{
    if [ "$DSP" = "wayland" ]; then
        return 0
    fi
    return 1
}
ENV_FILE="$HOME/.config/environment.d/envvars.conf"
if ! $(is_wayland); then
    ENV_FILE="$HOME/.env" # bashrc:export $(envsubst < .env), config/fish/config.fish: export (envsubst < .env)
fi
set_env()
{
    source ./initool.sh
    set "$ENV_FILE" "$1" "$2"
}
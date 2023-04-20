#!/usr/bin/env bash

source ./install.sh
source ./cp_conf.sh

cp_conf_home ".cargo/config"
cp_conf_home ".config/environment.d/rust.conf"
export RUSTUP_DIST_SERVER="https://rsproxy.cn"
export RUSTUP_UPDATE_ROOT="https://rsproxy.cn/rustup"
install rustup
# rustup toolchain install <toolchain_name>
rustup default stable
#!/usr/bin/env bash

source ./install.sh

install mlton

src="$SRC_PATH/initool"
git clone --depth 1 https://github.com/dbohdan/initool.git "$src"
cd "$src"
make
sudo make install
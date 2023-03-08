#!/usr/bin/env bash

source ./install.sh

# 从备份中恢复ssh密钥， 
# 没有或没有yadm备份的配置的话就不要执行yadm了， 用 ssh-keygen -t rsa 生成新的密钥
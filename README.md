# README

*需要当前用户是常用用户而非 root, 并且常用用户账户有 root 权限

*提前恢复 .ssh 目录

``` shell
chmod 700 ~/.ssh
chmod 644  ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh/id_rsa
ssh-add ~/.ssh/id_rsa

mkdir -p $HOME/.local/project/i/sys
cd $HOME/.local/project/i/sys
git@gitee.com:g8307640632/arch_gnome_init.git

cd arch_gnome_init
./init.sh
```

重启后

``` shell
cd $HOME/.local/project/i/sys/arch_gnome_init
sh ./after_reboot.sh```

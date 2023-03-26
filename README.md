# README

*需要当前用户是常用用户而非root, 并且常用用户账户有root权限

*提前恢复.ssh目录


``` shell
chmod 700 ~/.ssh
chmod 644  ~/.ssh/id_rsa.pub
chmod 600 ~/.ssh/id_rsa
ssh-add ~/.ssh/id_rsa

mkdir -p $HOME/.local/project/i/sys
cd $HOME/.local/project/i/sys
git@gitee.com:g8307640632/arch_gnome_init.git
```
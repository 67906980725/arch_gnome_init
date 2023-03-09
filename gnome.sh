#!/usr/bin/env bash

source ./install.sh
source ./cp_conf.sh


install nemo chrome-gnome-shell gnome-shell-extension-appindicator  gnome-shell-extension-net-speed
install_ur gnome-shell-extension-clipboard-indicator
xdg-open https://addons.mozilla.org/zh-CN/firefox/addon/gnome-shell-integration/
# xdg-open https://extensions.gnome.org/extension/615/appindicator-support/
# xdg-open https://extensions.gnome.org/extension/1085/simple-net-speed/


# 快捷键
# 窗口/应用切换不跨工作区
gsettings set org.gnome.shell.app-switcher current-workspace-only true
# alt+tab 切换窗口
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
#  注册表
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings \
"[ \
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', \
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/', \
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/', \
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/', \
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/', \
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/', \
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/', \
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom9/' \
]"
# win+c 计算器
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ binding "<Super>c"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ command "gnome-calculator"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/ name "Calculator"
# win+e 文件管理
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ binding "<Super>e"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ command "nemo"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/ name "nemo"
# ctrl+alt+t console
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ binding "<Ctrl><Alt>t"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ command "kgx"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/ name "console"
# alt+shift+a 截图
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ binding "<Shift><Alt>a"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ command "flameshot gui"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/ name "flameshot"
# ctrl+alt+shift+= 升高亮度
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/ binding "<Ctrl><Alt><Shift>equal"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/ command "brightnessctl set 2.5%+"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/ name "brightness plus"
# ctrl+alt+shift+- 降低亮度
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/ binding "<Ctrl><Alt><Shift>minus"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/ command "brightnessctl set 2.5%-"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/ name "brightness minus"
# ctrl+alt+shift+m 禁用/启用 麦克风
cp_conf_home ".local/bin/microphone_mute"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/ binding "<Ctrl><Alt><Shift>m"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/ command "$HOME/.local/bin/microphone_mute"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/ name "microphon mute toggelt"

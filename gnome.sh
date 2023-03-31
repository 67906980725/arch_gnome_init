#!/usr/bin/env bash

source ./install.sh
source ./cp_conf.sh
source ./default_path.sh


# nemo
install nemo nemo-fileroller nemo-preview nemo-seahorse
# install_ur nemo-compare
xdg-mime default nemo.desktop inode/directory application/x-gnome-saved-search # 默认管理器
gsettings set org.nemo.desktop show-desktop-icons true # 显示desktop文件图标
gsettings set org.cinnamon.desktop.default-applications.terminal exec kgx # 默认终端


# plugin
install chrome-gnome-shell gnome-shell-extension-appindicator  gnome-shell-extension-net-speed
install_ur gnome-shell-extension-clipboard-indicator
#firefox https://addons.mozilla.org/zh-CN/firefox/addon/gnome-shell-integration/
install_ur firefox-extension-gnome-shell-integration 
xdg-open https://extensions.gnome.org/extension/5237/rounded-window-corners/
xdg-open https://extensions.gnome.org/extension/1514/rounded-corners/
# xdg-open https://extensions.gnome.org/extension/615/appindicator-support/
# xdg-open https://extensions.gnome.org/extension/1085/simple-net-speed/
# gsettings set org.gnome.shell enabled-extensions "['clipboard-indicator@tudmotu.com', 'netspeed@alynx.one', 'appindicatorsupport@rgcjonas.gmail.com']"
gnome-extensions enable $(gnome-extensions list | grep -m 1 user-theme)
gnome-extensions enable $(gnome-extensions list | grep -m 1 appindicatorsupport)
gnome-extensions enable $(gnome-extensions list | grep -m 1 clipboard)
gnome-extensions enable $(gnome-extensions list | grep -m 1 netspeed)


# theme
install vimix-cursors tela-circle-icon-theme-git gnome-themes-extra
gsettings set org.gnome.desktop.interface icon-theme 'Tela-circle' # icon
gsettings set org.gnome.desktop.interface cursor-theme 'Vimix-cursors' # cursor
#gsettings set org.gnome.desktop.interface cursor-size 24 # cursor size
cp_conf_home ".local/bin/toggelt_dark_mode" # change dark mode cmd eg: toggelt_dark_mode light / toggelt_dark_mode dark
install_ur orchis-theme # 选不带git的， 默认github拉不动, 需要手动执行后去加速站下包
#gsettings set org.gnome.shell.extensions.user-theme name 'Orchis'
#  qt
install adwaita-qt5 adwaita-qt6 qgnomeplatform-qt5 qgnomeplatform-qt6
#  QT_QPA_PLATFORMTHEME=qgnomeplatform
cp_conf_home ".config/environment.d/gnome.conf"


# 触摸板 速度与轻触以点击
gsettings set org.gnome.desktop.peripherals.touchpad speed "0.66972477064220182"
gsettings set org.gnome.desktop.peripherals.touchpad tap-to-click true


# 护眼
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-automatic false
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-from 20.0
gsettings set org.gnome.settings-daemon.plugins.color night-light-schedule-to 20.0
gsettings set org.gnome.settings-daemon.plugins.color night-light-temperature 3500


# 快捷键
# alt+tab 切换窗口
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Alt>Tab']"
# 窗口/应用切换不跨工作区
gsettings set org.gnome.shell.app-switcher current-workspace-only true
#  快捷键注册表
gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings \
"[ \
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/', \
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/', \
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/', \
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/', \
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/', \
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/', \
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/', \
'/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7/', \
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
# 亮度
install brightnessctl
#  ctrl+alt+shift+= 升高亮度
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/ binding "<Ctrl><Alt><Shift>equal"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/ command "brightnessctl set 2.5%+"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/ name "brightness plus"
#  ctrl+alt+shift+- 降低亮度
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/ binding "<Ctrl><Alt><Shift>minus"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/ command "brightnessctl set 2.5%-"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom5/ name "brightness minus"
# ctrl+alt+shift+m 禁用/启用 麦克风
cp_conf_home ".local/bin/microphone_mute"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/ binding "<Ctrl><Alt><Shift>m"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/ command "$BIN_PATH/microphone_mute"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom6/ name "microphon mute toggelt"
# light/night toggelt
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7/ binding "<Ctrl><Alt><Shift>d"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7/ command "$BIN_PATH/toggelt_dark_mode"
gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom7/ name "toggelt dark mode"

#!/usr/bin/env bash

source ./install.sh
source ./cp_conf.sh

install zsh oh-my-zsh-git fzf
# cp /usr/share/oh-my-zsh/zshrc ~/.zshrc

# install zsh-completions zsh-autosuggestions zsh-syntax-highlighting zsh-lovers zsh-theme-powerlevel10k 
git clone https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/Aloxaf/fzf-tab.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k

sudo cp -r $HOME/.oh-my-zsh/custom/plugins/* /usr/share/oh-my-zsh/custom/plugins/
sudo cp -r $HOME/.oh-my-zsh/custom/themes/* /usr/share/oh-my-zsh/custom/themes/

chsh -s "$(which zsh)"

cp_conf_home ".zshrc"
cp_conf_home ".p10k.zsh"

cp_conf_home ".local/bin/k"
cp_conf_home ".local/bin/len"



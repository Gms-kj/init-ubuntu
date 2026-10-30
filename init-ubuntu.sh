#!/bin/bash
# 初始化 Ubuntu 系统的脚本

# 创建自定义命令的 .bash_aliases 文件
cp ./tools/.bash_aliases ~/.bash_aliases
source ~/.bashrc

# 卸载不需要的软件包
remove google-chrome-stable* libreoffice* rhythmbox* byobu* tilix* remmina* shotwell* vlc* vim* transmission* ibus* mozc* gnome-text-editor* nano*

# 添加 Neovim 官方 PPA
sudo add-apt-repository -y ppa:neovim-ppa/unstable
update && install build-essential gcc g++ gdb cmake git curl wget npm neovim xclip ripgrep fd-find rustup fcitx5 fcitx5-rime

# 安装 nerd-fonts
curl -s https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/install.sh -o install.sh
chmod u+x install.sh
./install.sh help

# 安装Neovim插件管理器LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

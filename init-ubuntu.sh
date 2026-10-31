#!/bin/bash
# 初始化 Ubuntu 系统的脚本

# 卸载不需要的软件包
remove firefox* thunderbired* google-chrome-stable* libreoffice* rhythmbox* byobu* tilix* remmina* shotwell* vlc* vim* transmission* ibus* mozc* gnome-text-editor* nano*

# 添加 Neovim 官方 PPA
sudo add-apt-repository ppa:neovim-ppa/unstable
update && install build-essential gcc g++ gdb cmake git curl wget npm xclip ripgrep fd-find rustup python3-venv fcitx5 fcitx5-rime

npm config set registry https://registry.npmmirror.com
echo 'export RUSTUP_UPDATE_ROOT=https://mirrors.aliyun.com/rustup/rustup' >> ~/.bash_profile
echo 'export RUSTUP_DIST_SERVER=https://mirrors.aliyun.com/rustup' >> ~/.bash_profile
source ~/.bash_profile


# 安装 nerd-fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.5.1/JetBrainsMono.tar.xz

# 安装Neovim插件管理器LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git

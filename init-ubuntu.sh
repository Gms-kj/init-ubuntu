#!/bin/bash
# 初始化 Ubuntu 系统的脚本

# 添加 Neovim 官方 PPA
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update && install build-essential gcc g++ gdb cmake git curl wget npm xclip ripgrep fd-find rustup python3-venv fcitx5 fcitx5-rime

# 更换npm和rustup镜像源
npm config set registry https://registry.npmmirror.com
echo 'export RUSTUP_UPDATE_ROOT=https://mirrors.aliyun.com/rustup/rustup' >> ~/.bash_profile
echo 'export RUSTUP_DIST_SERVER=https://mirrors.aliyun.com/rustup' >> ~/.bash_profile
source ~/.bash_profile

# 安装rust
rustup install stable

# 安装 nerd-fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.5.1/JetBrainsMono.tar.xz
sudo mkdir /usr/share/fonts/myfonts
sudo tar -xJf ~/init-ubuntu/JetBrainsMono.tar.xz -C /usr/share/fonts/myfonts/
rm -rf ~/init-ubuntu/JetBrainsMono.tar.xz
rm -rf /usr/share/fonts/myfonts/OFL.txt
rm -rf /usr/share/fonts/myfonts/README.md
fc-cache -fv

# 安装Neovim插件管理器LazyVim
git clone https://github.com/LazyVim/starter ~/.config/nvim
rm -rf ~/.config/nvim/.git
rm -rf ~/.config/nvim/README.md
rm -rf ~/.config/nvim/LICENSE
rm -rf ~/.config/nvim/.gitignore

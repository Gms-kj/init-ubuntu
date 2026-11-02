#!/bin/bash
# 初始化 Ubuntu 系统的脚本

# 添加 Neovim 官方 PPA
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt update && sudo apt install build-essential gcc g++ gdb cmake git curl wget npm xclip ripgrep fd-find python3-venv fcitx5 fcitx5-rime

# 更换npm和rustup镜像源
npm config set registry https://registry.npmmirror.com

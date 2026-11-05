#!/bin/bash
# 初始化 Ubuntu 系统的脚本

sudo apt update && sudo apt install build-essential gcc g++ gdb cmake git curl wget python3-venv -y
chmod +x ~/init-ubuntu/tools/*.sh
~/init-ubuntu/tools/install-fcitx5.sh
~/init-ubuntu/tools/install-firefox.sh
~/init-ubuntu/tools/install-neovim.sh
~/init-ubuntu/tools/install-npm.sh
~/init-ubuntu/tools/install-rust.sh
~/init-ubuntu/tools/install-code.sh

# 4. 设置 GNOME Terminal 默认字体为 Nerd Font
gsettings set org.gnome.desktop.interface monospace-font-name "JetBrainsMono Nerd Font 16"
gsettings set org.gnome.desktop.background picture-uri 'file:///home/admin/init-ubuntu/source/bizhi.jpg'
gsettings set org.gnome.desktop.background picture-uri-dark 'file:///home/admin/init-ubuntu/source/bizhi.jpg'

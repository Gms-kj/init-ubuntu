#!/bin/bash
# 初始化 Ubuntu 系统的脚本

sudo apt update && sudo apt install build-essential gcc g++ gdb cmake git curl wget python3-venv
chmod +x ~/init-ubuntu/tools/*.sh
~/init-ubuntu/tools/install-neovim.sh
~/init-ubuntu/tools/install-npm.sh
~/init-ubuntu/tools/install-fcitx5.sh

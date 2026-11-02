#!/bin/bash
# 初始化 Ubuntu 系统的脚本

sudo apt update && sudo apt install build-essential gcc g++ gdb cmake git curl wget python3-venv
./tools/install-neovim.sh
./tools/install-npm.sh
./tools/install-fcitx5

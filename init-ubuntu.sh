#!/bin/bash
# 初始化 Ubuntu 系统的脚本

# 创建自定义命令的 .bash_aliases 文件
cp ./tools/.bash_aliases ~/.bash_aliases
source ~/.bashrc

# 卸载不需要的软件包
remove google-chrome-stable* vim* rhythmbox

# 添加 Neovim 官方 PPA
sudo add-apt-repository -y ppa:neovim-ppa/unstable
update && install build-essential gcc g++ gdb cmake git curl wget neovim rustup
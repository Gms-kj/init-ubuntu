#!/bin/bash

# 安装rustup
sudo apt install rustup
echo 'export RUSTUP_UPDATE_ROOT=https://mirrors.aliyun.com/rustup/rustup' >> ~/.bash_profile
echo 'export RUSTUP_DIST_SERVER=https://mirrors.aliyun.com/rustup' >> ~/.bash_profile
source ~/.bash_profile

rustup install stable

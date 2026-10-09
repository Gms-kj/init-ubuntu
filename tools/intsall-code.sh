#!/bin/bash
# 安装 Visual Studio Code
echo "Installing Visual Studio Code..."
# 更新软件包列表
sudo apt update

# 安装 Visual Studio Code 软件源
# 安装 Microsoft GPG 密钥和 APT 软件源
sudo apt install wget gpg && wget -qO- https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/microsoft.gpg
# 创建一个 sources.list 文件以添加 Visual Studio Code APT 软件源
sudo touch /etc/apt/sources.list.d/vscode.sources
# 将 Visual Studio Code APT 软件源添加到 sources.list 文件中
sudo tee /etc/apt/sources.list.d/vscode.sources > /dev/null << EOF
Types: deb
URIs: https://packages.microsoft.com/repos/code
Suites: stable
Components: main
Architectures: amd64,arm64,armhf
Signed-By: /usr/share/keyrings/microsoft.gpg
EOF
# 更新软件包列表并安装 Visual Studio Code
sudo apt update && sudo apt install code -y
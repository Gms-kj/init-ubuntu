#!/bin/bash
# 安装 Firefox 浏览器
echo "Installing Firefox..."
# 更新软件包列表
sudo apt update

# 安装 Firefox apt软件源
# 创建一个保存APT软件库密钥的 keyrings 目录
sudo install -d -m 0755 /etc/apt/keyrings
# 导入 Mozilla APT密钥环
wget -q https://packages.mozilla.org/apt/repo-signing-key.gpg -O- | sudo tee /etc/apt/keyrings/packages.mozilla.org.asc > /dev/null
# 将 Mozilla APT库添加到 sources.list.d 目录中的 mozilla.list 文件中
echo "deb [signed-by=/etc/apt/keyrings/packages.mozilla.org.asc] https://packages.mozilla.org/apt mozilla main" | sudo tee -a /etc/apt/sources.list.d/mozilla.list > /dev/null
# 设置 APT 优先级，以确保从 Mozilla APT库安装 Firefox
sudo tee /etc/apt/preferences.d/mozilla > /dev/null << EOF
Package: *
Pin: origin packages.mozilla.org
Pin-Priority: 1000
EOF
# 更新软件包列表并安装 Firefox 和其中文语言包
sudo apt update
sudo apt install firefox-l10n-zh-cn -y
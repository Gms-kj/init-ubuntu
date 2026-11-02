#!/bin/bash

# 添加 Neovim 官方 PPA
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt install neovim xclip ripgrep fd-find

# 安装 nerd-fonts
wget -P ~/init-ubuntu/ https://github.com/ryanoasis/nerd-fonts/releases/download/v3.5.1/JetBrainsMono.tar.xz
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

#!/bin/bash
sudo apt install fcitx5 fcitx5-rime
rm -rf ~/.pam_environment
mv ~/init-ubuntu/app-config/fcitx5/.pam_environment ~/

mkdir -p ~/.local/share/fcitx5/themes
mkdir -p ~/.local/share/fcitx5/rime
mv ~/init-ubuntu/app-config/fcitx5/themes ~/.local/share/fcitx5/
mv ~/init-ubuntu/app-config/fcitx5/rime ~/.local/share/fcitx5/

fcitx5 -d

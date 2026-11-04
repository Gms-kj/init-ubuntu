#!/bin/bash
sudo apt install fcitx5 fcitx5-rime
rm -rf ~/.pam_environment
mv ~/init-ubuntu/app-config/fcitx5/.pam_environment ~/

mkdir -p ~/.local/share/fcitx5/themes
mkdir -p ~/.local/share/fcitx5/rime
mkdir -p ~/.config/fcitx5
mkdir -p ~/.config/autostart

mv ~/init-ubuntu/app-config/fcitx5/themes ~/.local/share/fcitx5/
mv ~/init-ubuntu/app-config/fcitx5/default.custom.yaml ~/.local/share/fcitx5/rime/
mv ~/init-ubuntu/app-config/fcitx5/config/* ~/.config/fcitx5/
mv ~/init-ubuntu/app-config/fcitx5/fcitx5.desktop ~/.config/autostart/

fcitx5 -d

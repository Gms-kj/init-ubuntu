#!/bin/bash
sudo apt install fcitx5 fcitx5-rime
rm -rf ~/.pam_environment
mv ~/init-ubuntu/app-config/fcitx5/.pam_environment ~/
fcitx5 &
mkdir ~/.local/share/fcitx5/themes
mv ~/init-ubuntu/app-config/fcitx5/themes ~/.local/share/fcitx5/
mv ~/init-ubuntu/app-config/fcitx5/default.custom.yaml ~/.local/share/fcitx5/rime/

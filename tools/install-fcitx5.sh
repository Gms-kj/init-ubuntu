#!/bin/bash
sudo apt install fcitx5 fcitx5-rime
rm -rf ~/.pam_environment
mv ~/init-ubuntu/app-config/fcitx5/.pam_environment ~/

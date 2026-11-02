#!/bin/bash
# 卸载不需要的软件包
sudo apt update
sudo apt remove --purge firefox* thunderbired* google-chrome-stable* libreoffice* rhythmbox* byobu* tilix* remmina* shotwell* vlc* vim* transmission* ibus* mozc* gnome-text-editor* nano*
sudo apt autoremove
sudo snap remove --purge firefox thunderbired
sudo snap refresh

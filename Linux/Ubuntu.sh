#!/bin/sh

# Update
sudo apt update
sudo apt full-upgrade -y
sudo apt autoremove -y

# Install
sudo apt install -y adb curl ffmpeg filezilla firefox gimp git golang default-jdk krita libreoffice qbittorrent steam vlc

# [LAMP] Linux Apache MySQL PHP
sudo apt install -y mysql-server
sudo apt install -y phpmyadmin

# Snap
sudo snap install ipfs

# Over!
sudo do-release-upgrade
reboot
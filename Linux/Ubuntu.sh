#!/bin/sh

# Update
sudo apt update
sudo apt full-upgrade -y
sudo apt autoremove -y

# Install
sudo apt install -y adb curl default-jre ffmpeg filezilla firefox gimp git golang-go krita libreoffice qbittorrent steam virtualbox vlc

# [LAMP] Linux Apache MySQL PHP
sudo apt install -y mysql-server
sudo apt install -y phpmyadmin

# Snap
sudo snap install skype

# Over!
sudo do-release-upgrade
reboot

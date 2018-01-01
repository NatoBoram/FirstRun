#!/bin/sh

# Update
sudo apt update
sudo apt full-upgrade -y
sudo apt autoremove -y

# Install
sudo apt install -y adb curl filezilla firefox gimp git golang default-jdk krita libreoffice qbittorrent steam vlc
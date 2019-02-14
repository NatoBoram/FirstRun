#!/bin/sh

# Remove duplicates in advance
sudo apt purge -y --auto-remove eog evince gedit gnome-font-viewer

# PPA
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo add-apt-repository -y ppa:openrazer/stable

# Update
sudo apt update
sudo apt full-upgrade -y --auto-remove
sudo ubuntu-drivers autoinstall

# APT
sudo apt install -y adb aria2 baobab default-jdk font-manager git git-lfs gnome-tweaks krita neofetch p7zip-full steam youtube-dl

# Third-Party
sudo apt install -y openrazer-meta

# Snaps
sudo snap install android-studio --classic
sudo snap install canonical-livepatch
sudo snap install cointop
sudo snap install core
sudo snap install core18
sudo snap install eclipse --classic
sudo snap install eldarya-tax-calculator
sudo snap install eog
sudo snap install evince
sudo snap install ffmpeg
sudo snap install gedit
sudo snap install gimp
sudo snap install github-desktop --edge
sudo snap install glances
sudo snap install gnome-3-26-1604
sudo snap install gnome-3-28-1804
sudo snap install gnome-calculator
sudo snap install gnome-calendar
sudo snap install gnome-characters
sudo snap install gnome-clocks
sudo snap install gnome-contacts
sudo snap install gnome-dictionary
sudo snap install gnome-font-viewer
sudo snap install gnome-logs
sudo snap install gnome-system-monitor
sudo snap install go --classic
sudo snap install gtk-common-themes
sudo snap install hollywood --classic
sudo snap install htop
sudo snap install inkscape
sudo snap install ipfs
sudo snap install ipfs-cluster --edge
sudo snap install libreoffice
sudo snap install node --edge --classic
sudo snap install orion
sudo snap install skype --classic
sudo snap install snapcraft --classic
sudo snap install vlc

# Fixes for various snaps
sudo snap connect github-desktop:password-manager-service
sudo snap connect glances:network
sudo snap connect glances:system-observe
sudo snap connect glances:mount-observe
sudo snap connect glances:hardware-observe
sudo snap connect glances:log-observe
sudo snap connect glances:network-observe
sudo snap connect glances:physical-memory-observe
sudo snap connect glances:upower-observe

# Release Upgrade
sudo do-release-upgrade

# Reboot
sudo update-grub
reboot

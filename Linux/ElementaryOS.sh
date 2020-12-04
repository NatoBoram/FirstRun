#!/bin/sh

# Purge
sudo apt purge -y --auto-remove epiphany-browser evince gnome-font-viewer

# Install
sudo apt update
sudo apt install -y --auto-remove adb apt-transport-https aria2 baobab default-jdk fail2ban font-manager git git-lfs neofetch p7zip-full snapd software-properties-common unattended-upgrades htop glances

# PPA
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo add-apt-repository -y ppa:gnome3-team/gnome3
sudo add-apt-repository -y ppa:kritalime/ppa

# Update
sudo apt update
sudo apt full-upgrade -y --auto-remove

# Third-Party Drivers
sudo ubuntu-drivers autoinstall
sudo gpasswd -a $USER plugdev

# Snaps
sudo snap install android-studio --classic
sudo snap install evince
sudo snap install ffmpeg
sudo snap install gimp
sudo snap install gnome-3-28-1804
sudo snap install gnome-clocks
sudo snap install gnome-contacts
sudo snap install gnome-dictionary
sudo snap install gnome-font-viewer
sudo snap install gnome-logs
sudo snap install gnome-system-monitor
sudo snap install go --classic
sudo snap install gtk-common-themes
sudo snap install inkscape
sudo snap install libreoffice
sudo snap install node --edge --classic
sudo snap install skype --classic
sudo snap install snapcraft --classic
sudo snap install vlc

# Release Upgrade
sudo do-release-upgrade

# Reboot
sudo update-grub
reboot

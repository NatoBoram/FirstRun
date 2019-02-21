#!/bin/sh

# Purge
sudo apt purge -y --auto-remove evince gnome-font-viewer epiphany-browser

# Bionic
curl https://repogen.simplylinux.ch/txt/bionic/sources_653e718beb5e3dec30278a9015bb420bad784294.txt | sudo tee /etc/apt/sources.list

# Update
sudo apt update
sudo apt full-upgrade -y --auto-remove

# Install
sudo apt install -y --auto-remove adb aria2 baobab default-jdk fail2ban font-manager git git-lfs krita neofetch p7zip-full snapd software-properties-common steam unattended-upgrades youtube-dl

# PPA
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo add-apt-repository -y ppa:openrazer/stable

# Third-Party Drivers
sudo apt install -y --auto-remove openrazer-meta
sudo ubuntu-drivers autoinstall

# Snaps
sudo snap install android-studio --classic
sudo snap install canonical-livepatch
sudo snap install core
sudo snap install core18
sudo snap install evince
sudo snap install ffmpeg
sudo snap install firefox
sudo snap install gedit
sudo snap install gimp
sudo snap install github-desktop --edge
sudo snap install glances
sudo snap install gnome-3-26-1604
sudo snap install gnome-3-28-1804
sudo snap install gnome-characters
sudo snap install gnome-clocks
sudo snap install gnome-contacts
sudo snap install gnome-dictionary
sudo snap install gnome-font-viewer
sudo snap install gnome-font-viewer
sudo snap install gnome-logs
sudo snap install gnome-system-monitor
sudo snap install go --classic
sudo snap install gtk-common-themes
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

# Connect
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

#!/bin/sh

# PPA
sudo add-apt-repository -y ppa:graphics-drivers/ppa
# sudo add-apt-repository -y ppa:openrazer/stable

# Update
sudo apt update
sudo apt full-upgrade -y --auto-remove

# Install
sudo apt install -y glances gnome-calendar htop gnome-dictionary gnome-clocks gnome-contacts adb aria2 baobab curl default-jdk font-manager git git-flow git-lfs gnome-tweaks neofetch p7zip-full steam youtube-dl

# Third-Party Drivers
sudo ubuntu-drivers autoinstall
# sudo apt install -y openrazer-meta
sudo apt install -y nvidia-cuda-toolkit
sudo gpasswd -a $USER plugdev

# Snaps
sudo snap install android-studio --classic
sudo snap install canonical-livepatch
sudo snap install core
sudo snap install core18
sudo snap install ffmpeg
sudo snap install gimp
sudo snap install gnome-3-26-1604
sudo snap install gnome-3-28-1804
sudo snap install gnome-3-34-1804
sudo snap install go --classic
sudo snap install gtk-common-themes
sudo snap install inkscape
sudo snap install krita
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

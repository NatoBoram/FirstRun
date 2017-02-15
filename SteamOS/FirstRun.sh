#!/bin/bash

# Ask for password
passwd

# Fix Text-Scaling
gsettings set org.gnome.desktop.interface text-scaling-factor 1.0

# Fix Terminal
sudo dpkg-reconfigure locales

# Keyboard Layout
sudo dpkg-reconfigure keyboard-configuration
sudo service keyboard-setup restart

# Add Debian Packages
echo "" | sudo tee -a /etc/apt/sources.list
echo "deb http://httpredir.debian.org/debian jessie main contrib non-free" | sudo tee -a /etc/apt/sources.list
echo "deb-src http://httpredir.debian.org/debian jessie main contrib non-free" | sudo tee -a /etc/apt/sources.list
echo "" | sudo tee -a /etc/apt/sources.list

# Set Priority
echo "" | sudo tee -a /etc/apt/preferences
echo "Package: *" | sudo tee -a /etc/apt/preferences
echo "Pin: release o=Valve Software LLC" | sudo tee -a /etc/apt/preferences
echo "Pin-Priority: 900" | sudo tee -a /etc/apt/preferences
echo "" | sudo tee -a /etc/apt/preferences
echo "Package: *" | sudo tee -a /etc/apt/preferences
echo "Pin: release l=Debian" | sudo tee -a /etc/apt/preferences
echo "Pin-Priority: 110" | sudo tee -a /etc/apt/preferences
echo "" | sudo tee -a /etc/apt/preferences

# Discover Packages
sudo apt update
sudo apt full-upgrade

# APT-GET
sudo apt install gedit

# Install References
sudo apt install -f
sudo apt autoremove

# Make Steam Great Again
sudo chown -R steam:steam /home/steam/

# Reboot
sudo update-grub
sudo reboot

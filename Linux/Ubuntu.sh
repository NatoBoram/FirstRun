#!/bin/sh

# Internet
sudo apt install git dkms build-essential
git clone https://github.com/neurobin/MT7630E.git
cd MT7630E/
chmod +x install test uninstall
sudo ./install
sudo make dkms

# Source
curl https://repogen.simplylinux.ch/txt/yakkety/sources_90675a533eceb53c51977d1818da734c6f6b84d9.txt | sudo tee /etc/apt/sources.list
wget https://raw.githubusercontent.com/NatoBoram/FirstRun/master/Linux/sources.list.d/google-chrome.list /etc/apt/sources.list.d/
wget https://raw.githubusercontent.com/NatoBoram/FirstRun/master/Linux/sources.list.d/skype-stable.list /etc/apt/sources.list.d/

# Keys
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

# Update
sudo apt update
sudo apt full-upgrade

# Install
sudo apt install adb filezilla firefox gimp git google-chrome-stable openjdk-8-jdk krita libreoffice qbittorrent skypeforlinux vlc 
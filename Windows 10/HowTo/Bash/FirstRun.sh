#!/bin/bash

# Graphical User Interface
echo "export DISPLAY=:0.0" >>~/.bashrc
sudo touch /etc/dbus-1/session.conf
sudo sed -i 's/<listen>.*<\/listen>/<listen>tcp:host=localhost,port=0<\/listen>/' /etc/dbus-1/session.conf

# Prepare for updates
# curl https://repogen.simplylinux.ch/txt/xenial/sources_3c003eb09793c9e81c0d8d8aa103264edeb0c9c0.txt | sudo tee /etc/apt/sources.list
# sudo nano /etc/update-manager/release-upgrades

# Update
sudo apt update
sudo apt full-upgrade
sudo apt autoremove

# Upgrade
lsb_release -a
sudo do-release-upgrade -d
sudo dpkg --configure -a
lsb_release -a

# Softwares
sudo apt install adb git ffmpeg

# In case something broke
sudo dpkg-reconfigure locales
sudo chown -Rv $USER:$USER ~

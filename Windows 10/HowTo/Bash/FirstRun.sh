#!/bin/bash

# Graphical User Interface
echo "export DISPLAY=:0.0" >> ~/.bashrc
sudo touch /etc/dbus-1/session.conf
sudo sed -i 's/<listen>.*<\/listen>/<listen>tcp:host=localhost,port=0<\/listen>/' /etc/dbus-1/session.conf

# Update
sudo apt-get install aptitude
sudo aptitude update
sudo aptitude full-upgrade

# Upgrade
lsb_release -a
sudo do-release-upgrade
sudo dpkg --configure -a
lsb_release -a

# Software
sudo aptitude install ubuntu-desktop unity compizconfig-settings-manager compiz-core openjdk-8-jre openjdk-8-jdk freeglut3 git

# In case something broke
sudo dpkg-reconfigure locales
sudo chown -Rv $USER:$USER ~

# CCSM
echo GENERAL
echo Commands
echo Composite
echo Copy to texture
echo OpenGL

echo DESKTOP
echo Expo
echo Ubuntu Unity Plugin

echo IMAGE LOADING
echo PNG

echo UTILITY
echo Compiz Library Toolbox

echo WINDOWS MANAGEMENT
echo Move Window
echo Place Windows
echo Resize Window
echo Scale
echo Snapping Windows

# Unity
sudo ccsm
sudo ccsm
sudo compiz

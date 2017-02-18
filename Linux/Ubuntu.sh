#!/bin/sh

# Internet
sudo apt install git dkms build-essential
git clone https://github.com/neurobin/MT7630E.git
cd MT7630E/
sudo make dkms

# Keys
wget -q https://dl.google.com/linux/linux_signing_key.pub -O- | sudo apt-key add -
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F24AEA9FB05498B7
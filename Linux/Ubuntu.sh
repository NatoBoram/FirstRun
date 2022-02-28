#!/bin/sh

# PPA
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo add-apt-repository -y ppa:inkscape.dev/stable
sudo add-apt-repository -y ppa:kritalime/ppa
#sudo add-apt-repository -y ppa:openrazer/stable
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-unstable

# RCE PPA
curl -fsSL https://deb.nodesource.com/setup_current.x | sudo -E bash -

# Update
sudo apt update
sudo apt full-upgrade -y --auto-remove

# Install
sudo apt install -y adb aria2 baobab curl flatpak font-manager git git-flow git-lfs glances gnome-calendar gnome-clocks gnome-contacts gnome-tweaks htop neofetch p7zip-full steam ubuntu-drivers-common youtube-dl zsh
sudo apt purge -y --auto-remove mpv

chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
echo ZSH_THEME="powerlevel10k/powerlevel10k" >> ~/.zshrc

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
sudo snap install go --classic
sudo snap install gtk-common-themes
sudo snap install libreoffice
sudo snap install node --edge --classic
sudo snap install snapcraft --classic
sudo snap install vlc

# Flatpak
flatpak remote-add --if-not-exists --system elementary https://flatpak.elementary.io/repo.flatpakrepo
flatpak remote-add --if-not-exists --system flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists --user elementary https://flatpak.elementary.io/repo.flatpakrepo
flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install --system https://flathub.org/repo/appstream/org.gimp.GIMP.flatpakref

# Release Upgrade
sudo do-release-upgrade

# Reboot
sudo update-grub
reboot

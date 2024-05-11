#!/bin/sh

# Keys
sudo curl -o /usr/share/keyrings/syncthing-archive-keyring.gpg https://syncthing.net/release-key.gpg

# PPA
sudo add-apt-repository -y ppa:git-core/ppa
sudo add-apt-repository -y ppa:graphics-drivers/ppa
sudo add-apt-repository -y ppa:lubomir-brindza/nautilus-typeahead
sudo add-apt-repository -y ppa:qbittorrent-team/qbittorrent-unstable
echo "deb [signed-by=/usr/share/keyrings/syncthing-archive-keyring.gpg] https://apt.syncthing.net/ syncthing candidate" | sudo tee /etc/apt/sources.list.d/syncthing.list

# Update
sudo apt update
sudo apt full-upgrade -y --auto-remove

# Install
sudo apt install -y adb aria2 baobab curl flatpak font-manager git git-flow git-lfs glances gnome-calendar gnome-clocks gnome-contacts gnome-tweaks htop neofetch p7zip-full steam syncthing ubuntu-drivers-common youtube-dl zsh

# ZSH
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/zsh-users/zsh-autosuggestions.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
echo ZSH_THEME="powerlevel10k/powerlevel10k" >>~/.zshrc
echo "# plugins=(zsh-autosuggestions)" >>~/.zshrc

# Third-Party Drivers
sudo ubuntu-drivers autoinstall
#sudo apt install -y nvidia-cuda-toolkit
sudo gpasswd -a $USER plugdev

# Snaps
sudo snap install android-studio --classic
sudo snap install canonical-livepatch
sudo snap install core
sudo snap install core18
sudo snap install gtk-common-themes
sudo snap install libreoffice
sudo snap install snapcraft --classic
sudo snap install vlc

# Flatpak
flatpak remote-add --if-not-exists --system elementary https://flatpak.elementary.io/repo.flatpakrepo
flatpak remote-add --if-not-exists --system flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak remote-add --if-not-exists --user elementary https://flatpak.elementary.io/repo.flatpakrepo
flatpak remote-add --if-not-exists --user flathub https://flathub.org/repo/flathub.flatpakrepo

flatpak install --system https://dl.flathub.org/repo/appstream/org.gimp.GIMP.flatpakref
flatpak install --system https://dl.flathub.org/repo/appstream/org.kde.krita.flatpakref
flatpak install --system https://dl.flathub.org/repo/appstream/org.prismlauncher.PrismLauncher.flatpakref

# asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.12.0
# plugins=(asdf)
echo '# ASDF' >>~/.profile
echo 'PATH="$HOME/.asdf/bin:$PATH"' >>~/.profile
echo 'PATH="$HOME/.asdf/shims:$PATH"' >>~/.profile

asdf update
asdf plugin update --all

asdf plugin add elixir
asdf plugin add erlang
asdf plugin add gradle
asdf plugin add nodejs
asdf plugin add pnpm
asdf plugin add golang

asdf install elixir latest
asdf install erlang latest
asdf install gradle latest
asdf install nodejs latest
asdf install pnpm latest
asdf install pnpm golang

asdf global elixir latest
asdf global erlang latest
asdf global gradle latest
asdf global nodejs latest
asdf global pnpm latest
asdf global pnpm golang

# Release Upgrade
sudo do-release-upgrade

# Reboot
sudo update-grub
reboot

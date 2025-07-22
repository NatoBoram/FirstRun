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
git clone --depth=1 https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo ZSH_THEME="powerlevel10k/powerlevel10k" >>~/.zshrc
echo "# plugins=(zoxide zsh-autosuggestions zsh-syntax-highlighting)" >>~/.zshrc

# Third-Party Drivers
sudo ubuntu-drivers autoinstall
#sudo apt install -y nvidia-cuda-toolkit
sudo gpasswd -a $USER plugdev

# Snaps
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
mkdir -p ~/.local/bin
curl https://github.com/asdf-vm/asdf/releases/download/v0.18.0/asdf-v0.18.0-linux-amd64.tar.gz -o ~/Downloads/asdf-v0.18.0-linux-amd64.tar.gz
tar -xzf ~/Downloads/asdf-v0.18.0-linux-amd64.tar.gz -C ~/.local/bin
alias asdf='~/.local/bin/asdf'
# plugins=(asdf)

echo '# ASDF' >>~/.profile
echo 'PATH="$HOME/.asdf/bin:$PATH"' >>~/.profile
echo 'PATH="$HOME/.asdf/shims:$PATH"' >>~/.profile

# To update asdf, we must first update Go
cd
asdf plugin add golang
asdf install golang latest
asdf set golang latest

# Then, obtain Go's version number
GOLANG_VERSION=$(asdf list golang | grep '*' | sed 's/*//g' | xargs echo)

# Finally, build `asdf`, remove its shim then "install" it
go install github.com/asdf-vm/asdf/cmd/asdf@latest
rm -f "$HOME/.asdf/shims/asdf"
mv "$HOME/.asdf/installs/golang/$GOLANG_VERSION/bin/asdf" "$HOME/.local/bin/asdf"
whereis asdf

# Now we're free to use it
asdf plugin update --all

asdf plugin add bun
asdf plugin add deno
asdf plugin add elixir
asdf plugin add erlang
asdf plugin add golang
asdf plugin add gradle
asdf plugin add java
asdf plugin add nodejs
asdf plugin add pnpm
asdf plugin add python
asdf plugin add rust

asdf install bun latest
asdf install deno latest
asdf install elixir latest
asdf install erlang latest
asdf install golang latest
asdf install gradle $(asdf list all gradle | grep -v '-' | tail -2 | xargs echo)
asdf install java $(asdf list all java | grep openjdk | grep -v 'adopt' | tail -1 | xargs echo)
asdf install nodejs latest
asdf install pnpm latest
asdf install python latest
asdf install rust latest

cd
asdf set erlang bun latest
asdf set erlang deno latest
asdf set erlang elixir latest
asdf set erlang erlang latest
asdf set erlang golang latest
asdf set erlang gradle $(asdf list all gradle | grep -v '-' | tail -2 | xargs echo)
asdf set erlang java $(asdf list all java | grep openjdk | grep -v 'adopt' | tail -1 | xargs echo)
asdf set erlang nodejs latest
asdf set erlang pnpm latest
asdf set erlang python latest
asdf set erlang rust latest

# Bun
bun install --global "@biomejs/biome@latest" "@capacitor/cli@latest" "@google/gemini-cli@latest" "@prettier/plugin-xml@latest" "@typescript/native-preview@latest" "eslint@latest" "prettier-plugin-tailwindcss@latest" "sv@latest"

# Go
go install github.com/cli/cli/v2/cmd/gh@latest
go install github.com/nektos/act@latest
go install gitlab.com/gitlab-org/cli/cmd/glab@latest
go install mvdan.cc/gofumpt@latest

# GitHub
gh extension install github/gh-codeql
gh extension install github/gh-copilot
gh extension install github/gh-models
gh extension install nektos/gh-act
gh extension upgrade --all

# Rust
cargo install --force onefetch zeitfetch zoxide
cargo install --force --git https://github.com/microsoft/edit.git edit

# Release Upgrade
sudo do-release-upgrade

# Reboot
sudo update-grub
reboot

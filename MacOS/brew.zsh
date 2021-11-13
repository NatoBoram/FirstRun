#!/bin/zsh

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Oh my ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# PowerLevel10K
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

brew install aria2 gh git git-flow-avh go gpg neofetch node openjdk openssl p7zip shfmt wget

brew install android-studio
brew install free-download-manager
brew install libreoffice
brew install microsoft-edge
brew install powershell-preview
brew install steam
brew install visual-studio-code-insiders
brew install vlc

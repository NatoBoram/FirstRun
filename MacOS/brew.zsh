#!/bin/zsh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

brew install aria2 wget xz gh neofetch git node p7zip curl go openjdk

brew install android-studio
brew install microsoft-edge
brew install visual-studio-code-insiders
brew install powershell-preview
brew install vlc

#!/bin/zsh

# Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Oh my ZSH
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# PowerLevel10K
brew install romkatv/powerlevel10k/powerlevel10k zsh-autosuggestions zsh-syntax-highlighting zoxide
echo "source $(brew --prefix)/share/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
echo "source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >>~/.zshrc
echo "source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >>~/.zshrc

# Formulae
brew install aria2 gh git git-flow-avh go gpg neofetch node openjdk p7zip pnpm shfmt wget

# Casks
brew install android-studio
brew install discord-developer
brew install firefox-developer-edition
brew install free-download-manager
brew install libreoffice
brew install microsoft-edge
brew install minecraft
brew install powershell-preview
brew install steam
brew install visual-studio-code-insiders
brew install vlc

#!/bin/sh

mkdir -p ~/Applications
cd ~/Applications

git clone git@github.com:vinceliuice/Graphite-gtk-theme.git
cd Graphite-gtk-theme
./install.sh --color dark --libadwaita --theme blue --tweaks nord --tweaks rimless
cd ~/Applications

git clone git@github.com:arcticicestudio/nord-gnome-terminal.git
cd nord-gnome-terminal
./src/install.sh
cd ~/Applications

# https://extensions.gnome.org/extension/19/user-themes/

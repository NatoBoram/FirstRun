#!/bin/sh

# Restore Alt+Tab behaviour
gsettings set org.gnome.desktop.wm.keybindings switch-applications "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward "[]"
gsettings set org.gnome.desktop.wm.keybindings switch-windows "['<Super>Tab', '<Alt>Tab']"
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward "['<Shift><Super>Tab', '<Shift><Alt>Tab']"

# Fullscreen
gsettings set org.gnome.desktop.wm.keybindings toggle-maximized "['<Super>m', '<Super>Up']"
gsettings set org.gnome.desktop.wm.keybindings minimize "['<Super>Down']"

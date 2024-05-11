# SteamOS

SteamOS will not work properly out of the box. There are a few things you need to do.

## First Run

### Big Picture

1. Settings
2. Display
3. Interface
4. Enable access to the Linux desktop
5. Switch to Desktop mode

### Gnome

1. Alt + F2
2. `xterm`
3. `passwd`
4. `sudo dpkg-reconfigure locales`
5. Enter, Enter
6. `reboot`

### Terminal

1. `cd ~/Desktop/`
2. `wget https://raw.githubusercontent.com/NatoBoram/FirstRun/master/SteamOS/FirstRun.sh`
3. `./FirstRun.sh`

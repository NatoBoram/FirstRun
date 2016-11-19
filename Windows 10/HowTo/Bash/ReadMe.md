# Bash on Windows on Linux
This is fucking aweswome.

## Prerequisite
* Install [Xming X Server for Windows](https://sourceforge.net/projects/xming/)

## Activate
* `PowerShell Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`

## Reinstall
0. `lxrun /uninstall /y /full`
0. `lxrun /install /y`

## First Run
0. `echo "export DISPLAY=:0.0" >> ~/.bashrc`
0. `sudo sed -i 's/<listen>.*<\/listen>/<listen>tcp:host=localhost,port=0<\/listen>/' /etc/dbus-1/session.conf`
0. `sudo dpkg-reconfigure locales`
0. `sudo aptitude update`
0. `sudo aptitude full-upgrade`
0. `sudo chown -Rv $USER:$USER ~`

## Upgrade
0. `lsb_release -a`
0. `sudo aptitude install update-manager-core`
0. `sudo do-release-upgrade`
0. `lsb_release -a`
0. Please reboot the computer.

## Repositories
0. [`curl https://repogen.simplylinux.ch/txt/yakkety/sources_861438f9184a3ddfcaf8ec804ede772be27e2726.txt | sudo tee /etc/apt/sources.list`](https://repogen.simplylinux.ch/)
0. `sudo aptitude update`
0. `sudo aptitude full-upgrade`

## Unity
0. `sudo aptitude install ubuntu-desktop`
0. `sudo aptitude install unity`
0. `sudo aptitude install compiz-core`
0. `sudo aptitude install compizconfig-settings-manager`
0. `sudo chown -Rv $USER:$USER ~`
0. `sudo `[`ccsm`](https://github.com/NatoBoram/FirstRun/blob/master/Windows%2010/HowTo/Bash/ReadMe.md#ccsm)
0. `sudo compiz`

### CCSM

#### General
* Commands
* Composite
* Copy to texture
* OpenGL

#### Desktop:
* Ubuntu Unity Plugin

#### Image Loading
* PNG

#### Utility
* Compiz Library Toolbox

#### Windows Management
* Move Window
* Place Windows
* Resize Window
* Scale
* Snapping Windows
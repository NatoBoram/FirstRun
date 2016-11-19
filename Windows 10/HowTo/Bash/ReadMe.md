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
0. `sudo aptitude update`
0. `sudo aptitude full-upgrade`

## Unity
0. `sudo aptitude install ubuntu-desktop`
0. `sudo aptitude install unity`
0. `sudo aptitude install compiz-core`
0. `sudo aptitude install compizconfig-settings-manager`
0. sudo ccsm
0. sudo compiz

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

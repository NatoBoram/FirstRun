# Bash on Windows on Linux
This is fucking aweswome.

## Prerequisite
* Install [VcXsrv Windows X Server](https://sourceforge.net/projects/vcxsrv/)

## Activate
* `PowerShell Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux`

## Reinstall
0. `lxrun /uninstall /y /full`
0. `lxrun /install`

## First Run
Open [this](https://raw.githubusercontent.com/NatoBoram/FirstRun/master/Windows%2010/HowTo/Bash/FirstRun.sh) with Bash.

## Personalization
Using Ubuntu's [colour palette](http://design.ubuntu.com/brand/colour-palette)
* 18
* Ubuntu Mono
* Screen Text : 238, 238, 238
* Screen Background : 44, 0, 30
* Popup Text : 44, 0, 30
* Popup Background : 238, 238, 238
* Opacity : 95%

## This will probably break everything
0. [`curl https://repogen.simplylinux.ch/txt/yakkety/sources_861438f9184a3ddfcaf8ec804ede772be27e2726.txt | sudo tee /etc/apt/sources.list`](https://repogen.simplylinux.ch/)
0. `sudo aptitude update`
0. `sudo aptitude full-upgrade`
0. `sudo shutdown -r now`

@Echo Off

REM Scoop
PowerShell "Invoke-Expression (New-Object net.webclient).downloadstring('https://get.scoop.sh')"

REM Setup
scoop install sudo
sudo scoop install --global git openssh aria2

REM Update
scoop status
scoop update

REM Buckets
scoop bucket add extras
scoop bucket add java
scoop bucket add games

REM Install
Start /Min PowerShell "sudo scoop install --global android-sdk android-studio autohotkey curl eclipse-java filezilla firefox-developer gimp github go go-ipfs libreoffice-fresh mediacreationtool msiafterburner nano nodejs openjdk python qbittorrent rainmeter rufus steam vlc vscode-insiders wget minecraft hyper"

Exit

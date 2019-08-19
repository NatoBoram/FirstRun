@Echo Off

Rem Scoop
PowerShell "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser"
PowerShell "Invoke-Expression (New-Object net.webclient).downloadstring('https://get.scoop.sh')"

Rem ---

Rem Setup
scoop install --global git openssh aria2 sudo

Rem Config
PowerShell "[environment]::setenvironmentvariable('GIT_SSH', (resolve-path (scoop which ssh)), 'USER')"
scoop config aria2-split 16
scoop config aria2-max-connection-per-server 16

Rem Update
scoop status
scoop update

Rem Buckets
scoop bucket add extras
scoop bucket add java
scoop bucket add games

Rem ---

Rem Install
Start PowerShell scoop install --global android-sdk
Start PowerShell scoop install --global android-studio
Start PowerShell scoop install --global autohotkey
Start PowerShell scoop install --global curl
Start PowerShell scoop install --global discord-canary
Start PowerShell scoop install --global eclipse-java
Start PowerShell scoop install --global filezilla
Start PowerShell scoop install --global firefox-developer
Start PowerShell scoop install --global gimp
Start PowerShell scoop install --global github
Start PowerShell scoop install --global go
Start PowerShell scoop install --global go-ipfs
Start PowerShell scoop install --global ipfs-desktop
Start PowerShell scoop install --global libreoffice-fresh
Start PowerShell scoop install --global mediacreationtool
Start PowerShell scoop install --global msiafterburner
Start PowerShell scoop install --global nano
Start PowerShell scoop install --global nodejs
Start PowerShell scoop install --global openjdk
Start PowerShell scoop install --global python
Start PowerShell scoop install --global qbittorrent
Start PowerShell scoop install --global rainmeter
Start PowerShell scoop install --global rufus
Start PowerShell scoop install --global steam
Start PowerShell scoop install --global vlc
Start PowerShell scoop install --global vscode-insiders
Start PowerShell scoop install --global wget
Start PowerShell scoop install --global minecraft
Start PowerShell scoop install --global hyper
Start PowerShell scoop install --global neofetch
Start PowerShell scoop install --global make
Start PowerShell scoop install --global ffmpeg
Start PowerShell scoop install --global rocketchat-client
Start PowerShell scoop install --global syncthing
Start PowerShell scoop install --global terminus
Start PowerShell scoop install --global touch

Exit

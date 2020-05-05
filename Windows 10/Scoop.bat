@Echo Off

Rem OpenSSH
PowerShell "Add-WindowsCapability -Online -Name OpenSSH.Client"
PowerShell "Set-Service -Name ssh-agent -StartupType AutomaticDelayedStart"
PowerShell "Start-Service ssh-agent"

Rem Scoop
PowerShell "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser"
PowerShell "Invoke-Expression (New-Object net.webclient).downloadstring('https://get.scoop.sh')"

Rem ---

Rem Setup
scoop install --global git aria2 sudo

Rem Config
PowerShell "[environment]::setenvironmentvariable('GIT_SSH', (resolve-path (scoop which ssh)), 'USER')"
scoop config aria2-split 16
scoop config aria2-max-connection-per-server 16

Rem ---

Rem Update
scoop update

Rem Buckets
scoop bucket add extras
scoop bucket add java
scoop bucket add games

Rem Install
Start PowerShell scoop install --global android-sdk
Start PowerShell scoop install --global android-studio
Start PowerShell scoop install --global autohotkey
Start PowerShell scoop install --global curl
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
Start PowerShell scoop install --global qbittorrent
Start PowerShell scoop install --global rainmeter
Start PowerShell scoop install --global rufus
Start PowerShell scoop install --global steam
Start PowerShell scoop install --global vlc
Start PowerShell scoop install --global vscode-insiders
Start PowerShell scoop install --global wget
Start PowerShell scoop install --global minecraft
Start PowerShell scoop install --global neofetch
Start PowerShell scoop install --global make
Start PowerShell scoop install --global ffmpeg
Start PowerShell scoop install --global syncthing
Start PowerShell scoop install --global touch

start PowerShell scoop install -g dark
start PowerShell scoop install -g dart
start PowerShell scoop install -g dotnet-sdk
start PowerShell scoop install -g ffmpeg
start powershell scoop install -g freedownloadmanager
start powershell scoop install -g gradle
start powershell scoop install -g grep
start powershell scoop install -g innounp
start powershell scoop install -g less
start powershell scoop install -g nssm
start powershell scoop install -g openssl
start powershell scoop install -g pwsh
start powershell scoop install -g rust
start powershell scoop install -g sed
start powershell scoop install -g shasum
start powershell scoop install -g webstorm
start powershell scoop install -g youtube-dl

REM Status
scoop status
scoop checkup

Echo On

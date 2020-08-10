@Echo Off

Rem Scoop
PowerShell "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser"
PowerShell "Invoke-Expression (New-Object net.webclient).downloadstring('https://get.scoop.sh')"

Rem ---

Rem Setup
scoop install --global git aria2 sudo win32-openssh pwsh

Rem ---

Rem Config
C:\ProgramData\scoop\apps\win32-openssh\current\install-sshd.ps1
Add-WindowsCapability -Online -Name OpenSSH.Client
Set-Service -Name ssh-agent -StartupType AutomaticDelayedStart
Start-Service ssh-agent
[environment]::setenvironmentvariable('GIT_SSH', (resolve-path (scoop which ssh)), 'USER')
scoop config aria2-split 16
scoop config aria2-max-connection-per-server 16
git config --global fetch.parallel 0

Rem ---

Rem Update
scoop update

Rem Buckets
scoop bucket add extras
scoop bucket add java
scoop bucket add games
scoop bucket add github-gh https://github.com/cli/scoop-gh.git

Rem Install
Start PowerShell scoop install --global android-sdk
Start PowerShell scoop install --global android-studio
Start PowerShell scoop install --global autohotkey
Start PowerShell scoop install --global curl
Start PowerShell scoop install --global dark
Start PowerShell scoop install --global dart
Start PowerShell scoop install --global dotnet-sdk
Start PowerShell scoop install --global ffmpeg
Start PowerShell scoop install --global freedownloadmanager
Start PowerShell scoop install --global gimp
Start PowerShell scoop install --global github
Start PowerShell scoop install --global gh
Start PowerShell scoop install --global go
Start PowerShell scoop install --global go-ipfs
Start PowerShell scoop install --global gradle
Start PowerShell scoop install --global grep
Start PowerShell scoop install --global innounp
Start PowerShell scoop install --global ipfs-desktop
Start PowerShell scoop install --global less
Start PowerShell scoop install --global libreoffice-fresh
Start PowerShell scoop install --global make
Start PowerShell scoop install --global mediacreationtool
Start PowerShell scoop install --global minecraft
Start PowerShell scoop install --global msiafterburner
Start PowerShell scoop install --global nano
Start PowerShell scoop install --global neofetch
Start PowerShell scoop install --global nodejs
Start PowerShell scoop install --global nssm
Start PowerShell scoop install --global openjdk
Start PowerShell scoop install --global openssl
Start PowerShell scoop install --global qbittorrent
Start PowerShell scoop install --global rainmeter
Start PowerShell scoop install --global rufus
Start PowerShell scoop install --global rust
Start PowerShell scoop install --global sed
Start PowerShell scoop install --global shasum
Start PowerShell scoop install --global steam
Start PowerShell scoop install --global syncthing
Start PowerShell scoop install --global touch
Start PowerShell scoop install --global vlc
Start PowerShell scoop install --global vscode-insiders
Start PowerShell scoop install --global webstorm
Start PowerShell scoop install --global wget
Start PowerShell scoop install --global youtube-dl

Rem ---

REM Status
scoop status
scoop checkup

Echo On

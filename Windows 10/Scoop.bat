@Echo Off

Rem App Installer, https://www.microsoft.com/store/productId/9NBLGGH4NNS1
winget install 9NBLGGH4NNS1

Rem PowerShell Preview, https://www.microsoft.com/store/productId/9P95ZZKTNRN4
winget install 9P95ZZKTNRN4

Rem Windows Terminal Preview, https://www.microsoft.com/store/productId/9N8G5RFZ9XK3
winget install 9N8G5RFZ9XK3

Rem Scoop
PowerShell "Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser"
PowerShell "Invoke-Expression (New-Object net.webclient).downloadstring('https://get.scoop.sh')"

Rem ---

Rem Setup
scoop install --global git aria2 sudo openssh

Rem ---

Rem Config
PowerShell "Add-WindowsCapability -Online -Name OpenSSH.Client"
C:\ProgramData\scoop\apps\openssh\current\install-sshd.ps1
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
scoop bucket add versions
scoop bucket add github-gh https://github.com/cli/scoop-gh.git
scoop bucket add SysInternals https://github.com/Ash258/Scoop-Sysinternals.git

Rem Install
Start PowerShell scoop install --global android-sdk
Start PowerShell scoop install --global android-studio
Start PowerShell scoop install --global autohotkey
Start PowerShell scoop install --global autoruns
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

Rem ---

REM WinGet
winget install Blitz.Blitz
winget install Discord.DiscordDevelopment
winget install Microsoft.UpdateAssistant
winget install Mojang.MinecraftLauncher
winget install Mozilla.FirefoxDeveloperEdition
winget install Nvidia.GeForceExperience
winget install Valve.Steam

Echo On

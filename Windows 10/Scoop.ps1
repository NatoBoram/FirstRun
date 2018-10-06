# Install Scoop
Invoke-Expression (New-Object net.webclient).downloadstring('https://get.scoop.sh')

# Setup
scoop install sudo
sudo scoop install --global git openssh aria2
exit

# Update
scoop status
scoop update

# Buckets
scoop bucket add extras
scoop bucket add java

# Install Applications
sudo scoop install --global android-sdk android-studio autohotkey curl eclipse-java filezilla firefox-developer gimp github go go-ipfs libreoffice-fresh nodejs openjdk python qbittorrent rainmeter rufus steam vlc vscode-insiders wget

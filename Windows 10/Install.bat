@echo off
echo Help installing softwares on new Windows 10 computers.
echo This script assumes you've installed `scoop`.
pause

echo Firefox Developer Edition
REM start "Firefox Developer Edition" "https://www.mozilla.org/fr/firefox/developer/all/"
pause

echo Firefox
start Firefox
ping 127.0.0.1 > nul
start "uBlock Origin" "https://addons.mozilla.org/firefox/addon/ublock-origin/"
start "Tampermonkey" "https://addons.mozilla.org/firefox/addon/tampermonkey/"
start "Anti-AdBlock Killer" "https://reek.github.io/anti-adblock-killer/"
start "Ads Bypasser" "https://adsbypasser.github.io/"
start "HTTPS Everywhere" "https://addons.mozilla.org/firefox/addon/https-everywhere/"
start "IPFS Companion" "https://addons.mozilla.org/firefox/addon/ipfs-companion/"
start "Enhanced Steam" "https://addons.mozilla.org/firefox/addon/enhanced-steam/"
start "Firefox Test Pilot" "https://testpilot.firefox.com/"
start "Free Download Manager" "https://www.freedownloadmanager.org/"
pause

echo Drivers
start Firefox
ping 127.0.0.1 > nul
start "Adobe Reader" "https://get.adobe.com/fr/reader/"
start "GeForce Experience" "http://www.geforce.com/geforce-experience"
REM start "Go" "https://golang.org/dl/"
REM start "IPFS" "https://dist.ipfs.io/#go-ipfs"
REM start "Java" "http://www.oracle.com/technetwork/java/javase/downloads/index.html"
start "MSI AfterBurner" "https://www.msi.com/page/afterburner"
start "Razer Surround" "http://www.razerzone.com/surround/"
REM start "7-Zip" "http://www.7-zip.org/"
pause

echo Fonts
start Firefox
ping 127.0.0.1 > nul
start "Comic Neue" "http://comicneue.com/#download"
start "Google Font" "https://github.com/google/fonts"
start "Noto Font" "https://www.google.com/get/noto/"
pause

echo Applications
start Firefox
ping 127.0.0.1 > nul
REM start "Audacity" "http://audacityteam.org/download/"
start "Discord" "https://discordapp.com/download"
start "FreeRapid" "http://wordrider.net/freerapid/download.htm"
REM start "GIMP" "http://www.gimp.org/downloads/"
REM start "Krita" "https://krita.org/en/download/krita-desktop/"
REM start "LibreOffice" "https://www.libreoffice.org/download/libreoffice-fresh/?type=win-x86_64"
REM start "QBitTorrent" "https://www.qbittorrent.org/download.php"
REM start "Rainmeter" "https://www.rainmeter.net/"
REM start "VLC Media Player" "http://www.videolan.org/vlc/download-windows.html"
pause

echo Games
start Firefox
ping 127.0.0.1 > nul
start "Battle.net" "http://us.battle.net/en/app/"
REM start "Cheat Engine" "http://www.cheatengine.org/"
start "Guild Wars 2" "https://account.arena.net/content"
start "League of Legends" "http://na.leagueoflegends.com/"
start "Minecraft" "https://minecraft.net/fr-ca/download/"
start "Origin" "https://www.origin.com/can/en-us/store/download"
REM start "Steam" "http://store.steampowered.com/about/"
start "System Requirements Lab" "http://www.systemrequirementslab.com/cyri"
start "uPlay" "https://uplay.ubi.com/"
pause

echo Computer Tools
start Firefox
ping 127.0.0.1 > nul
REM start "Android Studio" "https://developer.android.com/studio/index.html#downloads"
REM start "Atom" "https://atom.io/"
REM start "AutoHotkey" "http://www.autohotkey.com/"
start "Daemon Tools Lite" "http://www.disk-tools.com/download/daemon"
REM start "Eclipse" "https://eclipse.org/downloads/"
REM start "FileZilla" "https://filezilla-project.org/download.php"
REM start "Firefox Developer Edition" "https://www.mozilla.org/en-US/firefox/developer/all/?q=French,%20Fran%C3%A7ais"
REM start "GitHub" "https://desktop.github.com/"
REM start "Git for Windows" "https://git-for-windows.github.io/"
start "Google Web Designer" "https://www.google.ca/webdesigner/"
start "Windows 10" "https://www.microsoft.com/fr-ca/software-download/windows10"
REM start "PuTTY" "http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html"
REM start "Python" "https://www.python.org/downloads/windows/"
start "SQL Developer" "http://www.oracle.com/technetwork/developer-tools/sql-developer/downloads/index.html"
REM start "Rufus" "https://rufus.akeo.ie/"
REM start "VcXsrv" "https://sourceforge.net/projects/vcxsrv/"
REM start "VirtualBox" "https://www.virtualbox.org/wiki/Downloads"
start "Visual Studio" "https://www.visualstudio.com/downloads/"
REM start "Visual Studio Code" "https://code.visualstudio.com/"
REM start "Wamp Server" "http://www.wampserver.com/#download-wrapper"
pause

exit

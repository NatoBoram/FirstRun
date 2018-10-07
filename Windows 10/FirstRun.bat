@Echo Off
CD %UserProfile%/Downloads

REM Google DNS
PowerShell "Start-BitsTransfer -Source https://raw.githubusercontent.com/NatoBoram/FirstRun/master/Windows%2010/GoogleDNS.bat -Destination GoogleDNS.bat"
Start /Min /Wait GoogleDNS.bat
Del GoogleDNS.bat

REM Fonts
PowerShell "Start-BitsTransfer -Source https://raw.githubusercontent.com/NatoBoram/FirstRun/master/Windows%2010/Fonts.bat -Destination Fonts.bat"
Start /Min /Wait Fonts.bat
Del Fonts.bat

REM Scoop
PowerShell "Start-BitsTransfer -Source https://raw.githubusercontent.com/NatoBoram/FirstRun/master/Windows%2010/Scoop.bat -Destination Scoop.bat"
Start /Min /Wait Scoop.bat
Start /Min /Wait Scoop.bat
Del Scoop.bat

REM Install
PowerShell "Start-BitsTransfer -Source https://raw.githubusercontent.com/NatoBoram/FirstRun/master/Windows%2010/Install.bat -Destination Install.bat"
Start /Wait Install.bat
Del Install.bat

REM PSWindowsUpdate
PowerShell "Start-BitsTransfer -Source https://raw.githubusercontent.com/NatoBoram/FirstRun/master/Windows%2010/PSWindowsUpdate.bat -Destination PSWindowsUpdate.bat"
Start /Wait PSWindowsUpdate.bat
Del PSWindowsUpdate.bat

Exit

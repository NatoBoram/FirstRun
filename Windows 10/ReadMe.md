# Windows 10
When first booting into Windows 10, there are a few things that you might want to do.

## Google Public DNS
1. Open Command Prompt as Administrator
2. Copy all the content of [FirstRun](https://raw.githubusercontent.com/NatoBoram/FirstRun/master/Windows%2010/FirstRun.bat)
3. Paste it in Command Prompt.

## GMT
1. [Windows] + R
2. `regedit`
3. `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation`
4. New
5. DWORD (32 bits)
6. `RealTimeIsUniversal`
7. `1`

## [PSWindowsUpdate](https://www.powershellgallery.com/packages/PSWindowsUpdate/)
1. Open Windows PowerShell as Administrator
2. `Set-ExecutionPolicy Unrestricted`
3. `Install-Module -Name PSWindowsUpdate -Force`
4. `Add-WUServiceManager -ServiceID 7971f918-a847-4430-9279-4a52d1efe18d`
5. `Get-WUInstall -MicrosoftUpdate -AcceptAll -AutoReboot -Verbose`

## Scoop
1. Open PowerShell as Administrator
2. Copy all the content of [Scoop](https://raw.githubusercontent.com/NatoBoram/FirstRun/master/Windows%2010/Scoop.ps1)
3. Paste it in PowerShell

## Other Software
1. Open PowerShell as Administrator
2. Copy all the content of [Install](https://raw.githubusercontent.com/NatoBoram/FirstRun/master/Windows%2010/Install.bat)
3. Paste it in PowerShell

## Future References
[Upgrade](https://github.com/NatoBoram/FirstRun/blob/master/Windows%2010/HowTo/Upgrade/ReadMe.md) | [DVD](https://github.com/NatoBoram/FirstRun/blob/master/Windows%2010/HowTo/DVD/ReadMe.md) | [USB](https://github.com/NatoBoram/FirstRun/blob/master/Windows%2010/HowTo/USB/ReadMe.md) | [Update](https://github.com/NatoBoram/FirstRun/blob/master/Windows%2010/HowTo/Update/ReadMe.md) | [Refresh](https://github.com/NatoBoram/FirstRun/blob/master/Windows%2010/HowTo/Refresh/ReadMe.md) | [Bash](https://github.com/NatoBoram/FirstRun/blob/master/Windows%2010/HowTo/Bash/ReadMe.md)

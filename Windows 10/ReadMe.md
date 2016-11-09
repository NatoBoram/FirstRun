# Windows 10
When first booting into Windows 10, there are a few things that you might want to do.

## First Run
* Download and run [FirstRun](https://raw.githubusercontent.com/NatoBoram/FirstRun/master/Windows%2010/FirstRun.bat)

### How to install [PSWindowsUpdate](https://www.powershellgallery.com/packages/PSWindowsUpdate/)
1. Open Windows PowerShell as Administrator
2. `Set-ExecutionPolicy Unrestricted`
3. `Install-PackageProvider -Name NuGet -Force`
4. `Install-Module -Name PSWindowsUpdate -Force`
5. `Add-WUServiceManager -ServiceID 7971f918-a847-4430-9279-4a52d1efe18d`
6. `Get-WUInstall -MicrosoftUpdate -AcceptAll -AutoReboot -Verbose`

### How to fix GMT
1. [Windows] + R
2. `regedit`
3. `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation`
4. New
5. DWORD (32 bits)
6. `RealTimeIsUniversal`
7. `1`

## Future References

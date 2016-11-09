# Windows 10
When first booting into Windows 10, there are a few things that you might want to do.

## First Run

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
4. New, DWORD (32-bit), `RealTimeIsUniversal`
5. `1`

## Attributions
[Free Software Foundation](http://www.gnu.org/licenses/gpl) | [Git for Windows](https://git-for-windows.github.io/) | [Igor Pavlov](http://7-zip.org/) | [Michal Gajda](https://www.powershellgallery.com/packages/PSWindowsUpdate/) | [Oracle](http://www.java.com) | [Semantic Versionning](http://semver.org/)

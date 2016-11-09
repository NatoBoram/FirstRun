# Update
Updates my java programs.

## Before
Some projects requires specific software in order to run. Before running any program, please install [Java](http://www.java.com/), [Git for Windows](https://git-for-windows.github.io/), [7-Zip](http://7-zip.org/) and [PSWindowsUpdate](https://www.powershellgallery.com/packages/PSWindowsUpdate/).

### How to install [Java](http://www.java.com/en/download/manual.jsp)
This guide shows how to install [Java](http://www.java.com/en/download/manual.jsp) in order to use it quickly. If you didn't use these steps during your installation, it is recommended that you reinstall it because some of these steps are mendatory for this auto updater. To begin, download [Windows Offline](http://javadl.oracle.com/webapps/download/AutoDL?BundleId=207773) and [Windows Offline (64-bit)](http://javadl.oracle.com/webapps/download/AutoDL?BundleId=207775).

![1](https://raw.githubusercontent.com/NatoBoram/Update/master/HowTo/Java/1.PNG)
![2](https://raw.githubusercontent.com/NatoBoram/Update/master/HowTo/Java/2.PNG)

### How to install [Git for Windows](https://git-for-windows.github.io/)
This guide shows how to install [Git for Windows](https://git-for-windows.github.io/) in order to use its maximum potency. If you didn't use these options during your installation, it is recommended that you reinstall it because some of these options are mendatory.

![1](https://raw.githubusercontent.com/NatoBoram/Update/master/HowTo/Git/1.PNG)
![2](https://raw.githubusercontent.com/NatoBoram/Update/master/HowTo/Git/2.PNG)
![3](https://raw.githubusercontent.com/NatoBoram/Update/master/HowTo/Git/3.PNG)
![4](https://raw.githubusercontent.com/NatoBoram/Update/master/HowTo/Git/4.PNG)
![5](https://raw.githubusercontent.com/NatoBoram/Update/master/HowTo/Git/5.PNG)
![6](https://raw.githubusercontent.com/NatoBoram/Update/master/HowTo/Git/6.PNG)
![7](https://raw.githubusercontent.com/NatoBoram/Update/master/HowTo/Git/7.PNG)
![8](https://raw.githubusercontent.com/NatoBoram/Update/master/HowTo/Git/8.PNG)
![9](https://raw.githubusercontent.com/NatoBoram/Update/master/HowTo/Git/9.PNG)

### How to install [7-Zip](http://7-zip.org/)
![1](https://raw.githubusercontent.com/NatoBoram/Update/master/HowTo/7-Zip/1.PNG)
![2](https://raw.githubusercontent.com/NatoBoram/Update/master/HowTo/7-Zip/2.PNG)

### How to install [PSWindowsUpdate](https://www.powershellgallery.com/packages/PSWindowsUpdate/)
1. Open Windows PowerShell as Administrator
2. Set-ExecutionPolicy Unrestricted
3. Install-PackageProvider -Name NuGet -Force
4. Install-Module -Name PSWindowsUpdate -Force
5. Add-WUServiceManager -ServiceID 7971f918-a847-4430-9279-4a52d1efe18d
6. Get-WUInstall -MicrosoftUpdate -AcceptAll -AutoReboot -Verbose

## Attributions
[Free Software Foundation](http://www.gnu.org/licenses/gpl) | [Git for Windows](https://git-for-windows.github.io/) | [Igor Pavlov](http://7-zip.org/) | [Michal Gajda](https://www.powershellgallery.com/packages/PSWindowsUpdate/) | [Oracle](http://www.java.com) | [Semantic Versionning](http://semver.org/)

@echo off

echo Google Public DNS
set DNS1=8.8.8.8
set DNS2=8.8.4.4
set DNS3=2001:4860:4860::8888
set DNS4=2001:4860:4860::8844
for /f "tokens=1,2,3*" %%i in ('netsh int show interface') do (
	if %%i equ Enabled (
		echo "%%l" : %DNS1% + %DNS2% + %DNS3% + %DNS4%
		netsh int ipv4 set dns name="%%l" static %DNS1% primary validate=no
		netsh int ipv4 add dns name="%%l" %DNS2% index=2 validate=no
		netsh int ipv6 set dns name="%%l" static %DNS3% primary validate=no
		netsh int ipv6 add dns name="%%l" %DNS4% index=2 validate=no
	)
)

echo IPConfig
ipconfig /release
ipconfig /flushdns
ipconfig /renew

echo Time
net start w32time
w32tm /resync

echo Windows 10 Upgrade
mkdir C:\Windows10Upgrade\
del C:\Windows10Upgrade\Windows10Upgrade.exe
(New-Object System.Net.WebClient).DownloadFile("http://go.microsoft.com/fwlink/?LinkID=799445", "C:\Windows10Upgrade\Windows10Upgrade.exe")
wuauclt /resetauthorization
start /wait C:\Windows10Upgrade\Windows10Upgrade.exe
PowerShell Get-WUInstall -MicrosoftUpdate -AcceptAll -AutoReboot -Verbose

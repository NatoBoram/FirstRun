@Echo Off
PowerShell "Set-ExecutionPolicy RemoteSigned"
PowerShell "Install-Module -Name PSWindowsUpdate -Force"
PowerShell "Add-WUServiceManager -ServiceID 7971f918-a847-4430-9279-4a52d1efe18d"
Start /Min PowerShell "Get-WUInstall -MicrosoftUpdate -AcceptAll -AutoReboot -Verbose"
exit

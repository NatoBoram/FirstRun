# Windows 10

When first booting into Windows 10, there are a few things that you might want to do.

## GMT

1. <kbd>Windows</kbd> + <kbd>R</kbd>
2. `regedit`
3. `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\TimeZoneInformation`
4. New
5. DWORD (32 bits)
6. `RealTimeIsUniversal`
7. `1`

## Windows Capabilities

```cmd
dism /online /Remove-Capability /CapabilityName:Browser.InternetExplorer~~~~0.0.11.0

dism /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
wsl --set-default-version 2
```

## First Run

1. Open Command Prompt as Administrator.
2. Copy all the content of [Scoop](https://raw.githubusercontent.com/NatoBoram/FirstRun/master/Windows%2010/Scoop.bat).
3. Paste it in Command Prompt.

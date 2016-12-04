# So, you've just got an Android?
## Flash
0. Install [SDK Tools](https://developer.android.com/studio/)
0. Download [Factory Image](https://developers.google.com/android/images)

## CyanogenMod
0. Download [TWRP](https://twrp.me/)
0. Download [CyanogenMod](https://download.cyanogenmod.org/)
0. Download [OpenGApps](http://opengapps.org/)
0. `adb reboot bootloader`
0. `fastboot flashing unlock` or `fastboot oem unlock`
0. `fastboot flash recovery twrp.img`
0. Recovery mode
0. Wipe
0. Advanced
0. ADB Sideload
0. `adb sideload cm.zip`
0. `adb sideload open_gapps.zip`
0. Reboot System
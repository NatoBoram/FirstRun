# So, you've just got an Android?
## Flash
0. Install [SDK Tools](https://developer.android.com/studio/)
0. Download [Factory Image](https://developers.google.com/android/images)
0. `adb reboot bootloader`
0. `fastboot flashing unlock` or `fastboot oem unlock`
0. Run `flash-all`
0. `adb reboot bootloader`
0. `fastboot flashing lock` or `fastboot oem lock`

## CyanogenMod
0. Download [CyanogenMod](https://download.cyanogenmod.org/)
0. Download [TWRP](https://twrp.me/)
0. Download [OpenGApps](http://opengapps.org/)
0. `adb reboot bootloader`
0. `fastboot flashing unlock` or `fastboot oem unlock`
0. `fastboot flash recovery cm.img`
0. Recovery mode
0. Factory reset
0. Full factory reset
0. Apply update
0. Apply from ADB
0. `adb sideload cm.zip`
0. Advanced
0. Reboot to bootloader
0. `fastboot flash recovery twrp.img`
0. Recovery mode
0. Advanced
0. ADB Sideload
0. Wipe Dalvik Cache
0. Wipe Cache
0. `adb sideload open_gapps.zip`
0. Reboot
0. Bootloader
0. `fastboot flash recovery cm.img`
0. Start

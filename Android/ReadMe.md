# So, you've just got an Android?

## Flash

0. Install [SDK Tools](https://developer.android.com/studio/)
1. Download [Factory Image](https://developers.google.com/android/images)
2. `adb reboot bootloader`
3. `fastboot flashing unlock` or `fastboot oem unlock`
4. Run `flash-all`
5. `adb reboot bootloader`
6. `fastboot flashing lock` or `fastboot oem lock`

## CyanogenMod

0. Download [CyanogenMod](https://download.cyanogenmod.org/)
1. Download [TWRP](https://twrp.me/)
2. Download [OpenGApps](http://opengapps.org/)
3. `adb reboot bootloader`
4. `fastboot flashing unlock` or `fastboot oem unlock`
5. `fastboot flash recovery cm.img`
6. Recovery mode
7. Factory reset
8. Full factory reset
9. Apply update
10. Apply from ADB
11. `adb sideload cm.zip`
12. Advanced
13. Reboot to bootloader
14. `fastboot flash recovery twrp.img`
15. Recovery mode
16. Advanced
17. ADB Sideload
18. Wipe Dalvik Cache
19. Wipe Cache
20. `adb sideload open_gapps.zip`
21. Reboot
22. Bootloader
23. `fastboot flash recovery cm.img`
24. Start

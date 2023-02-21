# TWRP Configuration
RECOVERY_SDCARD_ON_DATA := true
TW_THEME := portrait_hdpi
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
#TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.usb0/Lun.0/file
TW_MAX_BRIGHTNESS := 1000
TW_DEFAULT_BRIGHTNESS := 800
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_APEX := true
TW_INCLUDE_RESETPROP := true
TW_DEVICE_VERSION := perilouspike
TARGET_USES_MKE2FS := true # Use mke2fs to create ext4 images
TW_HAS_MTP := true
TARGET_USES_UEFI := true
TW_INCLUDE_FUSE_EXFAT := true

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true

# Statusbar icon flags
#TW_STATUS_ICONS_ALIGN := center
TW_CUSTOM_CPU_POS := 605
TW_CUSTOM_CLOCK_POS := 40
#TW_CUSTOM_BATTERY_POS := 800

# Exclude
TW_EXCLUDE_TWRP_APP := true

# Logcat
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true
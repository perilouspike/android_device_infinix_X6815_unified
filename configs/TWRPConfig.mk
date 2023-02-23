#################################
# TWRP - specific Configuration #
#################################
RECOVERY_SDCARD_ON_DATA := true
TW_THEME := portrait_hdpi
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
#TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.usb0/Lun.0/file
TW_INCLUDE_NTFS_3G := true
TW_EXCLUDE_APEX := true
TARGET_USES_MKE2FS := true # Use mke2fs to create ext4 images
TW_HAS_MTP := true

# Maintainer/Version
TW_DEVICE_VERSION := perilouspike

# Set brightness path and level
TW_MAX_BRIGHTNESS := 1000
TW_DEFAULT_BRIGHTNESS := 500
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"

# Include some binaries
TW_INCLUDE_LIBRESETPROP := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_BASH := true

# Use Toolbox instead of Busybox
TW_USE_TOOLBOX := true

# drift/offset
TW_QCOM_ATS_OFFSET := 1617714502203

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true

# Statusbar icon flags
#TW_STATUS_ICONS_ALIGN := center
TW_CUSTOM_CPU_POS := 605
TW_CUSTOM_CLOCK_POS := 40
#TW_CUSTOM_BATTERY_POS := 800

# Debug-tools
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# exFAT FS Support
TW_INCLUDE_FUSE_EXFAT := true

# NTFS Support
TW_INCLUDE_FUSE_NTFS := true

# Excludes
TW_EXCLUDE_TWRP_APP := true

# Property Override
#TW_OVERRIDE_SYSTEM_PROPS := \
    #"ro.build.date.utc;ro.bootimage.build.date.utc=ro.build.date.utc;ro.odm.build.date.utc=ro.build.date.utc;ro.product.build.date.utc=ro.build.date.utc;ro.system.build.date.utc=ro.build.date.utc;ro.system_ext.build.date.utc=ro.build.date.utc;ro.vendor.build.date.utc=ro.build.date.utc;ro.build.product;ro.build.fingerprint=ro.system.build.fingerprint;ro.build.version.incremental;ro.product.device=ro.product.system.device;ro.product.model=ro.product.system.model;ro.product.name=ro.product.system.name"

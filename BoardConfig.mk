# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 TeamWin Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Device Path Identifier
DEVICE_PATH := device/infinix/X6815B

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a55

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a55

# Arch Suffix
#TARGET_BOARD_SUFFIX := _64
#TARGET_USES_64_BIT_BINDER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := Infinix-X6815,Infinix-X6815B

# APEX
#DEXPREOPT_GENERATE_APEX_IMAGE := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6877
TARGET_NO_BOOTLOADER := true

# Display
#TARGET_SCREEN_DENSITY := 480

# Kernel
TARGET_KERNEL_ARCH := $(TARGET_ARCH)
BOARD_KERNEL_PAGESIZE := 2048
BOARD_BOOTIMG_HEADER_VERSION := 2
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_TAGS_OFFSET := 0x07c08000
BOARD_KERNEL_OFFSET := 0x00008000
BOARD_RAMDISK_OFFSET := 0x11088000
BOARD_KERNEL_IMAGE_NAME := Image.gz
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 buildvariant=user
#BOARD_KERNEL_CMDLINE += androidboot.force_normal_boot=1
# TODO: Used in other device tree. Do we need it?
#BOARD_KERNEL_CMDLINE += androidboot.init_fatal_reboot_target=recovery

# Args
BOARD_MKBOOTIMG_ARGS += --base $(BOARD_KERNEL_BASE)
BOARD_MKBOOTIMG_ARGS += --pagesize $(BOARD_KERNEL_PAGESIZE)
BOARD_MKBOOTIMG_ARGS += --kernel_offset $(BOARD_KERNEL_OFFSET)
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOTIMG_HEADER_VERSION)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dtb $(TARGET_PREBUILT_DTB)

# Kernel - prebuilt
#TARGET_FORCE_PREBUILT_KERNEL := true
#ifeq #($(TARGET_FORCE_PREBUILT_KERNEL),true)
TARGET_PREBUILT_KERNEL := $(DEVICE_PATH)/prebuilt/kernel
TARGET_PREBUILT_DTB := $(DEVICE_PATH)/prebuilt/dtb.img
#BOARD_INCLUDE_DTB_IN_BOOTIMG := true
#BOARD_KERNEL_SEPARATED_DTBO :=
#endif

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_USES_METADATA_PARTITION := true
BOARD_USES_METADATA_ENCRYPTION := true
BOARD_SUPER_PARTITION_SIZE := 9126805504
BOARD_BOOTIMAGE_PARTITION_SIZE := 41943040
BOARD_SUPPRESS_SECURE_ERASE := true

# Dynamic Partition
BOARD_SUPER_PARTITION_GROUPS := main
BOARD_INFINIX_DYNAMIC_PARTITIONS_PARTITION_LIST := system vendor product system_ext
BOARD_MAIN_SIZE := 9126805504

# File System
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := f2fs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := ext4

# Workaround for error copying vendor files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product

# A/B
AB_OTA_UPDATER := true
AB_OTA_PARTITIONS += \
    system \
    vendor \
    product \
    system_ext \
    boot \
    vbmeta_vendor \
    vbmeta_system

# Platform
TARGET_BOARD_PLATFORM := mt6877
PRODUCT_PLATFORM := mt6877

# Recovery
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USES_MKE2FS := true # Use mke2fs to create ext4 images
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab

# System as root
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_ROOT_EXTRA_FOLDERS += metadata

# Android Verified Boot
# TODO: What about the system_ext partition?
BOARD_AVB_ENABLE := true
BOARD_AVB_VBMETA_SYSTEM := system product
BOARD_AVB_VBMETA_SYSTEM_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_SYSTEM_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX_LOCATION := 1
BOARD_AVB_VBMETA_VENDOR := vendor
BOARD_AVB_VBMETA_VENDOR_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_VBMETA_VENDOR_ALGORITHM := SHA256_RSA2048
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_VBMETA_VENDOR_ROLLBACK_INDEX_LOCATION := 2
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 3
#BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3

# Hack: prevent anti rollback
PLATFORM_SECURITY_PATCH := 2099-12-31
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)
PLATFORM_VERSION := 16.1.0
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
#TW_USE_FSCRYPT_POLICY := 1

# Copy fstab to ensure the first stage boot mounts everything we need.
# See https://source.android.com/docs/core/architecture/kernel/mounting-partitions-early#fstab-ramdisk
#PRODUCT_COPY_FILES += $(DEVICE_PATH)/fstab.$(TARGET_BOARD_PLATFORM):$(TARGET_COPY_OUT_RECOVERY)/root/first_stage_ramdisk/fstab.$(TARGET_BOARD_PLATFORM)
#PRODUCT_COPY_FILES += $(DEVICE_PATH)/fstab.$(TARGET_BOARD_PLATFORM):$(TARGET_COPY_OUT_RECOVERY)/root/vendor/etc/fstab.$(TARGET_BOARD_PLATFORM)
#PRODUCT_COPY_FILES += $(DEVICE_PATH)/fstab.$(TARGET_BOARD_PLATFORM):$(TARGET_COPY_OUT_VENDOR)/etc/fstab.$(TARGET_BOARD_PLATFORM)

# Additional binaries & libraries needed for recovery
TARGET_RECOVERY_DEVICE_MODULES += \
    libkeymaster41 \
    libkeymaster4 \
    libpuresoftkeymasterdevice
#ashmemd_aidl_interface-cpp \
    libashmemd_client

RECOVERY_LIBRARY_SOURCE_FILES += \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster41.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so
#$(TARGET_OUT_SHARED_LIBRARIES)/ashmemd_aidl_interface-cpp.so \
    $(TARGET_OUT_SHARED_LIBRARIES)/libashmemd_client.so

# TWRP Configuration
RECOVERY_SDCARD_ON_DATA := true
TW_THEME := portrait_hdpi
TARGET_USES_MKE2FS := true
#TW_SCREEN_BLANK_ON_BOOT := true
TW_NO_SCREEN_BLANK := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TARGET_USE_CUSTOM_LUN_FILE_PATH := /config/usb_gadget/g1/functions/mass_storage.usb0/lun.%d/file
TW_MAX_BRIGHTNESS := 1000
TW_DEFAULT_BRIGHTNESS := 800
TW_INCLUDE_NTFS_3G := true
TW_INCLUDE_FUSE_EXFAT := true
TW_EXCLUDE_APEX := false
TW_LOAD_VENDOR_MODULES := true
TW_INCLUDE_FBE_METADATA_DECRYPT := true
TW_INCLUDE_RESETPROP := true
TW_HAS_MTP := true
TW_DEVICE_VERSION := perilouspike
TW_INCLUDE_FASTBOOTD := true

# Exclude
TW_EXCLUDE_TWRP_APP := true

# Logcat
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

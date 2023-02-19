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

LOCAL_PATH := device/infinix/X6815B

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Api level
PRODUCT_SHIPPING_API_LEVEL := 30

# Platform
PRODUCT_PLATFORM := mt6877

# A/B
ENABLE_VIRTUAL_AB := true

# fastboot/d hal
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    fastbootd

# A/B
AB_OTA_POSTINSTALL_CONFIG += \
    RUN_POSTINSTALL_system=true \
    POSTINSTALL_PATH_system=system/bin/otapreopt_script \
    FILESYSTEM_TYPE_system=ext4 \
    POSTINSTALL_OPTIONAL_system=true

#AB_OTA_POSTINSTALL_CONFIG += \
    #RUN_POSTINSTALL_vendor=true \
    #POSTINSTALL_PATH_vendor=bin/checkpoint_gc \
    #FILESYSTEM_TYPE_vendor=ext4 \
    #POSTINSTALL_OPTIONAL_vendor=true

# Boot control HAL
#PRODUCT_PACKAGES += \
    #android.hidl.base@1.0 \
    #android.hardware.boot@1.0-impl \
    #android.hardware.boot@1.0-service
#android.hardware.boot@1.2-impl \
#android.hardware.boot@1.2-impl.recovery \
#android.hardware.boot@1.2-service

PRODUCT_PACKAGES += \
    bootctrl.mt6877

PRODUCT_PACKAGES += \
    bootctrl.mt6877 \
    libgptutils \
    libz \
    libcutils

PRODUCT_PACKAGES += \
    otapreopt_script \
    cppreopts.sh \
    update_engine \
    update_verifier \
    update_engine_sideload
    #checkpoint_gc


# health Hal
#PRODUCT_PACKAGES += \
    #android.hardware.health@2.1-impl

#TW_OVERRIDE_SYSTEM_PROPS := \
    "ro.build.product;ro.build.fingerprint;ro.build.version.incremental;ro.product.device=ro.product.system.device;ro.product.model=ro.product.system.model;ro.product.name=ro.product.system.name"

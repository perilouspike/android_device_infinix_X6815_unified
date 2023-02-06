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

# Device Target Name
PRODUCT_RELEASE_NAME := X6815B

# Inherit from the Device Tree itself.
$(call inherit-product, device/infinix/X6815B/device.mk)

# Inherit from TWRP-common stuffs.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Device Identifier
PRODUCT_DEVICE := X6815B
PRODUCT_NAME := twrp_X6815B
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := X6815B
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-$(PRODUCT_RRAND)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_x6815b_h772-user 12 SP1A.210812.016 189006 release-keys"

BUILD_FINGERPRINT := Infinix/X6815B-INFK/Infinix-X6815B:12/SP1A.210812.016/221213V161:user/release-keys

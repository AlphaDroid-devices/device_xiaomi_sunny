#
# Copyright (C) 2021 The PixelExperience Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from sunny device
$(call inherit-product, device/xiaomi/sunny/device.mk)

# Inherit some common AlphaDroid stuff.
$(call inherit-product, vendor/alpha/config/common_full_phone.mk)

# Device config
TARGET_HAS_UDFPS := false
TARGET_ENABLE_BLUR := false
TARGET_EXCLUDES_AUDIOFX := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_BOOT_ANIMATION_RES := 1080

# Launcher
TARGET_INCLUDE_LAWNCHAIR := true

# Debugging
TARGET_INCLUDE_MATLOG := false

# Extras
TARGET_INCLUDE_RIMUSIC := true

# Maintainer
ALPHA_BUILD_TYPE := Official
ALPHA_MAINTAINER := sunny_team

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := alpha_sunny
PRODUCT_DEVICE := sunny
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := M2101K7AG
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_SYSTEM_NAME := sunny

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceName=$(PRODUCT_SYSTEM_NAME)

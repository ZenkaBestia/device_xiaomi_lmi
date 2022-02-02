#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from lmi device
$(call inherit-product, device/xiaomi/lmi/device.mk)

# Inherit some common PixelExtended stuff.
$(call inherit-product, vendor/aosp/config/common.mk)

# Inherit PixelExtended build
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_INCLUDE_LIVE_WALLPAPERS := true

# Inherit Project Arcana build
ARCANA_DEVICE := lmi
ARCANA_MAINTAINER := 家|ZenkaBestia
WITH_GAPPS := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_lmi
PRODUCT_DEVICE := lmi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := "google/raven/raven:12/SQ1D.220105.007/8030436:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="raven-user 12 SQ1D.220105.007 8030436 release-keys"

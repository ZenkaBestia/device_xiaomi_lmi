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

# Inherit some common Legion OS stuff.
$(call inherit-product, vendor/legion/config/common_full_phone.mk)

# Legion OS Build
LEGION_MAINTAINER := 家|Zenka
PRODUCT_PROPERTY_OVERRIDES += \
    ro.maintainer.name=家|Zenka
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_BLUR := true
TARGET_SUPPORT_FACE_UNLOCK := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
TARGET_GAPPS_ARCH := arm64

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := legion_lmi
PRODUCT_DEVICE := lmi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi K30 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/lmi/lmi:11/RKQ1.200826.002/V12.5.4.0.RJKCNXM:user/release-keys

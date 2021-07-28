#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/legion/config/common_full_phone.mk)

# Inherit from lmi device
$(call inherit-product, device/xiaomi/lmi/device.mk)

# Legion OS Build
LEGION_BUILD_TYPE := OFFICIAL
LEGION_MAINTAINER := 家|Zenka
PRODUCT_PROPERTY_OVERRIDES += \
    ro.maintainer.name=家|Zenka
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_BLUR := true
TARGET_SUPPORT_FACE_UNLOCK := true
TARGET_SUPPORTS_GOOGLE_RECORDER := true
WITH_GAPPS ?= true
TARGET_GAPPS_ARCH := arm64

PRODUCT_NAME := legion_lmi
PRODUCT_DEVICE := lmi
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F2 Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lmi-user 11 RKQ1.200826.002 V12.2.6.0.RJKMIXM release-keys"

BUILD_FINGERPRINT := POCO/lmi_global/lmi:11/RKQ1.200826.002/V12.2.6.0.RJKMIXM:user/release-keys

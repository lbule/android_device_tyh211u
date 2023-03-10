#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from AURORA device
$(call inherit-product, device/chinatelecom/AURORA/device.mk)

PRODUCT_DEVICE := AURORA
PRODUCT_NAME := twrp_AURORA
PRODUCT_BRAND := Tianyi1Hao2021
PRODUCT_MODEL := TYH211U
PRODUCT_MANUFACTURER := chinatelecom

PRODUCT_GMS_CLIENTID_BASE := android-chinatelecom

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ud710_7h10_ctcc-user 10 QP1A.190711.020 47316 release-keys"

BUILD_FINGERPRINT := Tianyi1Hao2021/ud710_7h10_ctcc/ud710_7h10:10/QP1A.190711.020/47316:user/release-keys

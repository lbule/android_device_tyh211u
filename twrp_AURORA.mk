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

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,$(LOCAL_PATH)/recovery/root,recovery/root)

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

PRODUCT_DEVICE := AURORA
PRODUCT_NAME := twrp_AURORA
PRODUCT_BRAND := Tianyi1Hao2021
PRODUCT_MODEL := TYH211U
PRODUCT_MANUFACTURER := chinatelecom

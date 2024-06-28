#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
LOCAL_PATH := device/moondrop/MD_PH_001

# Release name
PRODUCT_RELEASE_NAME := MD_PH_001

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Virtual A/B OTA
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from MD_PH_001 device
$(call inherit-product, device/moondrop/MD_PH_001/device.mk)

PRODUCT_DEVICE := MD_PH_001
PRODUCT_NAME := twrp_MD_PH_001
PRODUCT_BRAND := Moondrop
PRODUCT_MODEL := MIAD01
PRODUCT_MANUFACTURER := moondrop

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=MD_PH_001 \
    PRODUCT_NAME=MD_PH_001 \
    PRIVATE_BUILD_DESC="MD_PH_001-user 13 TP1A.220624.014 1711682717 release-keys"

BUILD_FINGERPRINT := MOONDROP/MD_PH_001/MD_PH_001:12/SP1A.210812.016/1711681716:user/release-keys

# conditions for share or recreate: always mention credits for lopestom.

# Added by Shirayuki39
# Thanks lopestom

#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common PBRP stuff.
$(call inherit-product, vendor/pb/config/common.mk)

# Inherit from CG8 device
$(call inherit-product, device/tecno/CG8/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := CG8
PRODUCT_NAME := pb_CG8
PRODUCT_BRAND := Tecno
PRODUCT_MODEL := Camon 17 Pro
PRODUCT_MANUFACTURER := Tecno
PRODUCT_RELEASE_NAME := Tecno Camon 17 Pro

PRODUCT_GMS_CLIENTID_BASE := android-tecno

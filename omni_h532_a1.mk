#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from h532_a1 device
$(call inherit-product, device/infinix/h532_a1/device.mk)

PRODUCT_DEVICE := h532_a1
PRODUCT_NAME := omni_h532_a1
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix-X600
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := alps-full_h532_a1-{country}

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="INFINIX-X600-user 5.1 LMY47D 1444928938 release-keys"

BUILD_FINGERPRINT := INFINIX/INFINIX-X600/INFINIX-X600:5.1/LMY47D/1444928938:user/release-keys

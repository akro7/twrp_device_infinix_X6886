#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from Infinix-X6886 device
$(call inherit-product, device/infinix/Infinix-X6886/device.mk)

PRODUCT_DEVICE := Infinix-X6886
PRODUCT_NAME := twrp_Infinix-X6886
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6886
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-infinix

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vext_x6886_h8921-user 12 SP1A.210812.016 974185 release-keys"

BUILD_FINGERPRINT := Infinix/X6886-OP/Infinix-X6886:12/SP1A.210812.016/251211V1431:user/release-keys

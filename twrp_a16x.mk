#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from common tree
include device/samsung/s5e8535-common/BoardConfigCommon.mk

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from a16x device
$(call inherit-product, device/samsung/a16x/device.mk)

PRODUCT_DEVICE := a16x
PRODUCT_NAME := twrp_a16x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A166U1
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a16xsq-user 13 TP1A.220624.014 A166USQS1AYA3 release-keys"

BUILD_FINGERPRINT := samsung/a16xsq/a16x:13/TP1A.220624.014/A166USQS1AYA3:user/release-keys

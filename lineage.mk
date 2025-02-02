#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit from grandppltedx device
$(call inherit-product, device/samsung/grandppltedx/device.mk)

PRODUCT_DEVICE := grandppltedx
PRODUCT_NAME := lineage_grandppltedx
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G532G
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
   TARGET_DEVICE=grandppltedx \
   PRODUCT_NAME=grandpplte \
   PRIVATE_BUILD_DESC="grandppltedx-user 6.0.1 MMB29T G532GDXU1ASA5 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/grandppltedx/grandpplte:6.0.1/MMB29T/G532GDXU1ASA5:user/release-keys

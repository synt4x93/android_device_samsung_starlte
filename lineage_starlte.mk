# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, frameworks/native/build/phone-xhdpi-4096-dalvik-heap.mk)
$(call inherit-product, vendor/samsung/universal9810-common/starlte/universal9810-common-vendor.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/starlte/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := starlte
PRODUCT_NAME := lineage_starlte
PRODUCT_MODEL := SM-G960F
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_GMS_CLIENTID_BASE := android-samsung

BUILD_FINGERPRINT := samsung/starltexx/starlte:10/QP1A.190711.020/G960FXXU7DTAA:user/release-keys

PRODUCT_BUILD_PROP_OVERRIDES += \
        PRIVATE_BUILD_DESC="starltexx-user 10 QP1A.190711.020 G960FXXU7DTAA release-keys"

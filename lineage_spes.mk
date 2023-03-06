#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit Ricedroid Stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Ricedroid
RICE_CHIPSET := SM689
RICE_MAINTAINER := Agatha
RICE_PACKAGE_TYPE := PIXEL
SUSHI_BOOTANIMATION := 1080
TARGET_BUILD_APERTURE_CAMERA := true
TARGET_ENABLE_BLUR := true

# GMS build flags
WITH_GMS := true
TARGET_USE_GOOGLE_TELEPHONY := true

# Device identifier
PRODUCT_NAME := lineage_spes
PRODUCT_DEVICE := spes
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := Redmi/spes_global/spes:12/SKQ1.211103.001/V13.0.4.0.SGCMIXM:user/release-keys
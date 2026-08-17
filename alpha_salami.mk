#
# Copyright (C) 2021-2026 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
ZYGOTE_FORCE_64 := true
# 64-bit-only zygote (no 32-bit Java); 32-bit bionic still built for native ELF exec
TARGET_SUPPORTS_32_BIT_APPS := false
TARGET_SUPPORTS_64_BIT_APPS := true
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from salami device
$(call inherit-product, device/oneplus/salami/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/alpha/config/common_full_phone.mk)

PRODUCT_NAME := alpha_salami
PRODUCT_DEVICE := salami
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := CPH2449

TARGET_HAS_UDFPS := true
TARGET_SUPPORTS_BLUR := true
TARGET_FACE_UNLOCK_SUPPORTED := true

# Build config

# append time of day to zip
ALPHA_VERSION_APPEND_TIME_OF_DAY := true

# TARGET_BUILD_PACKAGE options:
# 1 - vanilla (default)
# 2 - microg
# 3 - gapps
TARGET_BUILD_PACKAGE := 1 # vanilla (no gapps)

# (valid only for GAPPS builds)
TARGET_INCLUDE_GOOGLE_COMMS := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_SUPPORTS_GOOGLE_RECORDER := false

# Debugging
TARGET_INCLUDE_MATLOG := false
WITH_ADB_INSECURE := false

# Extras
TARGET_INCLUDE_SIMPLE_TUNE := true
TARGET_PREBUILT_BCR := true

PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/alpha/keys/releasekey
# Maintainer
ALPHA_BUILD_TYPE := Unofficial
ALPHA_MAINTAINER := daniash551

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP2A.250605.015 1778208971263 release-keys" \
    BuildFingerprint=OnePlus/CPH2449EEA/OP594DL1:16/TP1A.220905.001/T.R4T3.3a47df1-16a215b-168e4a6:user/release-keys \
    DeviceName=OP594DL1 \
    DeviceProduct=CPH2449 \
    SystemDevice=OP594DL1 \
    SystemName=CPH2449

#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from astonc device
$(call inherit-product, device/oneplus/astonc/device.mk)

# Inherit some common Voltage stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

# Voltage Specific Flags
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_FACE_UNLOCK_SUPPORTED := true
VOLTAGE_BUILD_TYPE := UNOFFICIAL
EXTRA_UDFPS_ANIMATIONS := true

PRODUCT_NAME := voltage_astonc
PRODUCT_DEVICE := astonc
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := PJE110

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="qssi-user 16 BP4A.250605.015 1765893023217 release-keys" \
    BuildFingerprint=OnePlus/PJE110/OP5CF9L1:16/TP1A.220905.001/U.1531cfa_c5893d_c5e3d3:user/release-keys \
    DeviceName=OP5CF9L1 \
    DeviceProduct=PJE110 \
    SystemDevice=OP5CF9L1 \
    SystemName=PJE110

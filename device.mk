#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from msm8917-common
$(call inherit-product, device/asus/msm8937-common/msm8937.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    $(LOCAL_PATH)/overlay-lineage/lineage-sdk \
    $(LOCAL_PATH)/overlay/packages/apps/Snap

# Camera
PRODUCT_PACKAGES += \
    libgui_vendor

PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service.X00H

# Fingerprint
PRODUCT_PACKAGES += \
    gxfp_shim

# Gatekeeper
PRODUCT_PACKAGES += \
    android.hardware.gatekeeper@1.0-impl \
    android.hardware.gatekeeper@1.0-service

# Input
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/cdfinger_input.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/cdfinger_input.kl \
    $(LOCAL_PATH)/keylayout/qwerty.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/qwerty.kl

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

EXTRA_VENDOR_LIBRARIES += \
    libcrypto

# Ramdisk
PRODUCT_PACKAGES += \
    fstab.qcom

# Sensors
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/sensor_def_qcomdev.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/sensor_def_qcomdev.conf

# Soong
PRODUCT_SOONG_NAMESPACES += \
    device/asus/X00H

# Touch
PRODUCT_PACKAGES += \
    vendor.lineage.touch@1.0-service.asus_8937

# Inherit vendor
$(call inherit-product, vendor/asus/X00H/X00H-vendor.mk)

# Copyright (C) 2015 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common shits!
$(call inherit-product, vendor/citrus/common.mk)

# Inherit from crackling device
$(call inherit-product, device/wileyfox/crackling/device.mk)

# Must define platform variant before including any common things
TARGET_BOARD_PLATFORM_VARIANT := msm8916

# Device identifier. This must come after all inclusions
PRODUCT_NAME := citrus_crackling
BOARD_VENDOR := wileyfox
PRODUCT_DEVICE := crackling

PRODUCT_GMS_CLIENTID_BASE := android-wileyfox

PRODUCT_MANUFACTURER := Wileyfox
PRODUCT_MODEL := Wileyfox Swift

PRODUCT_BRAND := Wileyfox
TARGET_VENDOR := wileyfox
TARGET_VENDOR_PRODUCT_NAME := Swift
TARGET_VENDOR_DEVICE_NAME := crackling

# CAF REVISION
PRODUCT_PROPERTY_OVERRIDES += \
    ro.caf.branch=LA.UM.5.6.r1-04000-89xx.0

# Citrus-CAF crackling Maintainer
PRODUCT_BUILD_PROP_OVERRIDES += \
         DEVICE_MAINTAINERS="Lordhmen"

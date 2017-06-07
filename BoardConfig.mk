#
# Copyright (C) 2016 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

DEVICE_PATH := device/wileyfox/crackling

include device/wileyfox/crackling/board/*.mk

TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

TARGET_SYSTEM_PROP += device/wileyfox/crackling/system.prop

# Assert
TARGET_OTA_ASSERT_DEVICE := crackling

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# inherit from the proprietary version
-include vendor/wileyfox/crackling/BoardConfigVendor.mk

# Citrus heks
TARGET_USE_CM_RAMDISK := true
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO
TARGET_CAMERASERVICE_CLOSES_NATIVE_HANDLES := true

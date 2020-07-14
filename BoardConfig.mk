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

DEVICE_PATH := device/asus/X00H

# Assert
TARGET_OTA_ASSERT_DEVICE := X00H,X00HD,ASUS_X00HD_4

# Kernel
TARGET_KERNEL_CONFIG := msm8937-perf_defconfig

# Inherit from common msm8917-common
-include device/asus/msm8937-common/BoardConfigCommon.mk

# Inherit from the proprietary version
-include vendor/asus/X00H/BoardConfigVendor.mk

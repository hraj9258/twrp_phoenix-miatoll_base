#
# Copyright (C) 2019 The TwrpBuilder Open-Source Project
#
# Copyright (C) 2020-2022 OrangeFox Recovery Project
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
#

# Release name
PRODUCT_RELEASE_NAME := phoenix
DEVICE_PATH := device/xiaomi/phoenix

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# for the amended f2fs command
# casefolding causes encryption problems with f2fs formatting on Android 12
# so disable this
# $(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/phoenix/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := phoenix
PRODUCT_NAME := twrp_phoenix
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := POCO X2
PRODUCT_MANUFACTURER := Xiaomi
#

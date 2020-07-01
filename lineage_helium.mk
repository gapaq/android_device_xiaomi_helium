#
# Copyright (C) 2015-2016 The CyanogenMod Project
#           (C) 2017-2018 The LineageOS Project
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
#

$(call inherit-product, device/xiaomi/helium/full_helium.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit xlm03lx's Vendor
$(call inherit-product-if-exists, vendor/xlm03lx/xlm03lx.mk)

# Inherit decent  Vendor
$(call inherit-product-if-exists, vendor/support/common.mk)
$(call inherit-product-if-exists, vendor/themes/common.mk)

# Set those variables here to overwrite the inherited values.
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_DEVICE := helium
PRODUCT_NAME := lineage_helium
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := Mi Max Prime
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Use the latest approved GMS identifiers unless running a signed build
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="helium-user 7.0 NRD90M V10.2.2.0.NBDMIXM release-keys"
    BUILD_FINGERPRINT=Xiaomi/helium/helium:7.0/NRD90M/V10.2.2.0.NBDMIXM:user/release-keys

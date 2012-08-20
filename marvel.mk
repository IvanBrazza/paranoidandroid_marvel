#
# Copyright (C) 2012 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the 
# License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR 
# CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.
#

DEVICE_PACKAGE_OVERLAYS := device/htc/marvel_pa/overlay

PRODUCT_RELEASE_NAME := PARODUDE

PRODUCT_VERSION_DEVICE_RELEASE := ALPHA3
PRODUCT_VERSION_DEVICE_SPECIFIC := -PARODUDE-$(PRODUCT_VERSION_DEVICE_RELEASE)

CM_EXTRAVERSION := PARODUDE-$(PRODUCT_VERSION_DEVICE_RELEASE)

BUILD_ID := PARODUDE-$(PRODUCT_VERSION_DEVICE_RELEASE)-$(shell date -u +%d)-$(shell date -u +%m)-$(shell date -u +%Y)

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_marvel BUILD_ID=$(BUILD_ID) BUILD_DISPLAY_ID=$(BUILD_ID) BUILD_FINGERPRINT=cyanogenmod/htc_marvel/marvel:4.0.4/$(BUILD_ID)/0.1:user/release-keys PRIVATE_BUILD_DESC="0.1 PARODUDE release-keys"

# GooManager Stuffs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=dudeman1996 \
    ro.goo.rom=marvel_paranoidandroid \
    ro.goo.board=marvel \
    ro.goo.version=3
PRODUCT_COPY_FILES += \
    device/htc/marvel_pa/app/GooManager.apk:/system/app/GooManager.apk

#ROM Manager Stuffs
PRODUCT_PROPERTY_OVERRIDES += \
    ro.rommanager.developerid=dudeman1996



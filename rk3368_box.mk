#
# Copyright 2014 The Android Open-Source Project
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
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
include device/rockchip/rk3368/rk3368_box/BoardConfig.mk
# Inherit from those products. Most specific first.
$(call inherit-product, device/rockchip/rk3368/rk3368_box/product.mk)
$(call inherit-product, device/rockchip/common/device.mk)

#TODO TV?
PRODUCT_CHARACTERISTICS := tv

PRODUCT_NAME := rk3368_box
PRODUCT_DEVICE := rk3368_box
PRODUCT_MODEL := rk3368-box
PRODUCT_BRAND := Android
PRODUCT_MANUFACTURER := rockchip

PRODUCT_AAPT_CONFIG := normal large tvdpi hdpi
PRODUCT_AAPT_PREF_CONFIG := tvdpi

PRODUCT_PROPERTY_OVERRIDES += \
    sys.hwc.device.primary=HDMI-A,TV

PRODUCT_HAVE_OPTEE := true
# TV Input HAL
PRODUCT_PACKAGES += \
    android.hardware.tv.input@1.0-impl

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rk3368_box/init.box.rc:root/init.box.rc

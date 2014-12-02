#
# Copyright (C) 2014 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# inherit from the proprietary version
-include vendor/lge/p715/BoardConfigVendor.mk

# Inherit from the common msm7x27a definitions
-include device/lge/msm7x27a-common/BoardConfigCommon.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

# Inline kernel building
TARGET_KERNEL_CONFIG := Cyanogenmod_11_vee7_defconfig

KERNEL_EXTERNAL_MODULES:
       mkdir -p $(KERNEL_MODULES_OUT)/volans
       rm -rf $(TARGET_OUT_INTERMEDIATES)/prebuilts
       cp -a /lib/modules/volans/WCN1314_rf.ko $(TARGET_OUT_INTERMEDIATES)/
       $(MAKE) -C $(TARGET_OUT_INTERMEDIATES)/prebuilts/WCN1314_rf KERNEL_OUT=$(KERNEL_OUT) ARCH="arm" CROSS_COMPILE="arm-eabi-" modules
       $(MAKE) -C $(TARGET_OUT_INTERMEDIATES)/prebuilts/WCN1314_rf_ftm KERNEL_OUT=$(KERNEL_OUT) ARCH="arm" CROSS_COMPILE="arm-eabi-" modules
	$(TARGET_OBJCOPY) --strip-unneeded $(TARGET_OUT_INTERMEDIATES)/prebuilts/WCN1314_rf/WCN1314_rf.ko $(TARGET_ROOT_OUT)/lib/modules/volans/WCN1314_rf.ko
	$(TARGET_OBJCOPY) --strip-unneeded $(TARGET_OUT_INTERMEDIATES)/prebuilts/WCN1314_rf_ftm/WCN1314_rf_ftm.ko $(TARGET_ROOT_OUT)/lib/modules/volans/WCN1314_rf_ftm.ko
TARGET_KERNEL_MODULES += PREBUILT_WLAN_MODULES

BOARD_HAVE_QCOM_FM := true
COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/p715/bluetooth

# Camera
COMMON_GLOBAL_CFLAGS += -DMR0_CAMERA_BLOB -DNEEDS_VECTORIMPL_SYMBOLS

# Dalvik
TARGET_ARCH_LOWMEM := true

# Storage / Sharing
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/class/android_usb/android0/f_mass_storage/lun%d/file

# GPS
QCOM_GPS_PATH := hardware/qcom/gps
BOARD_USES_QCOM_LIBRPC := true
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := $(TARGET_BOARD_PLATFORM)

# Webkit
ENABLE_WEBGL := true
PRODUCT_PREBUILT_WEBVIEWCHROMIUM := yes

# Recovery
TW_BOARD_CUSTOM_GRAPHICS := ../../../device/lge/p715/recovery/tw_graphics.c

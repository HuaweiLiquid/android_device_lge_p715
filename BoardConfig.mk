include device/lge/msm7x27a-common/BoardConfigCommon.mk
# inherit from the proprietary version
-include vendor/lge/p715/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := p715
TARGET_ARCH := arm

BOARD_KERNEL_CMDLINE := androidboot.hardware=u0 lge.signed_image=false

TARGET_KERNEL_CONFIG := cyanogenmod_u0_defconfig
TARGET_PREBUILT_KERNEL := device/lge/p715/kernel

## We need this for the flipped screen
BOARD_CUSTOM_GRAPHICS := ../../../device/lge/p715/recovery/graphics.c

LGE_PROJECT := l

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/p715/bluetooth

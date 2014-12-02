#
# Copyright (C) 2013 The CyanogenMod Project
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

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(shell mkdir -p $(OUT)/obj/KERNEL_OBJ/usr)

LOCAL_PATH := device/lge/p715

DEVICE_PACKAGE_OVERLAYS := device/lge/p715/overlay

PRODUCT_LOCALES := ru_RU
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
frameworks/native/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/aandroid.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \

# Config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/AudioFilter.csv:system/etc/AudioFilter.csv \
    $(LOCAL_PATH)/config/gps.conf:system/etc/gps.conf \
    $(LOCAL_PATH)/config/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/config/audio_effects.conf:system/etc/audio_effects.conf \
    $(LOCAL_PATH)/config/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/config/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/config/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf



# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml

# SoftAP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/config/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/config/hostapd/hostapd_default.conf::system/etc/hostapd/hostapd_default.conf

# Wlan
ifneq (exists, $(shell test -d $(TOP)/vendor/qcom/proprietary/wlan/volans && echo exists))
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wlan/wlan.ko:system/lib/modules/wlan.ko \
    $(LOCAL_PATH)/wlan/firmware/WCN1314_qcom_wlan_nv.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/wlan/firmware/WCN1314_qcom_fw.bin:system/etc/firmware/wlan/volans/WCN1314_qcom_fw.bin \
    $(LOCAL_PATH)/wlan/firmware/WCN1314_cfg.dat:system/etc/firmware/wlan/volans/WCN1314_cfg.dat \
    $(LOCAL_PATH)/wlan/firmware/WCN1314_qcom_cfg.ini:system/etc/firmware/wlan/volans/WCN1314_qcom_cfg.ini
endif

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.msm7x27a \
    audio_policy.conf \
    audio_policy.msm7x27a \
    audio.r_submix.default \
    audio.usb.default \
    libaudioparameter \
    libaudio-resampler \
    libtinyalsa \
    tinycap \
    tinymix \
    tinyplay
    
# Display
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    resize2fs \
    setup_fs

# Keys
PRODUCT_PACKAGES += \
    AVRCP.kl \
    vee7_keypad \
    7k_handset.kl \
    touch_dev.kl

# FM Radio
PRODUCT_PACKAGES += \
    FM2 \
    FMRecord \
    libqcomfm_jni \
    qcom.fmradio

# GPS
PRODUCT_PACKAGES += \
    gps.default \
    libgps.utils \
    libloc_adapter \
    libloc_eng \
    libloc_api-rpc-qc

PRODUCT_PACKAGES += \
    gps.msm7x27a

# Misc
PRODUCT_PACKAGES += \
    charger \
    charger_res_images \
    libcnefeatureconfig \
    libnl_2 \
    lights.msm7x27a

# Video
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw

# Wifi
PRODUCT_PACKAGES += \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf

# TWRP
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/etc/twrp.fstab:recovery/root/etc/twrp.fstab


# Ramdisk
PRODUCT_PACKAGES += \
    fstab.vee7 \
    init.vee7.rc \
    ueventd.vee7.rc \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.class_core.sh \
    init.qcom.class_main.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    init.vee7.usb.rc \
    ueventd.qcom.rc \
    ueventd.vee7.rc \
    init.target.rc \
    init.qcom.ril.sh \
    rmt_storage_recovery \
    init.recovery.qcom.rc


# Init scripts
PRODUCT_PACKAGES += \
    init.qcom.post_boot.sh \
    init.qcom.sdio.sh \
    init.target.8x25.sh \
    thermald_conf.sh \
    thermald-8x25-msm1-pmic_therm.conf \
    thermald-LG.conf 

# QC Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=/system/lib/libqc-opt.so \
    ro.sf.hwrotation=180

ADDITIONAL_DEFAULT_PROPERTIES += \
    ro.secure=0 \
    ro.adb.secure=0

$(call inherit-product, vendor/lge/p715/p715-vendor.mk)


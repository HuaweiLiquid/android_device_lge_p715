# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/lge/msm7x27a-common/msm7x27a-common-vendor.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/lge/p715/p715-vendor.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p715/full_p715.mk)

PRODUCT_NAME := cm_p715

# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

# Release name
PRODUCT_RELEASE_NAME := Optimus L7 II
PRODUCT_VERSION_DEVICE_SPECIFIC :=

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := p715

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=u0_open_eu BUILD_FINGERPRINT=lge/u0_open_eu/u0:4.0.3/IML74K/lgp705-V10a.20120418.144808:user/release-keys PRIVATE_BUILD_DESC="u0_open_eu-user 4.0.3 IML74K lgp700-V10a.20120418.144808 release-keys"

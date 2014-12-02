# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Specify phone tech before including full_phone
$(call inherit-product, vendor/lge/msm7x27a-common/msm7x27a-common.mk)

# Inherit device configuration
$(call inherit-product, device/lge/p715/full_p715.mk)

# Boot animation
TARGET_SCREEN_WIDTH := 480
TARGET_SCREEN_HEIGHT := 800

# Release name
PRODUCT_RELEASE_NAME := Optimus L7 II
PRODUCT_NAME := cm_p715

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_BRAND= LGE \
    PRODUCT_NAME= p715 \
    BUILD_PRODUCT= msm8626_p715

#   BUILD_FINGERPRINT=qcom/msm8625/msm8625:4.1.2/JZO54K/eng.ZYC.20140213.151118:eng/test-keys

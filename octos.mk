# Boot animation
TARGET_SCREEN_HEIGHT := 2880
TARGET_SCREEN_WIDTH := 1440

$(call inherit-product, vendor/octos/config/common_full_phone.mk)

# Inherit OctOS configuration
$(call inherit-product, vendor/octos/dependencies/taimen.dependencies)

# Inherit device configuration
$(call inherit-product, device/google/taimen/aosp_taimen.mk)

-include device/google/taimen/device-octos.mk
## Device identifier. This must come after all inclusions
PRODUCT_NAME := octos_taimen
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 2 XL
TARGET_MANUFACTURER := LGE
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=taimen \
    BUILD_FINGERPRINT=google/taimen/taimen:8.0.0/OPD1.170816.025/4424668:user/release-keys \
    PRIVATE_BUILD_DESC="taimen-user 8.0.0 OPD1.170816.025 4424668 release-keys"

$(call inherit-product-if-exists, vendor/google/taimen/taimen-vendor.mk)


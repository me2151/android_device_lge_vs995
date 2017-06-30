$(call inherit-product, device/lge/vs995/full_vs995.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/xosp/config/common_full_phone.mk)
$(call inherit-product, vendor/xosp/config/xosp.mk)

# Overlays (inherit after vendor/cm to ensure we override it)
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_NAME := xosp_vs995

USE_CHROMIUM := true

ROOT_METHOD := magisk

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="v20" \
    PRODUCT_NAME="elsa_vzw_us" \
    BUILD_FINGERPRINT="lge/elsa_vzw/elsa:7.0/NRD90M/1628409164d39:user/release-keys" \
    PRIVATE_BUILD_DESC="elsa_vzw-user 7.0 NRD90M 1628409164d39 release-keys"

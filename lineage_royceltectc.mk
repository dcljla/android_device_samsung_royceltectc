# Initialise device config
$(call inherit-product, device/samsung/royceltectc/full_royceltectc.mk)


# Enhanced NFC
# $(call inherit-product, vendor/lineage/config/nfc_enhanced.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="royceltectc" \
    TARGET_DEVICE="royceltectc"

PRODUCT_NAME := lineage_royceltectc
PRODUCT_DEVICE := royceltectc

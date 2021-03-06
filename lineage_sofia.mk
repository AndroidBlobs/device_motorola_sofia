# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from sofia device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := sofia
PRODUCT_MANUFACTURER := motorola
PRODUCT_NAME := lineage_sofia
PRODUCT_MODEL := moto g power

PRODUCT_GMS_CLIENTID_BASE := android-motorola
TARGET_VENDOR := motorola
TARGET_VENDOR_PRODUCT_NAME := sofia
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="sofia_retail-user 10 QPM30.80-13-2 0f2407 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := motorola/sofia_retail/sofia:10/QPM30.80-13-2/0f2407:user/release-keys

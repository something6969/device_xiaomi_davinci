# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from davinci device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := xiaomi
PRODUCT_DEVICE := davinci
PRODUCT_MANUFACTURER := xiaomi
PRODUCT_NAME := lineage_davinci
PRODUCT_MODEL := Redmi K20

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
TARGET_VENDOR := xiaomi
TARGET_VENDOR_PRODUCT_NAME := davinci
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="aosp_davinci-userdebug 13 TQ2A.230305.008.C1 1679751408 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Xiaomi/davinci/davinci:13/TQ2A.230305.008.C1/1336:userdebug/release-keys

## Specify phone tech before including full_phone
# $(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := sturgeon

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/cm/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sturgeon
PRODUCT_NAME := cm_sturgeon
PRODUCT_BRAND := huawei
PRODUCT_MODEL := sturgeon
PRODUCT_MANUFACTURER := huawei

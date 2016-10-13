## Specify phone tech before including full_phone
# $(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := sturgeon

$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/cm/config/common.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := sturgeon
PRODUCT_NAME := cm_sturgeon
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := HUAWEI WATCH
PRODUCT_MANUFACTURER := HUAWEI

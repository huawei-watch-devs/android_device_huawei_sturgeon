$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product-if-exists, vendor/huawei/sturgeon/sturgeon-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/sturgeon/overlay

LOCAL_PATH := device/huawei/sturgeon

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.sturgeon:root/fstab.sturgeon \
    $(LOCAL_PATH)/rootdir/init.recovery.sturgeon.rc:root/init.recovery.sturgeon.rc

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_sturgeon
PRODUCT_DEVICE := sturgeon

PRODUCT_PACKAGES += \
    audio.a2dp.default \
    audio.primary.default \
    audio.r_submix.default \
    audio_policy.default \
    bluetooth.default \
    gralloc.default \
    gralloc.msm8226 \
    hwcomposer.msm8226 \
    keystore.default \
    local_time.default \
    memtrack.msm8226 \
    power.default \
    vibrator.default

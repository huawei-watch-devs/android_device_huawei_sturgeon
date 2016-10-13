$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product-if-exists, vendor/huawei/sturgeon/sturgeon-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/huawei/sturgeon/overlay

LOCAL_PATH := device/huawei/sturgeon

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := full_sturgeon
PRODUCT_DEVICE := sturgeon

# Audio configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/audio/audio_policy.conf:system/etc/audio_policy.conf \
    $(LOCAL_PATH)/audio/mixer_paths.xml:system/etc/mixer_paths.xml

# Bluetooth configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/bluetooth/bt_did.conf:system/etc/bluetooth/bt_did.conf \
    $(LOCAL_PATH)/bluetooth/bt_stack.conf:system/etc/bluetooth/bt_stack.conf \
    $(LOCAL_PATH)/bluetooth/bt_vendor.conf:system/etc/bluetooth/bt_vendor.conf

# Ramdisk stuff
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/fstab.sturgeon:root/fstab.sturgeon \
    $(LOCAL_PATH)/rootdir/init.sturgeon.rc:root/init.sturgeon.rc \
    $(LOCAL_PATH)/rootdir/init.sturgeon.usb.rc:root/init.sturgeon.usb.rc \
    $(LOCAL_PATH)/rootdir/init.recovery.sturgeon.rc:root/init.recovery.sturgeon.rc

# Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/permissions/android.hardware.audio_output.xml:system/etc/permissions/android.hardware.audio_output.xml \
    $(LOCAL_PATH)/permissions/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    $(LOCAL_PATH)/permissions/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    $(LOCAL_PATH)/permissions/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    $(LOCAL_PATH)/permissions/android.hardware.sensor.heartrate.xml:system/etc/permissions/android.hardware.sensor.heartrate.xml \
    $(LOCAL_PATH)/permissions/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    $(LOCAL_PATH)/permissions/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    $(LOCAL_PATH)/permissions/android.software.connectionservice.xml:system/etc/permissions/android.software.connectionservice.xml \
    $(LOCAL_PATH)/permissions/clockwork-system.xml:system/etc/permissions/clockwork-system.xml \
    $(LOCAL_PATH)/permissions/com.google.android.wearable.xml:system/etc/permissions/com.google.android.wearable.xml \
    $(LOCAL_PATH)/permissions/watch_features.xml:system/etc/permissions/watch_features.xml \
    $(LOCAL_PATH)/permissions/wearable_core_hardware.xml:system/etc/permissions/wearable_core_hardware.xml

# Necessary HW libs
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

# Misc config
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/config/clockwork.xml:system/etc/sysconfig/clockwork.xml

# Wifi configs
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/bcm4343s.txt:system/etc/wifi/bcm4343s.txt \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf

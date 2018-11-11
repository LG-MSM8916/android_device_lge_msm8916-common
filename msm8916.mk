#
# Copyright (C) 2015 The CyanogenMod Project
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_ENFORCE_RRO_TARGETS := \
    framework-res

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.midi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/handheld_core_hardware.xml

# System properties
-include $(LOCAL_PATH)/system_prop.mk

# Audio
PRODUCT_PACKAGES += \
    audio.primary.msm8916 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default

PRODUCT_PACKAGES += \
    libqcompostprocbundle \
    libqcomvisualizer \
    libqcomvoiceprocessing

PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio@2.0-service \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.broadcastradio@1.0-impl \
    android.hardware.soundtrigger@2.0-impl

# Audio configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    $(LOCAL_PATH)/configs/audio_platform_info.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_platform_info.xml \
    $(LOCAL_PATH)/configs/audio_policy.conf:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy.conf

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service \
    libbt-vendor

# Charger
PRODUCT_PACKAGES += \
    charger_res_images

# Connectivity Engine support
PRODUCT_PACKAGES += \
    libcnefeatureconfig

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \
    gralloc.msm8916 \
    hwcomposer.msm8916 \
    libgenlock \
    memtrack.msm8916

# QMI
PRODUCT_PACKAGES += \
    libtinyxml

# Filesystem
PRODUCT_PACKAGES += \
    e2fsck

# LineageActions
PRODUCT_PACKAGES += \
    LineageActions

# Jelly
PRODUCT_PACKAGES += \
    Jelly

# FM packages
#PRODUCT_PACKAGES += \
#    FMRadio \
#    libfmjni

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl

# Keystore
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl

# Keystore
ifneq ($(TARGET_PROVIDES_KEYMASTER),true)
PRODUCT_PACKAGES += \
    keystore.msm8916
endif

# Media
PRODUCT_PACKAGES += \
    libc2dcolorconvert

PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml \
    $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
    $(LOCAL_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml

# OMX
#PRODUCT_PACKAGES += \
#    libOmxAacEnc \
#    libOmxAmrEnc \
#    libOmxCore \
#    libOmxEvrcEnc \
#    libOmxQcelp13Enc \
#    libOmxVdec \
#    libOmxVenc \
#    libstagefrighthw

#PRODUCT_BOOT_JARS += \
#    qcmediaplayer

# Power HAL
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    android.hardware.power@1.0-service \
    power.qcom

# QMI
PRODUCT_PACKAGES += \
    libjson

# Qualcomm
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/dsi_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/data/dsi_config.xml \
    $(LOCAL_PATH)/configs/netmgr_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/data/netmgr_config.xml \
    $(LOCAL_PATH)/configs/qmi_config.xml:$(TARGET_COPY_OUT_VENDOR)/etc/data/qmi_config.xml

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    lights.msm8916

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-service \
    android.hardware.thermal@1.0-impl

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# GNSS HAL
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0 \
    android.hardware.gnss@1.0-impl \
    android.hardware.gnss@1.0-service

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

#Health
PRODUCT_PACKAGES += \
    android.hardware.health@1.0-service \
    android.hardware.health@1.0-impl

# Seccomp policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp_policy/mediacodec.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy

# HIDL
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/manifest.xml:$(TARGET_COPY_OUT_VENDOR)/manifest.xml

# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0 \
    android.hidl.manager@1.0-java

# Ramdisk
PRODUCT_PACKAGES += \
    init.qcom.rc \
    init.qcom.usb.rc \
    init.qcom.power.rc \
    init.recovery.qcom.rc \
    init.board.fm.rc \
    init.board.sensors.rc \
    init.baseband.sh \
    init.qcom.fm.sh \
    init.class_main.sh \
    ueventd.qcom.rc

# Debug
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.secure=0 \
    ro.adb.secure=0 \
    security.perf_harden=0

# QuickCircle Case App
#PRODUCT_PACKAGES += \
#    FlipFlap

# Releasetools script
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/check_features.sh:install/bin/check_features.sh

# RIL
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service \
    libxml2 \
    libqsap_sdk \
    librmnetctl

# LiveDisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@1.0-service-legacymm

# Context hub HAL
PRODUCT_PACKAGES += \
    android.hardware.contexthub@1.0-impl.generic \
    android.hardware.contexthub@1.0-service

# Camera
PRODUCT_PACKAGES += \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service \
    camera.msm8916 \
    camera.device@3.2-impl \
    camera.device@3.2-service \
    libbson \
    libshim_atomic \
    libc_util \
    libshims_camera \
    libshims_sensorlistener \
    Snap

# Camera properties
PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1 \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true

# USB
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Wifi
PRODUCT_PACKAGES += \
    hostapd \
    dhcpcd.conf \
    libwcnss_qmi \
    libwpa_client \
    wificond \
    wifilogd \
    wcnss_service \
    wpa_supplicant \
    wpa_supplicant.conf

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/hostapd.accept:$(TARGET_COPY_OUT_VENDOR)/etc/hostapd/hostapd.accept \
    $(LOCAL_PATH)/configs/hostapd.deny:$(TARGET_COPY_OUT_VENDOR)/etc/hostapd/hostapd.deny \
    $(LOCAL_PATH)/wcnss/p2p_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant.conf \
    $(LOCAL_PATH)/wcnss/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wcnss/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wcnss/WCNSS_qcom_cfg.ini:$(TARGET_COPY_OUT_VENDOR)/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    $(LOCAL_PATH)/wcnss/WCNSS_qcom_wlan_nv.bin:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/wcnss/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wcnss/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf \
    $(LOCAL_PATH)/wcnss/prima/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    $(LOCAL_PATH)/wcnss/prima/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    $(LOCAL_PATH)/wcnss/prima/WCNSS_qcom_wlan_nv_boot.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv_boot.bin

# Sensor HAL conf file
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sensors/hals.conf:$(TARGET_COPY_OUT_VENDOR)/etc/sensors/hals.conf

# LiveDisplay native
PRODUCT_PACKAGES += \
    libjni_livedisplay

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# HWADDRS
PRODUCT_PACKAGES += \
    hwaddrs

# loggy
PRODUCT_PACKAGES += \
    loggy.sh

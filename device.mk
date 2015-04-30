#
# Copyright (C) 2012 The Android Open-Source Project
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

#----------------------------------------------------------------------

# Also get non-open-source specific aspects if available
$(call inherit-product-if-exists, vendor/pantech/presto/presto-vendor.mk)

#----------------------------------------------------------------------

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Frameworks base fixes
#FRAMEWORKS_BASE_SUBDIRS += ../../$(LOCAL_PATH)/frameworks/

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Recovery
TARGET_RECOVERY_FSTAB = device/pantech/presto/fstab.qcom

#----------------------------------------------------------------------

LOCAL_KERNEL := $(LOCAL_PATH)/prebuilt/kernel/kernel

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

#----------------------------------------------------------------------

# Audio policy
#PRODUCT_COPY_FILES += $(LOCAL_PATH)/prebuilt/system/etc/audio_policy.conf:system/etc/audio_policy.conf

# Bluetooth configuration files
#PRODUCT_COPY_FILES += system/bluetooth/data/main.conf:system/etc/bluetooth/main.conf

# Bluetooth firmware BCM
PRODUCT_COPY_FILES += $(LOCAL_PATH)/prebuilt/system/bin/BCM43291A0_003.001.013.0141.0194.hcd:system/bin/BCM43291A0_003.001.013.0141.0194.hcd

# Bins
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/bin/mpdecision:system/bin/mpdecision
    $(LOCAL_PATH)/prebuilt/system/bin/qrngd:system/bin/qrngd

# GPS config
PRODUCT_COPY_FILES += device/common/gps/gps.conf_US_SUPL:system/etc/gps.conf

# IDC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/usr/idc/pantech_earjack.idc:system/usr/idc/pantech_earjack.idc \
    $(LOCAL_PATH)/prebuilt/system/usr/idc/qt602240_ts_input.idc:system/usr/idc/qt602240_ts_input.idc

# Keyboardy
PRODUCT_COPY_FILES += $(LOCAL_PATH)/prebuilt/system/usr/keylayout/tki_input.kl:system/usr/keylayout/tki_input.kl

# Media configuration
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/media/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/media/media_profiles.xml:system/etc/media_profiles.xml

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml

# Postrecoveryboot
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/root/sbin/postrecoveryboot.sh \
    $(LOCAL_PATH)/recovery/postrecoveryboot.sh:recovery/system/bin/postrecoveryboot.sh

# Ramdisk
PRODUCT_COPY_FILES += $(LOCAL_PATH)/rootdir/etc/init.presto.usb.rc:root/init.presto.usb.rc

# Recovery
#PRODUCT_COPY_FILES += $(LOCAL_PATH)/recovery.fstab:root/recovery.fstab

# Thermal configuration
PRODUCT_COPY_FILES += $(LOCAL_PATH)/prebuilt/system/etc/thermald.conf:system/etc/thermald.conf

#----------------------------------------------------------------------

# Below projects/packages with LOCAL_MODULEs will be used by
# PRODUCT_PACKAGES to build LOCAL_MODULEs that are tagged with
# optional tag, which will not be available on target unless
# explicitly list here. Where project corresponds to the vars here
# in CAPs.

#ANGLE
PRODUCT_PACKAGES += libangle

# Audio
PRODUCT_PACKAGES += audio.primary.msm8660

#AUDIO_HARDWARE
PRODUCT_PACKAGES += \
    audio.primary.default \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default

#AUDIO_POLICY
PRODUCT_PACKAGES += \
    audio_policy.default \
    audio_policy.conf

#AMPLOADER
PRODUCT_PACKAGES += amploader

#APPS
PRODUCT_PACKAGES += \
    QualcommSoftAP \
    TSCalibration

#BSON
PRODUCT_PACKAGES += libbson

#BT
PRODUCT_PACKAGES += \
    javax.btobex \
    libattrib_static \
    hcidump.sh

# Camera
#PRODUCT_PACKAGES += camera.presto

#C2DColorConvert
PRODUCT_PACKAGES += libc2dcolorconvert

# Charger
PRODUCT_PACKAGES += \
    charger \
    charger_res_images

#CONNECTIVITY
PRODUCT_PACKAGES += \
    libcnefeatureconfig \
    services-ext

#CRDA
PRODUCT_PACKAGES += \
    crda \
    regdbdump \
    regulatory.bin \
    linville.key.pub.pem \
    init.crda.sh

#CURL
PRODUCT_PACKAGES += \
    libcurl \
    curl

#DASH
PRODUCT_PACKAGES += \
    libdashplayer \
    qcmediaplayer

#E2FSPROGS
PRODUCT_PACKAGES += e2fsck

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    setup_fs

# Flatland
PRODUCT_PACKAGES += flatland

#FM
PRODUCT_PACKAGES += \
    qcom.fmradio \
    libqcomfm_jni

# FM Radio
#PRODUCT_PACKAGES += FmRadioReceiver

# fstab.qcom
PRODUCT_PACKAGES += fstab.qcom

#GPS
PRODUCT_PACKAGES += \
    gps.conf \
    gps.default \
    gps.mahimahi \
    libloc_adapter \
    libgps.utils \
    libloc_eng \
    libloc_api_v02

#HDMID
PRODUCT_PACKAGES += hdmid

#HOSTAPD
PRODUCT_PACKAGES += \
    hostapd \
    hostapd_cli \
    nt_password_hash \
    hlr_auc_gw \
    test-milenage \
    hostapd.conf \
    hostapd_default.conf \
    hostapd.deny \
    hostapd.accept

#INIT
PRODUCT_PACKAGES += \
    init.qcom.composition_type.sh \
    init.target.8x25.sh \
    init.qcom.mdm_links.sh \
    init.qcom.modem_links.sh \
    init.qcom.thermal_conf.sh \
    init.qcom.sensor.sh \
    init.target.rc \
    init.qcom.bt.sh \
    init.qcom.btdun.sh \
    init.qcom.coex.sh \
    init.qcom.fm.sh \
    init.qcom.early_boot.sh \
    init.qcom.post_boot.sh \
    init.qcom.syspart_fixup.sh \
    init.qcom.rc \
    init.qcom.sdio.sh \
    init.qcom.sh \
    init.qcom.class_core.sh \
    init.qcom.class_main.sh \
    init.qcom.wifi.sh \
    vold.fstab \
    init.qcom.ril.path.sh \
    init.qcom.ril.sh \
    init.qcom.usb.rc \
    init.qcom.usb.sh \
    usf_post_boot.sh \
    init.qcom.efs.sync.sh \
    ueventd.qcom.rc \
    init.ath3k.bt.sh \
    init.qcom.audio.sh

#IPROUTE2
PRODUCT_PACKAGES += \
    ip \
    libiprouteutil

#IPTABLES
PRODUCT_PACKAGES += \
    libiptc \
    libext \
    iptables

#KERNEL_TESTS
PRODUCT_PACKAGES += mm-audio-native-test

#KS
PRODUCT_PACKAGES += \
    ks \
    qcks \
    efsks

#LIB_NL
PRODUCT_PACKAGES += libnl_2

#LIB_XML2
PRODUCT_PACKAGES += libxml2

#LIBCAMERA
PRODUCT_PACKAGES += \
    libcamera \
    libmmcamera_interface \
    libmmcamera_interface2 \
    libmmjpeg_interface \
    mm-qcamera-app

#LIBCOPYBITP

#LIBGESTURES
PRODUCT_PACKAGES += \
    libgestures

#LIBGRALLOC
PRODUCT_PACKAGES += \
    gralloc.default \
    libmemalloc

#LIBLIGHTS

#LIBHWCOMPOSER

#LIBAUDIOPARAM -- Exposing AudioParameter as dynamic library for SRS TruMedia to work
PRODUCT_PACKAGES += libaudioparameter

#LIBAUDIORESAMPLER -- High-quality audio resampler
PRODUCT_PACKAGES += libaudio-resampler

#LIBOPENCOREHW
PRODUCT_PACKAGES += libopencorehw

#LIBOVERLAY
PRODUCT_PACKAGES += \
    liboverlay \
    overlay.default

#LIBGENLOCK
PRODUCT_PACKAGES += libgenlock

#LIBPERFLOCK
PRODUCT_PACKAGES += org.codeaurora.Performance

#LIBQCOMUI
#PRODUCT_PACKAGES += libQcomUI

#LIBQDUTILS
PRODUCT_PACKAGES += libqdutils

#LIBQDMETADATA
PRODUCT_PACKAGES += libqdMetaData

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    librs_jni

#LOC_API
PRODUCT_PACKAGES += libloc_api-rpc-qc

# Lpm
PRODUCT_PACKAGES += \
    lpm.rc \
    init.qcom.lpm_boot.sh

#MEDIA_PROFILES
PRODUCT_PACKAGES += media_profiles.xml

#MM_AUDIO
PRODUCT_PACKAGES += \
    libOmxAacDec \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxMp3Dec \
    libOmxQcelp13Enc \
    libOmxAc3HwDec

#MM_CORE
PRODUCT_PACKAGES += \
    libmm-omxcore \
    libOmxCore

#MM_VIDEO
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    liblasic \
    libOmxVdec \
    libOmxVenc \
    libOmxVidEnc \
    libstagefrighthw

# msm8660
PRODUCT_PACKAGES += \
    audio_policy.msm8660 \
    camera.msm8660 \
    copybit.msm8660 \
    gestures.msm8660 \
    gps.msm8660 \
    gralloc.msm8660 \
    hwcomposer.msm8660 \
    lights.msm8660 \
    memtrack.msm8660 \
    power.msm8660 \
    sensors.msm8660

#PPP
PRODUCT_PACKAGES += ip-up-vpn

# Presto Settings
PRODUCT_PACKAGES += AdvancedSettings

#PVOMX
PRODUCT_PACKAGES += \
    libqcomm_omx \
    01_qcomm_omx

# Ramdisk
PRODUCT_PACKAGES += \
    init.presto.rc \
    init.qcom.baseband.sh

# Sky_touch
PRODUCT_PACKAGES += libsky_touch

#SOFTAP
PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg \
    libqsap_sdk

#STK
PRODUCT_PACKAGES += Stk

# Torch
PRODUCT_PACKAGES += \
    Apollo \
    Torch

#TSLIB_EXTERNAL
PRODUCT_PACKAGES += \
    corgi \
    dejitter \
    inputraw \
    linear \
    variance \
    pthres \
    libtslib \
    tsprint \
    tstest \
    tsutils \
    tscalib \
    ts

#QRGND
PRODUCT_PACKAGES += \
    qrngd \
    qrngtest

# USB
PRODUCT_PACKAGES += com.android.future.usb.accessory

#VT_JNI
#PRODUCT_PACKAGES += libvt_jni

# Wallpapers
PRODUCT_PACKAGES += \
    Galaxy4 \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    PhaseBeam

# wifi/bt mac helper
PRODUCT_PACKAGES += \
    hwaddrs \
    liblog

#WLAN
PRODUCT_PACKAGES += prima_wlan.ko

#WPA
PRODUCT_PACKAGES += wpa_supplicant.conf

#ZLIB
PRODUCT_PACKAGES += \
    gzip \
    minigzip \
    libunz

#----------------------------------------------------------------------

# Device properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bt.bdaddr_path=/data/misc/bd_addr \
    ro.sf.lcd_density=240 \
    ro.vendor.extension_library=/system/lib/libqc-opt.so \
    telephony.lteOnGsmDevice=1

# We have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Common build properties
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    debug.composition.type=dyn \
    debug.egl.hw=1 \
    debug.enabletr=true \
    debug.sf.hw=1 \
    dev.pm.dyn_samplingrate=1 \
    debug.mdpcomp.maxlayer=3 \
    debug.mdpcomp.logs=0 \
    debug.hwc.dynThreshold=1.9 \
    lpa.decode=false

# Misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

#----------------------------------------------------------------------

# Wifi
$(call inherit-product, device/pantech/presto/wifi/device-bcm.mk)

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

#  Also get non-open-source vendor/pantech/msm8x60-common
$(call inherit-product-if-exists, vendor/pantech/msm8x60-common/msm8x60-common-vendor.mk)

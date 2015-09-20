#
# Copyright (C) 2012 The Android Open Source Project
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

USE_CAMERA_STUB := true

BOARD_VENDOR := pantech

# inherit from the proprietary version
-include vendor/pantech/presto/BoardConfigVendor.mk

# Headers path
TARGET_SPECIFIC_HEADER_PATH := device/pantech/presto/include

#----------------------------------------------------------------------

# Architecture
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := scorpion
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_USE_SCORPION_BIONIC_OPTIMIZATION := true

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Assert
TARGET_OTA_ASSERT_DEVICE := PantechP9070,presto

# Audio
BOARD_HAVE_PRESTO_AUDIO := true
BOARD_QCOM_TUNNEL_LPA_ENABLED := true
BOARD_QCOM_VOIP_ENABLED := true
#BOARD_USES_ALSA_AUDIO := false
BOARD_USES_LEGACY_ALSA_AUDIO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/pantech/presto/bluetooth/
BOARD_BLUEDROID_VENDOR_CONF := device/pantech/presto/bluetooth/vnd_bt.txt
TARGET_NEEDS_BLUETOOTH_INIT_DELAY := true

# Board info
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_PERSISTIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_USES_MMCUTILS := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8660_SURF

# Camera
BOARD_CAMERA_USE_MM_HEAP := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DNEEDS_VECTORIMPL_SYMBOLS
TARGET_DISABLE_ARM_PIE := true

# Camera wrapper
#COMMON_GLOBAL_CFLAGS += -DDISABLE_HW_ID_MATCH_CHECK

# File system
BOARD_BOOTIMAGE_PARTITION_SIZE          := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE      := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE        := 617193472    # 614400×1024   (mmcblk0p13)
BOARD_USERDATAIMAGE_PARTITION_SIZE      := 1073741824   # 1048576×1024  (mmcblk0p14)
BOARD_PERSISTIMAGE_PARTITION_SIZE       := 8388608      # 8192×1024     (mmcblk0p15)
BOARD_CACHEIMAGE_PARTITION_SIZE         := 178257920    # 174080×1024   (mmcblk0p16)
BOARD_TOMBSTONESIMAGE_PARTITION_SIZE    := 268435456    # 262144×1024   (mmcblk0p17)
BOARD_FLASH_BLOCK_SIZE                  := 131072       # (BOARD_KERNEL_PAGESIZE * 64)

# Flags
#COMMON_GLOBAL_CFLAGS += -DQCOM_ACDB_ENABLED
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

# FM radio
#BOARD_HAVE_FM_RADIO := true
#BOARD_HAVE_QCOM_FM := true
#COMMON_GLOBAL_CFLAGS += -DQCOM_FM_ENABLED

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm8660
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000
#TARGET_NO_RPC := true

# Graphics
BOARD_EGL_CFG := device/pantech/presto/prebuilt/system/lib/egl/egl.cfg
#COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK
TARGET_DISPLAY_USE_RETIRE_FENCE := true
#TARGET_NO_HW_VSYNC := true
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

# HDMI
TARGET_HAVE_HDMI_OUT := false
TARGET_QCOM_HDMI_OUT := false

# Kernel
BOARD_KERNEL_BASE               := 0x40200000
BOARD_KERNEL_CMDLINE            := console=ttyHSL0,115200,n8 androidboot.hardware=qcom kgsl.mmutype=gpummu vmalloc=400M loglevel=0  androidboot.selinux=permissive androidboot.baseband=csfb
BOARD_KERNEL_PAGESIZE           := 2048
BOARD_MKBOOTIMG_ARGS            := --ramdisk_offset 0x01400000
TARGET_KERNEL_CONFIG            := cyanogenmod_presto_defconfig
#TARGET_KERNEL_CUSTOM_TOOLCHAIN  := arm-eabi-4.4.3
TARGET_KERNEL_SOURCE            := kernel/pantech/msm8660-common
TARGET_PREBUILT_KERNEL          := device/pantech/presto/prebuilt/kernel/kernel

# Power/Charger
BOARD_CHARGER_RES := device/pantech/presto/charger
#BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
#BOARD_BATTERY_DEVICE_NAME := "battery"
TARGET_POWERHAL_VARIANT := cm

# QCOM hardware
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true

# Radio fixes
BOARD_RIL_CLASS := ../../../device/pantech/presto/ril/PantechQualcommUiccRIL.java

# Recovery
BOARD_CUSTOM_GRAPHICS := ../../../device/pantech/presto/recovery/graphics.c
TARGET_RECOVERY_UI_LIB := librecovery_ui_qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# SD Card info
BOARD_SDCARD_DEVICE_PRIMARY     := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY   := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE              := /dev/block/mmcblk1p1

# Target info
TARGET_DISPLAY_INSECURE_MM_HEAP := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL     := false
TARGET_NO_RADIOIMAGE := true
TARGET_PROVIDES_LIBLIGHT    := true
TARGET_QCOM_AUDIO_VARIANT   := caf
TARGET_QCOM_DISPLAY_VARIANT := caf
TARGET_QCOM_MEDIA_VARIANT   := caf
TARGET_USERIMAGES_USE_EXT4  := true
#TARGET_USES_OVERLAY := true
TARGET_USES_QCOM_BSP := true

# Time - Add support for kernel user helpers and gettimeofday() in bionic
#KERNEL_HAS_GETTIMEOFDAY_HELPER := true

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file

# Vold
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 28
BOARD_SUPPRESS_EMMC_WIPE := true

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Wifi
-include device/pantech/presto/wifi/board-bcm.mk

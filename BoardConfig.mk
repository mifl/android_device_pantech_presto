USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/pantech/presto/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
#TARGET_CPU_ABI := armeabi

TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_CPU_SMP := true




BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.hardware=qcom loglevel=0
BOARD_KERNEL_BASE := 0x40200000
BOARD_KERNEL_PAGE_SIZE := 0x00002048
BOARD_FORCE_RAMDISK_ADDRESS := 0x41500000

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00700000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00700000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x05a00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x14040000

BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/pantech/presto/kernel

BOARD_CUSTOM_GRAPHICS := ../../../device/pantech/presto/graphics.c
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USES_RECOVERY_CHARGEMODE := false
BOARD_HAS_LARGE_FILESYSTEM := true

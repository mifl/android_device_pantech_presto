# Wifi related defines

WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_AP := "/system/etc/wl/bcm43291_apsta.bin"
WIFI_DRIVER_FW_PATH_STA := "/system/etc/wl/bcm43291.bin"
WIFI_DRIVER_FW_PATH_P2P := "/system/etc/wl/bcm43291.bin"

WIFI_DRIVER_MODULE_NAME     := "bcmdhd"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/bcmdhd.ko"

WIFI_BAND := 802_11_ABG

BOARD_HAVE_PRESTO_WIFI := true
#
# Copyright (C) 2020 The LineageOS Project
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

LOCAL_PATH := device/samsung/royceltectc

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53
TARGET_NR_CPUS := 8
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Assert
TARGET_OTA_ASSERT_DEVICE := royceltectc

# Boot animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 768

# Bootloader"
TARGET_BOOTLOADER_BOARD_NAME := universal7420

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25602336 # This is the maximum known partition size, but it can be higher, so we just omit it
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

#TARGET_COPY_OUT_VENDOR := vendor
BOARD_SUPPRESS_SECURE_ERASE := true

# Audio
TARGET_AUDIOHAL_VARIANT := samsung

# Binder
TARGET_USES_64_BIT_BINDER := true


# Charger
WITH_LINEAGE_CHARGER := false
BACKLIGHT_PATH := /sys/devices/13900000.dsim/backlight/panel/brightness
BOARD_BATTERY_DEVICE_NAME := battery
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/power_supply/battery/batt_lp_charging
CHARGING_ENABLED_PATH := "/sys/class/power_supply/battery/batt_lp_charging"

# Device Tree
BOARD_USES_DT := true

# FIMG2D
BOARD_USES_SKIA_FIMGAPI := true
BOARD_USES_FIMGAPI_V5X := true

# Manifest
DEVICE_MANIFEST_FILE += device/samsung/royceltectc/manifest.xml

# NFC
BOARD_NFC_HAL_SUFFIX := universal7420

# Gralloc
BOARD_USES_EXYNOS5_COMMON_GRALLOC := true

##
## Samsung LSI Graphics
##
### Buffers
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true

# (G)SCALER
BOARD_USES_SCALER := true

# HDMI
BOARD_HDMI_INCAPABLE := true

# HWComposer
BOARD_USES_VPP := true
BOARD_HDMI_INCAPABLE := true

# HWCServices - requires framework support
# BOARD_USES_HWC_SERVICES := true

#  ION
TARGET_USES_ION := true

# Kernel
BOARD_KERNEL_CMDLINE := console=ram loglevel=4 androidboot.baseband=mdm2 sec_debug.level=0 sec_watchdog.sec_pet=5 androidboot.hardware=samsungexynos7420 androidboot.debug_level=0x4f4c sec_debug.enable_cp_debug=0 androidboot.cp_debug_level=0x55FF ess_setup=0x46000000 sec_tima_log=0x200000@0x48002000 sec_avc_log=0x40000@0x48204000 s3cfb.bootloaderfb=0xe2a00000 lcdtype=2237508 consoleblank=0 lpj=239616 vmalloc=384m sec_debug.reset_reason=9 ehci_hcd.park=3 oops=panic pmic_info=35 cordon=494d9a29f288f6427e03f99d332a97b9 connie=SM-W2016_CTC_CHN_b67bfb229e8bf53868cd1317af45882b fg_reset=0 androidboot.emmc_checksum=3 androidboot.boot_salescode= androidboot.odin_download=1 androidboot.bootloader=W2016KEU1AQC1 androidboot.selinux=enforcing androidboot.security_mode=1526595585 androidboot.hw_rev=5 androidboot.warranty_bit=1 androidboot.hmac_mismatch=0 androidboot.sec_atd.tty=/dev/ttySAC1 androidboot.serialno=041714e8a97a3803 snd_soc_core.pmdown_time=1000
#TARGET_PREBUILT_KERNEL := $(TARGET_KERNEL_SOURCE)/prebuilt/Image
   # PRODUCT_COPY_FILES += \
         $(TARGET_PREBUILT_KERNEL):kernel
#TARGET_PREBUILT_DT := $(TARGET_KERNEL_SOURCE)/prebuilt/dt.img
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
#BOARD_MKBOOTIMG_ARGS += --dt $(TARGET_PREBUILT_DT)
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x10008000 --ramdisk_offset 0x11000000 --tags_offset 0x10000100
BOARD_KERNEL_IMAGE_NAME := Image.gz
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
BOARD_KERNEL_SEPARATED_DT := true
#BOARD_CUSTOM_BOOTIMG := true
#BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
#TARGET_FORCE_PREBUILT_KERNEL := true
TARGET_KERNEL_SOURCE := kernel/samsung/royceltectc
TARGET_KERNEL_CONFIG := royceltectc_00_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
TARGET_LINUX_KERNEL_VERSION := 3.10

# Keymaster
BOARD_USES_TRUST_KEYMASTER := true

# Partitions
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 29360128
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 35651584
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3124019200
#BOARD_USERDATAIMAGE_PARTITION_SIZE := 59183980544 #64GB

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_SOC := exynos7420
TARGET_SLSI_VARIANT := bsp

# Properties
#TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery/fstab.samsungexynos7420
BOARD_HAS_LARGE_FILESYSTEM := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_SUPPRESS_SECURE_ERASE := true
BOARD_HAS_DOWNLOAD_MODE := true

# Samsung OpenMAX Video
BOARD_USE_STOREMETADATA := true
BOARD_USE_METADATABUFFERTYPE := true
BOARD_USE_DMA_BUF := true
BOARD_USE_ANB_OUTBUF_SHARE := true
BOARD_USE_IMPROVED_BUFFER := true
BOARD_USE_NON_CACHED_GRAPHICBUFFER := true
BOARD_USE_GSC_RGB_ENCODER := true
BOARD_USE_CSC_HW := false
BOARD_USE_QOS_CTRL := false
BOARD_USE_S3D_SUPPORT := true
BOARD_USE_TIMESTAMP_REORDER_SUPPORT := false
BOARD_USE_DEINTERLACING_SUPPORT := false
BOARD_USE_VP8ENC_SUPPORT := true
BOARD_USE_HEVCDEC_SUPPORT := true
BOARD_USE_HEVCENC_SUPPORT := true
BOARD_USE_HEVC_HWIP := false
BOARD_USE_VP9DEC_SUPPORT := true
BOARD_USE_VP9ENC_SUPPORT := false
BOARD_USE_CUSTOM_COMPONENT_SUPPORT := true
BOARD_USE_VIDEO_EXT_FOR_WFD_HDCP := false
BOARD_USE_VIDEO_EXT_FOR_WFD_DRM := false
BOARD_USE_SINGLE_PLANE_IN_DRM := false
BOARD_USES_DEFAULT_CSC_HW_SCALER := true

# Others
BOARD_USE_DEINTERLACING_SUPPORT := true
BOARD_USES_SCALER_M2M1SHOT := true
BOARD_USES_VDS_BGRA8888 := true
# BOARD_USES_VIRTUAL_DISPLAY := true  -- depends on platform changes
BOARD_USES_VIRTUAL_DISPLAY_DECON_EXT_WB := false
BOARD_VIRTUAL_DISPLAY_DISABLE_IDMA_G0 := false
BOARD_USES_CEC := true

# Use these flags if the board has a ext4 partition larger than 2gb
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true

# Seccomp filters
BOARD_SECCOMP_POLICY += device/samsung/royceltectc/seccomp

# Sepolicy
#BOARD_SEPOLICY_DIRS := $(LOCAL_PATH)/sepolicy

# Vendor separation
TARGET_COPY_OUT_VENDOR := system/vendor

#VNDK
BOARD_VNDK_VERSION := current

# WFD
BOARD_USES_WFD := true

# Wifi
BOARD_HAVE_SAMSUNG_WIFI          := true
BOARD_WLAN_DEVICE                := bcmdhd
WPA_SUPPLICANT_USE_HIDL          := true
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/system/vendor/etc/wifi/bcmdhd_sta.bin"
WIFI_DRIVER_FW_PATH_AP           := "/system/vendor/etc/wifi/bcmdhd_apsta.bin"
WIFI_BAND                        := 802_11_ABG

# inherit from the private proprietary version
-include vendor/samsung/royceltectc/BoardConfigVendor.mk

#
# Copyright (C) 2020 The Android Open Source Project
# Copyright (C) 2020 The TWRP Open Source Project
# Copyright (C) 2020 SebaUbuntu's TWRP device tree generator
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

DEVICE_PATH := device/samsung/royceltectc

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

#samsung
BOARD_CUSTOM_BOOTIMG_MK := device/samsung/royceltectc/bootimg.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := royceltectc

# Bootloader"
TARGET_NO_BOOTLOADER := true
TARGET_BOOTLOADER_BOARD_NAME := samsungexynos7420

# File systems
BOARD_HAS_LARGE_FILESYSTEM := true
#BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25602336 # This is the maximum known partition size, but it can be higher, so we just omit it
BOARD_SYSTEMIMAGE_PARTITION_TYPE := ext4
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_COPY_OUT_VENDOR := vendor

# Kernel
BOARD_KERNEL_CMDLINE := # Exynos doesn't take cmdline arguments from boot image
TARGET_PREBUILT_KERNEL := device/samsung/royceltectc/prebuilt/Image
TARGET_PREBUILT_DT := device/samsung/royceltectc/prebuilt/dt.img
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_MKBOOTIMG_ARGS += --ramdisk_offset $(BOARD_RAMDISK_OFFSET)
BOARD_MKBOOTIMG_ARGS += --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_MKBOOTIMG_ARGS += --dt $(TARGET_PREBUILT_DT)
TARGET_USES_UNCOMPRESSED_KERNEL := true
BOARD_KERNEL_IMAGE_NAME := Image
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
#TARGET_KERNEL_SOURCE := kernel/samsung/royceltectc
#TARGET_KERNEL_CONFIG := royceltectc_defconfig

# Platform
TARGET_BOARD_PLATFORM := exynos7420
TARGET_BOARD_PLATFORM_GPU := mali-t760mp8


# Hack: prevent anti rollback
#PLATFORM_SECURITY_PATCH := 2099-12-31
#VENDOR_SECURITY_PATCH := 2099-12-31
#PLATFORM_VERSION := 16.1.0

# TWRP Configuration
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
#TW_SCREEN_BLANK_ON_BOOT := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_USE_TOOLBOX := true
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_RECOVERY_PIXEL_FORMAT := "ABGR_8888"
TW_NO_USB_STORAGE := true
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_NO_EXFAT_FUSE := true
TW_MTP_DEVICE := "/dev/mtp_usb"

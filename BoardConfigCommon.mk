#
# Copyright (C) 2017 Fernando Von Arx <fer.vonarx@gmail.com>
# Copyright (C) 2017 Jesse Chan <cjx123@outlook.com>
# Copyright (C) 2017 Ivan Meler <i_ivan@windowslive.com>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#

LOCAL_PATH := device/samsung/hero-common

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Platform
BOARD_VENDOR := samsung
TARGET_BOARD_PLATFORM := exynos5
TARGET_SLSI_VARIANT := bsp
TARGET_SOC := exynos8890
TARGET_BOOTLOADER_BOARD_NAME := universal8890
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
USE_XML_AUDIO_POLICY_CONF := 1
BUILD_BROKEN_DUP_RULES := true
BOARD_ROOT_EXTRA_FOLDERS += efs cpefs
SELINUX_IGNORE_NEVERALLOWS := true
TARGET_POWERHAL_VARIANT := samsung
AUDIOSERVER_MULTILIB := 32

# DT2W
TARGET_TAP_TO_WAKE_NODE := /sys/android_touch/doubletap2wake

# Thermal hal
TARGET_THERMAL_HAL := slsi

# Audio HAL variant
TARGET_AUDIOHAL_VARIANT := samsung

# Binder
TARGET_USES_64_BIT_BINDER := true

# Use SDFat for exfat driver
TARGET_EXFAT_DRIVER := sdfat

# Security
VENDOR_SECURITY_PATCH := 2019-11-01

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# HIDL Manifest
DEVICE_MANIFEST_FILE := $(LOCAL_PATH)/configs/manifest.xml

# Image
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := hardware/samsung/mkbootimg.mk
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_CUSTOM_DTBTOOL := dtbhtoolExynos

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := device/samsung/hero-common/releasetools

# Properties
TARGET_SYSTEM_PROP := device/samsung/hero-common/system.prop

# Renderscript
BOARD_OVERRIDE_RS_CPU_VARIANT_32 := cortex-a53
BOARD_OVERRIDE_RS_CPU_VARIANT_64 := exynos-m1

# SELinux
BOARD_SEPOLICY_DIRS := device/samsung/hero-common/sepolicy

# SECComp filters
BOARD_SECCOMP_POLICY += device/samsung/hero-common/seccomp

# Inherit board specific defines
-include device/samsung/hero-common/board/*.mk

# Inherit from the proprietary version
-include vendor/samsung/hero-common/BoardConfigVendor.mk
-include vendor/seal/seal/BoardConfigVendor.mk

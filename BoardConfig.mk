# Copyright (C) 2009 The Android Open Source Project
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

# config.mk
#
# Product-specific compile-time definitions.
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/htc/espresso/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true

TARGET_NO_RECOVERY := true

TARGET_NO_KERNEL := true

TARGET_BOARD_PLATFORM := s5pc110
TARGET_BOARD_PLATFORM_GPU := POWERVR_SGX540_120

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

TARGET_BOOTLOADER_BOARD_NAME := galaxys

BOARD_USES_GENERIC_AUDIO := false

BOARD_KERNEL_CMDLINE := root=/dev/tfsr6 rootfstype=cramfs console=ttySAC2,115200 init=/linuxrc

BOARD_HAVE_BLUETOOTH := true
BT_USE_BTL_IF := true
BT_ALT_STACK := true

BRCM_BTL_INCLUDE_A2DP := true
BRCM_BT_USE_BTL_IF := true

BOARD_EGL_CFG := device/samsung/galaxys/egl.cfg

# # cat /proc/mtd
# dev:    size   erasesize  name
BOARD_BOOTIMAGE_PARTITION_SIZE := 
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 
# The size of a block that can be marked bad.
BOARD_FLASH_BLOCK_SIZE := 131072
	
TARGET_RECOVERY_UI_LIB := librecovery_ui_galaxys librecovery_ui_generic

TARGET_RECOVERY_UPDATER_LIBS += librecovery_updater_samsung

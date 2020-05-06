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

# Dalvik/Art
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.dex2oat_thread_count=4 \
    dalvik.vm.dex2oat-filter=speed \
    dalvik.vm.image-dex2oat-filter=speed

PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=192m \
    dalvik.vm.heapsize=512m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=512k \
    dalvik.vm.heapmaxfree=8m

# Enable lmkd logging
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lmk.log_stats=true

# Set lmkd options
PRODUCT_PRODUCT_PROPERTIES += \
    ro.lmk.low=1001 \
    ro.lmk.medium=800 \
    ro.lmk.critical=0 \
    ro.lmk.critical_upgrade=false \
    ro.lmk.upgrade_pressure=100 \
    ro.lmk.downgrade_pressure=100 \
    ro.lmk.kill_heaviest_task=true \
    ro.lmk.kill_timeout_ms=100 \
    ro.lmk.use_minfree_levels=true \

# Network
# Define default initial receive window size in segments.
PRODUCT_PROPERTY_OVERRIDES += \
    net.tcp.default_init_rwnd=60

# MMS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.telephony.mms_data_profile=5 \

# OMX
PRODUCT_PROPERTY_OVERRIDES += \
    persist.media.treble_omx=false \
    debug.sf.latch_unsignaled=1 \
    debug.sf.disable_backpressure=1

# SdcardFS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true \
    ro.sys.sdcardfs.legacy-mounting=1

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.direct.interface=p2p-dev-wlan0

# WiFi Display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1

# Smaug does not support ION needed for Codec 2.0
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.ccodec=0

# USB
PRODUCT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
    sys.usb.ffs.aio_compat=1


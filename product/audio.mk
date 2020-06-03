DEVICE_PATH := device/samsung/hero-common

# Configs
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/audio/audio_policy.conf:system/etc/audio_policy.conf \
	$(DEVICE_PATH)/configs/audio/mixer_paths_0.xml:system/etc/mixer_paths_0.xml \
	$(DEVICE_PATH)/configs/audio/audio_effects.xml:system/vendor/etc/audio_effects.xml

# Packages
PRODUCT_PACKAGES += \
	audio.a2dp.default \
	audio.usb.default \
	audio.r_submix.default \
	audio.primary.universal8890_32 \
	android.hardware.audio@2.0-impl \
	android.hardware.audio@2.0-service \
	android.hardware.audio.effect@2.0-impl \
	android.hardware.audio.effect@2.0-service \
	android.hardware.soundtrigger@2.1-impl \
	android.hardware.soundtrigger@2.1-service \
	libtinycompress

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	af.fast_track_multiplier=1 \
	audio_hal.force_voice_config=wide

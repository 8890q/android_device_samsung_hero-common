DEVICE_PATH := device/samsung/hero-common

# Packages
PRODUCT_PACKAGES += \
	libion_exynos \
	libfimg \
	android.hardware.graphics.allocator@2.0-impl \
	android.hardware.graphics.allocator@2.0-service \
	android.hardware.graphics.composer@2.1-impl \
	android.hardware.graphics.mapper@2.0-impl-2.1 \
	libhwc2on1adapter

# RenderScript HAL
PRODUCT_PACKAGES += \
	android.hardware.renderscript@1.0-impl

# DRM
PRODUCT_PACKAGES += \
	android.hardware.drm@1.0-impl

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.bq.gpu_to_cpu_unsupported=1 \
	ro.opengles.version=196610 \
	ro.sf.lcd_density=560 \
	debug.hwc.winupdate=1 \
	debug.hwc.otf=1

# Additional native libraries
PRODUCT_COPY_FILES += \
	$(DEVICE_PATH)/configs/public.libraries.txt:system/vendor/etc/public.libraries.txt

# Packages
PRODUCT_PACKAGES += \
	fingerprint.exynos5 \
	android.hardware.biometrics.fingerprint@2.1-service

# Permissions
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.hardware.fingerprint.xml:system/etc/permissions/android.hardware.fingerprint.xml

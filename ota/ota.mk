PRODUCT_PACKAGES += \
    ota
	
PRODUCT_COPY_FILES += \
    device/wileyfox/crackling/ota/lib/libbypass.so:system/lib/libbypass.so \
	device/wileyfox/crackling/ota/lib64/libbypass.so:system/lib64/libbypass.so \
	device/wileyfox/crackling/ota/ota.apk:system/priv-app/ota/ota.apk
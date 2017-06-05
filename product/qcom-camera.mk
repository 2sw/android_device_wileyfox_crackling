# Camera
PRODUCT_PACKAGES += \
    camera.msm8916 \
    libmm-qcamera \
    Snap

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.cpp.duplication=false \
    persist.camera.hal.debug.mask=0

# Disable the thumbnail encoding in order to reduce the power
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.tn.disable=1

# System property for PIP support
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.pip.support=0

# Disable all camera debug
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.hal.debug.mask=0
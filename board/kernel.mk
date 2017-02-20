# Kernel
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
TARGET_KERNEL_SOURCE := kernel/wilefox/crackling
TARGET_KERNEL_CONFIG := lineageos_crackling_defconfig
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/aarch64/aarch64-linux-android-4.9-google/prebuilt/linux-x86_64/bin/
TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-

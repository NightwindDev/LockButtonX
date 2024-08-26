TARGET := iphone:clang:latest:12.2
ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = LockButtonX

LockButtonX_FILES = $(shell find Sources/LockButtonX -name '*.swift') $(shell find Sources/LockButtonXC -name '*.m')
LockButtonX_SWIFTFLAGS = -ISources/LockButtonXC/include
LockButtonX_PRIVATE_FRAMEWORKS = SpringBoard
LockButtonX_CFLAGS = -fobjc-arc -ISources/LockButtonXC/include

include $(THEOS_MAKE_PATH)/tweak.mk


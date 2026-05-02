ARCHS = arm64
TARGET = iphone:clang:latest:14.0

INSTALL_TARGET_PROCESSES = FreeFire
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = aimlock
aimlock_FILES = Tweak.xm
aimlock_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

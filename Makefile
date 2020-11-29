ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = MobileSafari

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SafariFind

SafariFind_FILES = $(wildcard Logos/*.x)
SafariFind_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
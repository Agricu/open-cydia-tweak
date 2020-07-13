ifeq ($(DEBUG), 0)
PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)
endif
ARCHS = arm64 arm64e armv7s armv7

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = FQNOAD

FQNOAD_FILES = Tweak.xm ToastView.m
FQNOAD_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk

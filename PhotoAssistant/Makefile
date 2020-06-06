ifeq ($(DEBUG), 0)
PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)
endif
INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = mobileslideshow

ARCHS = arm64 arm64e armv7s

mobileslideshow_FILES = Tweak.xm PhotoInfo.xm
mobileslideshow_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += mobileslideshow
include $(THEOS_MAKE_PATH)/aggregate.mk

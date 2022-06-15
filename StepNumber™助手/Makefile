include $(THEOS)/makefiles/common.mk

ifeq ($(DEBUG), 0)
PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)
endif

TARGET = iphone:clang:14.0:8.0

ARCHS = arm64 arm64e armv7 armv7s

TWEAK_NAME = StepNumber
StepNumber_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += StepNumber
include $(THEOS_MAKE_PATH)/aggregate.mk

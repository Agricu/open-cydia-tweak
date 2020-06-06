PACKAGE_VERSION = 1.0

include $(THEOS)/makefiles/common.mk
ARCHS = arm64 arm64e armv7s
TWEAK_NAME = cydiaAssistant
cydiaAssistant_FILES = dismiss.xm Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += cydia
include $(THEOS_MAKE_PATH)/aggregate.mk

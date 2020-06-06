include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = mobileslideshow

mobileslideshow_FILES = mobileslideshowRootListController.m
mobileslideshow_INSTALL_PATH = /Library/PreferenceBundles
mobileslideshow_FRAMEWORKS = UIKit
mobileslideshow_PRIVATE_FRAMEWORKS = Preferences
mobileslideshow_CFLAGS = -fobjc-arc
ARCHS = arm64 arm64e armv7s
include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/mobileslideshow.plist$(ECHO_END)

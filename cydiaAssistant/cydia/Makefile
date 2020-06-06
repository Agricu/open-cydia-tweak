include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = cydia

cydia_FILES = cydiaRootListController.m
cydia_INSTALL_PATH = /Library/PreferenceBundles
cydia_FRAMEWORKS = UIKit
cydia_PRIVATE_FRAMEWORKS = Preferences
cydia_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/cydia.plist$(ECHO_END)

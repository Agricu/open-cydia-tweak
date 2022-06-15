include $(THEOS)/makefiles/common.mk

ifeq ($(DEBUG), 0)
PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)
endif

TARGET = iphone:clang:14.0:8.0

ARCHS = arm64 arm64e armv7 armv7s

BUNDLE_NAME = StepNumber
StepNumber_FILES = StepNumber.m
StepNumber_INSTALL_PATH = /Library/PreferenceBundles
StepNumber_FRAMEWORKS = UIKit
StepNumber_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/StepNumber.plist$(ECHO_END)

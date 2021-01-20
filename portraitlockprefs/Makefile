TARGET := iphone:clang:13.5:7.1

include theos/makefiles/common.mk

BUNDLE_NAME = PortraitLock
PortraitLock_FILES = PortraitLock.mm
PortraitLock_INSTALL_PATH = /Library/PreferenceBundles
PortraitLock_FRAMEWORKS = UIKit
PortraitLock_PRIVATE_FRAMEWORKS = Preferences

ADDITIONAL_CFLAGS = -Wno-deprecated-declarations

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/PortraitLock.plist$(ECHO_END)

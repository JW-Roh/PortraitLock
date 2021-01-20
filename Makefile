TARGET := iphone:clang:13.5:7.1

ARCHS = armv7 armv7s arm64 arm64e

THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 2222
FINALPACKAGE = 0

include theos/makefiles/common.mk

ADDITIONAL_CFLAGS = -Wno-deprecated-declarations -Wno-unused-function -Wno-unused-variable

TWEAK_NAME = PortraitLock
PortraitLock_FILES = Tweak.xm
PortraitLock_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

SUBPROJECTS += portraitlockprefs
include $(THEOS_MAKE_PATH)/aggregate.mk

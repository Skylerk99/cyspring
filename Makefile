GO_EASY_ON_ME = 1
export TARGET=iphone:clang:latest
export ARCHS=armv7 arm64
THEOS_DEVICE_IP = 192.168.1.3

DEBUG=0
FINALPACKAGE=1

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CySpring
CySpring_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Cydia"
SUBPROJECTS += cylisten
include $(THEOS_MAKE_PATH)/aggregate.mk

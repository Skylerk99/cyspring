GO_EASY_ON_ME = 1
export TARGET=iphone:clang:latest
export ARCHS=armv7 arm64
THEOS_DEVICE_IP = 192.168.1.3

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = CyListen
CyListen_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Cydia"

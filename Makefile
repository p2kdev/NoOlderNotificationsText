include $(THEOS)/makefiles/common.mk

export ARCHS = arm64 arm64e
export TARGET = iphone:clang:12.1.2:12.0

TWEAK_NAME = NoOlderNotificationsText
NoOlderNotificationsText_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"

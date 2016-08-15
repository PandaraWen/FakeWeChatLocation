THEOS_DEVICE_IP = 192.168.31.222
ARCH = arm64
TARGET = iphone:9.3

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = WeChatFakeLocation
WeChatFakeLocation_FILES = Tweak.xm FakeWeChatLocationManager.m
WeChatFakeLocation_FRAMEWORKS = UIKit CoreLocation

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WeChat"

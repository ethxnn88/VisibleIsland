TARGET := iphone:clang:latest:7.0
INSTALL_TARGET_PROCESSES = backboardd aggregated

THEOS_DEVICE_IP=localhost
THEOS_DEVICE_PORT=2222
THEOS_PACKAGE_SCHEME=roothide

ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = VisibleIsland

VisibleIsland_FILES = Tweak.xm 
VisibleIsland_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += visibleislandprefs
include $(THEOS_MAKE_PATH)/aggregate.mk
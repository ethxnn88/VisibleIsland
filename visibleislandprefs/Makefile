TARGET := iphone:clang:latest:12.0

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = VisibleIslandPrefs

ARCHS = arm64 arm64e

VisibleIslandPrefs_FILES = VISRootListController.m
VisibleIslandPrefs_FRAMEWORKS = UIKit
VisibleIslandPrefs_PRIVATE_FRAMEWORKS = Preferences
VisibleIslandPrefs_INSTALL_PATH = /Library/PreferenceBundles
VisibleIslandPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

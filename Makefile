TARGET := iphone:clang:latest:7.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MostashUltra

# يجمع كل ملفات المشروع تلقائيًا
MostashUltra_FILES = $(wildcard *.xm) $(wildcard *.m) $(wildcard *.mm)
MostashUltra_CFLAGS = -fobjc-arc

MostashUltra_FRAMEWORKS = UIKit Foundation

include $(THEOS_MAKE_PATH)/tweak.mk

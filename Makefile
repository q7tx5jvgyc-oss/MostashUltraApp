TARGET := iphone:clang:latest:7.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

LIBRARY_NAME = MostashUltra

MostashUltra_FILES = $(wildcard *.xm) $(wildcard *.m) $(wildcard *.mm)
MostashUltra_CFLAGS = -fobjc-arc

MostashUltra_FRAMEWORKS = UIKit Foundation

include $(THEOS_MAKE_PATH)/library.mk

TARGET := iphone:clang:latest:12.0
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = MostashUltra

MostashUltra_FILES = Tweak.xm
MostashUltra_CFLAGS = -fobjc-arc

# ❌ مهم: لا تربط Substrate في CI
# MostashUltra_LIBRARIES = substrate   ❌ احذفه

include $(THEOS_MAKE_PATH)/tweak.mk

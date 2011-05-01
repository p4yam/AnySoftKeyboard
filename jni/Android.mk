LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_C_INCLUDES += $(LOCAL_PATH)/src

LOCAL_SRC_FILES := \
	backward/com_anysoftkeyboard_dictionaries_BinaryDictionary.cpp \
	backward/dictionary.cpp \
	jni/com_anysoftkeyboard_dictionaries_RawBinaryDictionary.cpp \
	src/dictionary.cpp \
	src/char_utils.cpp

ifneq ($(TARGET_ARCH),x86)
LOCAL_NDK_VERSION := 4
LOCAL_SDK_VERSION := 8
endif

LOCAL_MODULE := anysoftkey_jni

LOCAL_MODULE_TAGS := user

include $(BUILD_SHARED_LIBRARY)

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)


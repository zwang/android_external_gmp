LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libgmp
$(info TARGET_ARCH     = $(TARGET_ARCH))
$(info TARGET_ARCH_VARIANT = $(TARGET_ARCH_VARIANT))
$(info TARGET_ABI      = $(TARGET_ABI))
# possible future inclusion of the NEON shared object?
LOCAL_SRC_FILES :=  $(TARGET_ARCH_VARIANT)/libgmp.so
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/$(TARGET_ARCH_VARIANT)
$(info LOCAL_EXPORT_C_INCLUDES     = $(LOCAL_EXPORT_C_INCLUDES))
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so
include $(BUILD_PREBUILT)


include $(CLEAR_VARS)
LOCAL_MODULE := libgmpxx
# possible future inclusion of the NEON shared object?
LOCAL_SRC_FILES :=  $(TARGET_ARCH_VARIANT)/libgmpxx.so
LOCAL_EXPORT_C_INCLUDE_DIRS := $(LOCAL_PATH)/$(TARGET_ARCH_VARIANT)

LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_MODULE_SUFFIX := .so

#LOCAL_COPY_HEADERS_TO := libgmp
#LOCAL_COPY_HEADERS := $(TARGET_ARCH_VARIANT)/gmp.h

include $(BUILD_PREBUILT)

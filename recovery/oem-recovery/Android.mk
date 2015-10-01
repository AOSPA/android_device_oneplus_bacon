ifeq ($(TARGET_RECOVERY_UPDATER_LIBS),librecovery_updater_msm)

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES := bootable/recovery \
		    system/core/libsparse \
		    $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_SRC_FILES := gpt-utils.c dec.c oem-updater.c
LOCAL_ADDITIONAL_DEPENDENCIES := $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
LOCAL_MODULE := librecovery_updater_msm
include $(BUILD_STATIC_LIBRARY)

endif

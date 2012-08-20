LOCAL_PATH := $(call my-dir)
ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),marvel)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif

ifeq 
($(TARGET_BOOTLOADER_BOARD_NAME),marvelc)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif

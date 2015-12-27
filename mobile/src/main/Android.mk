LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := tests
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/system/app

LOCAL_SRC_FILES += $(call all-java-files-under, java)

LOCAL_RESOURCE_DIR := $(addprefix $(LOCAL_PATH)/, res) \
    $(LOCAL_PATH)/libs/CastCompanionLibrary-debug-2.6.1/res \
    $(LOCAL_PATH)/libs/com.google.android.gms/play-services-base/8.3.0/res \
    $(LOCAL_PATH)/libs/com.google.android.gms/play-services-basement/8.3.0/res \
    $(LOCAL_PATH)/libs/com.google.android.gms/play-services-cast/8.3.0/res \
    $(LOCAL_PATH)/libs/wearable/1.3.0/res \
    $(TOP)/frameworks/support/design/res \
    $(TOP)/frameworks/support/v7/appcompat/res \
    $(TOP)/frameworks/support/v7/cardview/res \
    $(TOP)/frameworks/support/v7/mediarouter/res \
    $(TOP)/frameworks/support/v7/recyclerview/res \
    $(TOP)/frameworks/support/v17/leanback/res

LOCAL_STATIC_JAVA_LIBRARIES := \
    android-common \
    android-support-design \
    android-support-v4 \
    android-support-v7-appcompat \
    android-support-v7-cardview \
    android-support-v7-palette \
    android-support-v7-mediarouter \
    android-support-v7-recyclerview \
    android-support-v17-leanback \
    castcompanionlibrary \
    playservicesbase \
    playservicesbasement \
    playservicescast \
    showcaseview \
    wear

LOCAL_AAPT_FLAGS := \
    --auto-add-overlay \
    --extra-packages com.google.android.libraries.cast.companionlibrary \
    --extra-packages com.google.android.gms \
    --extra-packages android.support.design \
    --extra-packages android.support.v4 \
    --extra-packages android.support.v7.appcompat \
    --extra-packages android.support.v7.cardview \
    --extra-packages android.support.v7.palette \
    --extra-packages android.support.v7.mediarouter \
    --extra-packages android.support.v7.recyclerview \
    --extra-packages android.support.v17.leanback \
    --extra-packages com.google.android.support.wearable

LOCAL_PACKAGE_NAME := UniversalMusicPlayer
LOCAL_OVERRIDES_PACKAGES := Music

LOCAL_PROGUARD_FLAGS := -include $(LOCAL_PATH)/proguard.cfg

include $(BUILD_PACKAGE)

include $(CLEAR_VARS)

LOCAL_PREBUILT_STATIC_JAVA_LIBRARIES := \
    castcompanionlibrary:../../libs/CastCompanionLibrary-debug-2.6.1.aar \
    playservicesbase:libs/com.google.android.gms/play-services-base/8.3.0/jars/classes.jar \
    playservicesbasement:libs/com.google.android.gms/play-services-basement/8.3.0/jars/classes.jar \
    playservicescast:libs/com.google.android.gms/play-services-cast/8.3.0/jars/classes.jar \
    showcaseview:libs/ShowcaseView-5.4.1.aar \
    wear:libs/wearable/1.3.0/jars/classes.jar

include $(BUILD_MULTI_PREBUILT)

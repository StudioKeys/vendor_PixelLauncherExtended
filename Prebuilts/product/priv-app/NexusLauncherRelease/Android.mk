#
# Copyright (C) 2022 Ardjlon
# Copyright (C) 2022 Team Files
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := NexusLauncherReleaseMod
ifeq ($(PIXEL_LAUNCHER_VARIANT),extragrids)
LOCAL_SRC_FILES := NexusLauncherRelease10.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),glance1)
LOCAL_SRC_FILES := NexusLauncherRelease01.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),glance2)
LOCAL_SRC_FILES := NexusLauncherRelease02.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),fullmod1)
LOCAL_SRC_FILES := NexusLauncherRelease11.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),fullmod2)
LOCAL_SRC_FILES := NexusLauncherRelease12.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),nomod)
LOCAL_SRC_FILES := NexusLauncherRelease00.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),extragridsz)
LOCAL_SRC_FILES := NexusLauncherRelease10z.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),glance1z)
LOCAL_SRC_FILES := NexusLauncherRelease01z.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),glance2z)
LOCAL_SRC_FILES := NexusLauncherRelease02z.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),fullmod1z)
LOCAL_SRC_FILES := NexusLauncherRelease11z.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),fullmod2z)
LOCAL_SRC_FILES := NexusLauncherRelease12z.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),nomodz)
LOCAL_SRC_FILES := NexusLauncherRelease00z.apk
else
$(error Not set PIXEL_LAUNCHER_VARIANT, read more in vendor/PixelLauncherExtended/codename.txt)
endif
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

# Copyright (C) 2023 Team Files
# Copyright (C) 2022 Ardjlon
# Copyright (C) 2023 Team Files
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
ifeq ($(PIXEL_LAUNCHER_VARIANT),glance10)
LOCAL_SRC_FILES := NexusLauncherRelease10.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),glance20)
LOCAL_SRC_FILES := NexusLauncherRelease20.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),glance11)
LOCAL_SRC_FILES := NexusLauncherRelease11.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),glance21)
LOCAL_SRC_FILES := NexusLauncherRelease21.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),glance12)
LOCAL_SRC_FILES := NexusLauncherRelease12.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),glance22)
LOCAL_SRC_FILES := NexusLauncherRelease22.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),nomod0)
LOCAL_SRC_FILES := NexusLauncherRelease00.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),nomod1)
LOCAL_SRC_FILES := NexusLauncherRelease01.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),nomod2)
LOCAL_SRC_FILES := NexusLauncherRelease02.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),nomod3)
LOCAL_SRC_FILES := NexusLauncherRelease03.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),glance13)
LOCAL_SRC_FILES := NexusLauncherRelease13.apk
else ifeq ($(PIXEL_LAUNCHER_VARIANT),glance23)
LOCAL_SRC_FILES := NexusLauncherRelease23.apk
else
$(error Not set PIXEL_LAUNCHER_VARIANT, read more in vendor/PixelLauncherExtended/codename.txt)
endif
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_CLASS := APPS
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
include $(BUILD_PREBUILT)

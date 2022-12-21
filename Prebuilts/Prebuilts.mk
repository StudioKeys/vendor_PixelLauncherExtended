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

# Copy permission files
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/PixelLauncherExtended/Prebuilts/product/etc/default-permissions,$(TARGET_COPY_OUT_PRODUCT)/etc/default_permissions)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/PixelLauncherExtended/Prebuilts/product/etc/permissions,$(TARGET_COPY_OUT_PRODUCT)/etc/permissions)

ifeq ($(filter $(modules-get-list),$(preferred_apps_google)),)
PRODUCT_COPY_FILES += \
    vendor/PixelLauncherExtended/Prebuilts/product/etc/sysconfig/com.google.android.apps.nexuslauncher-hiddenapi-package-whitelist.xml:$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig/pixel-launcher-hiddenapi-package-whitelist.xml
    $(warning Excluding some permissions because exists)
else
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/PixelLauncherExtended/Prebuilts/product/etc/preferred-apps,$(TARGET_COPY_OUT_PRODUCT)/etc/preferred-apps)
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/PixelLauncherExtended/Prebuilts/product/etc/sysconfig,$(TARGET_COPY_OUT_PRODUCT)/etc/sysconfig)
endif
PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,vendor/PixelLauncherExtended/Prebuilts/system_ext/etc,$(TARGET_COPY_OUT_SYSTEM_EXT)/etc)

# Properties
PRODUCT_SYSTEM_PROPERTIES += \
    ro.boot.vendor.overlay.static=false

# Build apps
PRODUCT_PACKAGES += \
   NexusLauncherReleaseMod \
   PixelRecentsProvider \
   PixelThemesStubMod \
   PixelThemesStub2022_and_newer \
   QuickAccessWalletMod \
   Remover \
   ThemedIconsOverlay \
   WallpaperPickerGoogleReleaseMod

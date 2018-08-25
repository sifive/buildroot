################################################################################
#
# thebluesystem-sdk
#
################################################################################

THEBLUESYSTEM_SDK_VERSION = 1.0
THEBLUESYSTEM_SDK_SOURCE = master.zip
THEBLUESYSTEM_SDK_SITE = https://github.com/TheBlueSystem/SDK/archive
THEBLUESYSTEM_SDK_LICENSE = Apache-2.0
THEBLUESYSTEM_SDK_DEPENDENCIES = thebluesystem-userspace xlib_libX11 host-pkgconf

define THEBLUESYSTEM_SDK_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define THEBLUESYSTEM_SDK_INSTALL_STAGING_CMDS
	$(INSTALL) -D -m 0755 $(@D)/bin/sdk.so $(STAGING_DIR)/usr/lib/libthebluesystem-sdk.so
endef

define THEBLUESYSTEM_SDK_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/bin/sdk.so $(TARGET_DIR)/usr/lib/libthebluesystem-sdk.so
endef

$(eval $(generic-package))

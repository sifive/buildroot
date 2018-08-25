################################################################################
#
# thebluesystem-userspace
#
################################################################################

THEBLUESYSTEM_USERSPACE_VERSION = 1.0
THEBLUESYSTEM_USERSPACE_SOURCE = master.zip
THEBLUESYSTEM_USERSPACE_SITE = https://github.com/TheBlueSystem/Userspace/archive
THEBLUESYSTEM_USERSPACE_LICENSE = Apache-2.0
THEBLUESYSTEM_USERSPACE_DEPENDENCIES = xlib_libX11 host-pkgconf

define THEBLUESYSTEM_USERSPACE_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D) all
endef

define THEBLUESYSTEM_USERSPACE_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0755 $(@D)/bin/userspace.bin $(TARGET_DIR)/usr/bin/thebluesystem-userspace
endef

$(eval $(generic-package))

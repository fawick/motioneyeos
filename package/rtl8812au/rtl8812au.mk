################################################################################
#
# rtl8812au
#
################################################################################

RTL8812AU_VERSION = 3e450d16d9c3e730c67b2a541520e85f664fd101
RTL8812AU_SITE = $(call github,gnab,rtl8812au,$(RTL8812AU_VERSION))
RTL8812AU_LICENSE = GPL-2.0
RTL8812AU_LICENSE_FILES = LICENSE

RTL8812AU_MODULE_MAKE_OPTS = \
	CONFIG_RTL8812AU_8812AU=m \
	KVER=$(LINUX_VERSION_PROBED) \
	USER_EXTRA_CFLAGS="-DCONFIG_$(call qstrip,$(BR2_ENDIAN))_ENDIAN \
		-Wno-error"

$(eval $(kernel-module))
$(eval $(generic-package))

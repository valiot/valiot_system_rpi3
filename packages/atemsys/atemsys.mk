################################################################################
#
# atemsys
#
################################################################################

ATEMSYS_VERSION = 1.3.13
ATEMSYS_SITE = $(NERVES_DEFCONFIG_DIR)/packages/atemsys/source
ATEMSYS_SITE_METHOD = local

$(eval $(kernel-module))
$(eval $(generic-package))

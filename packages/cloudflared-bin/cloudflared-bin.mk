#############################################################
#
# CLOUDFLARED_BIN
#
#############################################################

CLOUDFLARED_BIN_VERSION 		:= 2025.2.1
CLOUDFLARED_SOURCE 				:= cloudflared-linux-arm
CLOUDFLARED_BIN_SITE 			:= https://github.com/cloudflare/cloudflared/releases/download/$(CLOUDFLARED_BIN_VERSION)

#There is no tarball package, it is a raw binary
define CLOUDFLARED_BIN_EXTRACT_CMDS
endef

define CLOUDFLARED_BIN_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 755 $(CLOUDFLARED_BIN_DL_DIR)/$(CLOUDFLARED_BIN_SOURCE) $(TARGET_DIR)/usr/bin/cloudflared
endef

$(eval $(generic-package))
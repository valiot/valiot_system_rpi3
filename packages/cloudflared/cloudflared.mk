#############################################################
#
# CLOUDFLARED
#
#############################################################

CLOUDFLARED_VERSION 		:= 2023.3.1
CLOUDFLARED_SOURCE 			:= cloudflared-linux-arm
CLOUDFLARED_SITE 			:= https://github.com/cloudflare/cloudflared/releases/download/$(CLOUDFLARED_VERSION)

#There is no tarball package, it is a raw binary
define CLOUDFLARED_EXTRACT_CMDS
endef

define CLOUDFLARED_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 755 $(CLOUDFLARED_DL_DIR)/$(CLOUDFLARED_SOURCE) $(TARGET_DIR)/usr/bin/cloudflared
endef

$(eval $(generic-package))
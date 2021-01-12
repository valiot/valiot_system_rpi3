#############################################################
#
# CLOUDFLARED
#
#############################################################

CLOUDFLARED_VERSION 		:= 2020.11.11
CLOUDFLARED_SOURCE 		:= cloudflared-linux-armv6
CLOUDFLARED_SITE 			:= https://github.com/cloudflare/cloudflared/releases/download/$(CLOUDFLARED_VERSION)
CLOUDFLARED_LICENSE 		:= CloudFlare
CLOUDFLARED_LICENSE_FILES 	:= LICENSE

#There is no tarball package, it is a raw binary
define CLOUDFLARED_EXTRACT_CMDS
endef

define CLOUDFLARED_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 755 $(CLOUDFLARED_DL_DIR)/$(CLOUDFLARED_SOURCE) $(TARGET_DIR)/usr/bin/cloudflared
endef

$(eval $(generic-package))
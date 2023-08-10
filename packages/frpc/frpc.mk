#############################################################
#
# frpc
#
#############################################################

FRPC_VERSION 		:= 0.51.2
FRPC_SOURCE 		:= frp_${FRPC_VERSION}_linux_arm.tar.gz
FRPC_SITE 			:= https://github.com/fatedier/frp/releases/download/v$(FRPC_VERSION)
FRPC_LICENSE 		:= Apache-2.0
FRPC_LICENSE_FILES 	:= LICENSE
#FRPC_INSTALL_TARGET := YES

#Is already precompilated
define FRPC_BUILD_CMDS
	#tar -xvzf $(@D)
endef

define FRPC_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 755 $(@D)/frpc $(TARGET_DIR)/usr/bin/frpc
endef

$(eval $(generic-package))
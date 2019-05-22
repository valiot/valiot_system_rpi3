#############################################################
#
# frpc
#
#############################################################

SOEM_VERSION 		:= 1.3.3-beta.1
SOEM_SOURCE 		:= v${SOEM_VERSION}.tar.gz
SOEM_SITE 			:= https://github.com/OpenEtherCATsociety/SOEM/archive
SOEM_LICENSE 		:= Apache-2.0
SOEM_LICENSE_FILES 	:= LICENSE
SOEM_INSTALL_STAGING = YES
SOEM_INSTALL_TARGET = YES
#SOEM_INSTALL_TARGET := YES

$(eval $(cmake-package))
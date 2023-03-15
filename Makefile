include $(TOPDIR)/rules.mk
 
PKG_NAME:=sdm
PKG_VERSION:=0.0.1
PKG_RELEASE:=1
 
include $(INCLUDE_DIR)/package.mk
 
define Package/sdm
  SECTION:=base
  CATEGORY:=Network
  TITLE:=Ethernet bridging configuration utility
  #DESCRIPTION:=This variable is obsolete. use the Package/name/description define instead!
  URL:=http://sdm.sourceforge.net/
endef
 
define Package/sdm/description
 Ethernet bridging configuration utility
 Manage ethernet bridging; a way to connect networks together to
 form a larger network.
endef
 
define Build/Compile
echo 'pass'
endef
 
define Package/sdm/install
	$(INSTALL_DIR) $(1)/etc/config
	$(INSTALL_CONF) ./files/sdm.config $(1)/etc/config/sdm
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/sdm.init $(1)/etc/init.d/sdm
endef
 
$(eval $(call BuildPackage,sdm))
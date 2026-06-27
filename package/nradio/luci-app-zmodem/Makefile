include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-zmodem
PKG_VERSION:=1.7
PKG_RELEASE:=1
PKG_MAINTAINER:=NRadio OEM
PKGARCH:=all

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-zmodem
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=NRadio OEM zmodem modem LuCI app
  DEPENDS:=+sendat +nradio-rm520n-scripts
endef

define Package/luci-app-zmodem/description
  OEM NRadio modem LuCI pages copied verbatim from the C8-660 rootfs.
endef

define Build/Compile
endef

define Package/luci-app-zmodem/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,luci-app-zmodem))

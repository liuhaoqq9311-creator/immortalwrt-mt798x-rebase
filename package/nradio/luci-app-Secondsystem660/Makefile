include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-Secondsystem660
PKG_VERSION:=1.0.0
PKG_RELEASE:=1
PKG_MAINTAINER:=NRadio OEM
PKGARCH:=all

include $(INCLUDE_DIR)/package.mk

define Package/luci-app-Secondsystem660
  SECTION:=luci
  CATEGORY:=LuCI
  SUBMENU:=3. Applications
  TITLE:=NRadio OEM C8-660 second-system LuCI app
  DEPENDS:=+ubi-utils
endef

define Package/luci-app-Secondsystem660/description
  OEM NRadio C8-660 dual-system LuCI pages copied verbatim from the rootfs.
endef

define Build/Compile
endef

define Package/luci-app-Secondsystem660/install
	$(CP) ./files/* $(1)/
endef

$(eval $(call BuildPackage,luci-app-Secondsystem660))

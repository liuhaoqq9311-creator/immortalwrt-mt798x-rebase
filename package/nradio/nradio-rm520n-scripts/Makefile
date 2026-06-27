include $(TOPDIR)/rules.mk

PKG_NAME:=nradio-rm520n-scripts
PKG_VERSION:=1.0
PKG_RELEASE:=1
PKG_MAINTAINER:=NRadio OEM
PKGARCH:=all

include $(INCLUDE_DIR)/package.mk

define Package/nradio-rm520n-scripts
  SECTION:=net
  CATEGORY:=Network
  SUBMENU:=WWAN
  TITLE:=NRadio OEM RM520N/RM500 modem scripts
  DEPENDS:=+bash +sendat +adb +curl +ubi-utils +block-mount +kmod-usb-serial-option +kmod-usb-net-qmi-wwan +kmod-usb-net-cdc-mbim +uqmi +umbim
endef

define Package/nradio-rm520n-scripts/description
  OEM NRadio RM520N/RM500 modem initialization scripts and C8-660 runtime helpers.
endef

define Package/nradio-rm520n-scripts/conffiles
/etc/config/modem
endef

define Build/Compile
endef

define Package/nradio-rm520n-scripts/install
	$(CP) ./files/* $(1)/
	rm -f $(1)/usr/bin/cgsys1.sh
endef

$(eval $(call BuildPackage,nradio-rm520n-scripts))

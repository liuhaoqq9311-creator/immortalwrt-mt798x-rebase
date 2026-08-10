#
# Copyright (C) 2026 Hao Liu
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=ip6neigh
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/AndreBL/ip6neigh.git
PKG_SOURCE_DATE:=2025-09-04
PKG_SOURCE_VERSION:=eb2efd26abf71de421fb461f6e5aee0bed36cd7b
PKG_MIRROR_HASH:=1dac31ca461e2fd2330e1d1ff473b1c58d8024b1414144b8aadce4ed1aa9f6d1

PKG_LICENSE:=GPL-2.0-only
PKG_LICENSE_FILES:=LICENSE
PKG_MAINTAINER:=Andre Lange

include $(INCLUDE_DIR)/package.mk

define Package/ip6neigh
  SECTION:=net
  CATEGORY:=Network
  TITLE:=SLAAC IPv6 neighbor DNS host manager
  URL:=https://github.com/AndreBL/ip6neigh
  DEPENDS:=+ip-full +curl +dnsmasq +odhcpd
  PKGARCH:=all
endef

define Package/ip6neigh/description
 Maintains dnsmasq host records for IPv6 SLAAC neighbors, using DHCP lease
 names when available.
endef

define Package/ip6neigh/conffiles
/etc/config/ip6neigh
endef

define Build/Compile
endef

define Package/ip6neigh/install
	$(INSTALL_DIR) \
		$(1)/etc/config \
		$(1)/etc/hotplug.d/iface \
		$(1)/etc/init.d \
		$(1)/usr/bin \
		$(1)/usr/lib/ip6neigh \
		$(1)/usr/sbin \
		$(1)/usr/share/ip6neigh
	$(INSTALL_CONF) $(PKG_BUILD_DIR)/etc/config/ip6neigh $(1)/etc/config/ip6neigh
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/etc/hotplug.d/iface/30-ip6neigh $(1)/etc/hotplug.d/iface/30-ip6neigh
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/etc/init.d/ip6neigh $(1)/etc/init.d/ip6neigh
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/main/ip6neigh.sh $(1)/usr/bin/ip6neigh
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/lib/ip6addr_functions.sh $(1)/usr/lib/ip6neigh/ip6addr_functions.sh
	$(INSTALL_BIN) $(PKG_BUILD_DIR)/main/ip6neigh-svc.sh $(1)/usr/sbin/ip6neigh-svc.sh
	$(INSTALL_DATA) $(PKG_BUILD_DIR)/LICENSE $(1)/usr/share/ip6neigh/LICENSE
endef

$(eval $(call BuildPackage,ip6neigh))

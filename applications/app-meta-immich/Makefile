# This is free software, licensed under the Apache License, Version 2.0 .

include $(TOPDIR)/rules.mk

PKG_VERSION:=1.0.2
PKG_RELEASE:=20250321

META_TITLE:=immich相册
META_TITLE.en:=immich
META_DEPENDS:=+vmease +luci-app-immich +luci-i18n-immich-zh-cn +docker-deps
META_DESCRIPTION:=Immich 是一个自我托管的照片和视频管理解决方案。
META_DESCRIPTION.en:=Immich is a self-host photo and video management solution.
META_AUTHOR:=immich
META_TAGS:=ai multimedia
META_LUCI_ENTRY:=/cgi-bin/luci/admin/services/immich
META_WEBSITE:=https://www.immich.app
META_TUTORIAL:=https://doc.linkease.com/zh/guide/istore/software/immich.html

include ../../meta.mk

# call BuildPackage - OpenWrt buildroot signature

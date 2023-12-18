#!/bin/bash
#=================================================
#刀刀的剧本
#=================================================             


##
回声-e " \nmsgid \"Control\ " "> > feeds/luci/modules/luci-base/po/zh _ Hans/base . po
回声-e " msgstr \ "控制\""> > feeds/luci/modules/luci-base/po/zh _ Hans/base . po

回声-e " \nmsgid \"NAS\ " "> > feeds/luci/modules/luci-base/po/zh _ Hans/base . po
回声-e " msgstr \ "网络存储\""> > feeds/luci/modules/luci-base/po/zh _ Hans/base . po


##配置互联网协议(Internet Protocol)
一项Linux指令［构成来自拉丁语、结尾为-us的名词的复数］ ' s/192.168.88.1/192.168.88.1/g '包/基本文件/文件/bin/config_generate

##
空间-射频。/feeds/extra ipk/theme/luci-theme-argon-18.06
空间-射频。/feeds/extra ipk/theme/luci-app-argon-config-18.06
空间-射频。/feeds/extra ipk/theme/luci-theme-design
空间-射频。/feeds/extra ipk/theme/luci-theme-edge
空间-射频。/feeds/extra ipk/theme/luci-theme-ifit
空间-射频。/feeds/extra ipk/theme/luci-theme-opentopd
空间-射频。/feeds/extra ipk/theme/luci-theme-neo bird

空间-射频。/package/feeds/extra ipk/luci-theme-argon-18.06
空间-射频。/package/feeds/extra ipk/luci-app-argon-config-18.06
空间-射频。/package/feeds/extra ipk/theme/luci-theme-design
空间-射频。/package/feeds/extra ipk/theme/luci-theme-edge
空间-射频。/package/feeds/extra ipk/theme/luci-theme-ifit
空间-射频。/package/feeds/extra ipk/theme/luci-theme-opentopd
空间-射频。/package/feeds/extra ipk/theme/luci-theme-neo bird


##取消引导程序为默认主题
一项Linux指令［构成来自拉丁语、结尾为-us的名词的复数］ /set luci . main . mediaurlbase = \/luci-static \/bootstrap/d 'feeds/luci/themes/luci-theme-bootstrap/root/etc/UCI-defaults/30 _ luci-theme-bootstrap
一项Linux指令［构成来自拉丁语、结尾为-us的名词的复数］ s/luci-theme-bootstrap/luci-theme-argon/g 'feeds/luci/collections/luci/Makefile
一项Linux指令［构成来自拉丁语、结尾为-us的名词的复数］ s/luci-theme-bootstrap/luci-theme-argon/g 'feeds/luci/collections/luci-nginx/Makefile

##更改主机名
一项Linux指令［构成来自拉丁语、结尾为-us的名词的复数］ “s/hostname=”。* "/hostname = ' stwr wrt '/g "包/基本文件/文件/bin/config_generate

##加入作者信息
一项Linux指令［构成来自拉丁语、结尾为-us的名词的复数］ " s/DISTRIB_DESCRIPTION='*。* '/DISTRIB _ DESCRIPTION = ' EasyWrt-$(日期+%Y%m%d)/g "包/基本文件/文件/etc/openwrt_release
一项Linux指令［构成来自拉丁语、结尾为-us的名词的复数］ " s/DISTRIB_REVISION='*。* '/DISTRIB _ REVISION = ' By stwrnet '/g "包/基本文件/文件/etc/openwrt_release
丙酸纤维素-affeeds/extra ipk/patch/DIY/banner-简易包/base-files/files/etc/banner

一项Linux指令［构成来自拉丁语、结尾为-us的名词的复数］ " 2 iuci set istore . istore . channel = ' STW rnet ' "package/e mortal/default-settings/files/99-default-settings
一项Linux指令［构成来自拉丁语、结尾为-us的名词的复数］ " 3iuci提交历史"package/e mortal/default-settings/files/99-default-settings


##WiFi
一项Linux指令［构成来自拉丁语、结尾为-us的名词的复数］ " s/mt 7986 _ ax 6000 _ 2.4G/stwrnet-2.4G/g "package/MTK/drivers/wifi-profile/files/mt 7986/mt 7986-ax 6000 . dbdc . B0 . dat
一项Linux指令［构成来自拉丁语、结尾为-us的名词的复数］ " s/mt 7986 _ ax 6000 _ 5G/stwrnet-5G/g "package/MTK/drivers/wifi-profile/files/mt 7986/mt 7986-ax 6000 . dbdc . B1 . dat

一项Linux指令［构成来自拉丁语、结尾为-us的名词的复数］ " s/mt 7981 _ ax 3000 _ 2.4G/stwrnet-2.4G/g "package/MTK/drivers/wifi-profile/files/mt 7981/mt 7981 . dbdc . B0 . dat
一项Linux指令［构成来自拉丁语、结尾为-us的名词的复数］ " s/mt 7981 _ ax 3000 _ 5G/stwrnet-5G/g "package/MTK/drivers/wifi-profile/files/mt 7981/mt 7981 . dbdc . B1 . dat

# #新WiFi
sed -i "s/ImmortalWrt-2.4G/stwrnet-2.4G/g" package/mtk/applications/mtwifi-cfg/files/mtwifi.sh
sed -i "s/ImmortalWrt-5G/stwrnet-5G/g" package/mtk/applications/mtwifi-cfg/files/mtwifi.sh


##FQ全部调到VPN菜单
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-ssr-plus/luasrc/controller/*.lua
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-ssr-plus/luasrc/model/cbi/shadowsocksr/*.lua
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-ssr-plus/luasrc/view/shadowsocksr/*.htm

sed -i 's/services/vpn/g' package/feeds/luci/luci-app-passwall/luasrc/controller/*.lua
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-passwall/luasrc/passwall/*.lua
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-passwall/luasrc/model/cbi/passwall/client/*.lua
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-passwall/luasrc/model/cbi/passwall/server/*.lua
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-passwall/luasrc/view/passwall/app_update/*.htm
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-passwall/luasrc/view/passwall/socks_auto_switch/*.htm
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-passwall/luasrc/view/passwall/global/*.htm
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-passwall/luasrc/view/passwall/haproxy/*.htm
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-passwall/luasrc/view/passwall/log/*.htm
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-passwall/luasrc/view/passwall/node_list/*.htm
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-passwall/luasrc/view/passwall/rule/*.htm
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-passwall/luasrc/view/passwall/server/*.htm

sed -i 's/services/vpn/g' package/feeds/extraipk/luci-app-passwall2/luasrc/controller/*.lua
sed -i 's/services/vpn/g' package/feeds/extraipk/luci-app-passwall2/luasrc/passwall2/*.lua
sed -i 's/services/vpn/g' package/feeds/extraipk/luci-app-passwall2/luasrc/model/cbi/passwall2/client/*.lua
sed -i 's/services/vpn/g' package/feeds/extraipk/luci-app-passwall2/luasrc/model/cbi/passwall2/server/*.lua
sed -i 's/services/vpn/g' package/feeds/extraipk/luci-app-passwall2/luasrc/view/passwall2/app_update/*.htm
sed -i 's/services/vpn/g' package/feeds/extraipk/luci-app-passwall2/luasrc/view/passwall2/socks_auto_switch/*.htm
sed -i 's/services/vpn/g' package/feeds/extraipk/luci-app-passwall2/luasrc/view/passwall2/global/*.htm
sed -i 's/services/vpn/g' package/feeds/extraipk/luci-app-passwall2/luasrc/view/passwall2/haproxy/*.htm
sed -i 's/services/vpn/g' package/feeds/extraipk/luci-app-passwall2/luasrc/view/passwall2/log/*.htm
sed -i 's/services/vpn/g' package/feeds/extraipk/luci-app-passwall2/luasrc/view/passwall2/node_list/*.htm
sed -i 's/services/vpn/g' package/feeds/extraipk/luci-app-passwall2/luasrc/view/passwall2/rule/*.htm
sed -i 's/services/vpn/g' package/feeds/extraipk/luci-app-passwall2/luasrc/view/passwall2/server/*.htm

sed -i 's/services/vpn/g' package/feeds/luci/luci-app-vssr/luasrc/controller/*.lua
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-vssr/luasrc/model/cbi/vssr/*.lua
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-vssr/luasrc/view/vssr/*.htm

sed -i 's/services/vpn/g' package/feeds/luci/luci-app-openclash/luasrc/controller/*.lua
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-openclash/luasrc/*.lua
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-openclash/luasrc/model/cbi/openclash/*.lua
sed -i 's/services/vpn/g' package/feeds/luci/luci-app-openclash/luasrc/view/openclash/*.htm

sed -i 's/services/vpn/g' package/feeds/extraipk/luci-app-bypass/luasrc/controller/*.lua
sed -i 's/services/vpn/g' package/feeds/extraipk/luci-app-bypass/luasrc/model/cbi/bypass/*.lua
sed -i 's/services/vpn/g' package/feeds/extraipk/luci-app-bypass/luasrc/view/bypass/*.htm


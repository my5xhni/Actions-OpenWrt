#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/192.168.11.44/g' package/base-files/files/bin/config_generate

#移除不用软件包
# rm -rf k3screenctrl package/lean
#添加额外软件包
git clone -b master https://github.com/kenzok8/openwrt-packages.git package/kenzok8
#ADH,passwall,smartdns,openclash
git clone -b main   https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
#git clone -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash
#passwall依赖
git clone -b master https://github.com/kenzok8/small.git package/small
#git clone -b 18.06 https://github.com/kenzok8/small-package.git package/small8
git clone -b master https://github.com/jefferymvp/luci-app-koolproxyR package/luci-app-koolproxyR
git clone -b master https://github.com/Lienol/openwrt-OpenAppFilter.git package/luci-app-OpenAppFilter
#git clone -b master https://github.com/Twinzo1/AdGuardHome.git package/luci-app-adguardhome2
#git clone https://github.com/yangsongli/luci-theme-atmaterial.git package/luci-theme-atmaterial
#git clone -b master https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome

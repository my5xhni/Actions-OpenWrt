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
git clone -b main   https://github.com/xiaorouji/openwrt-passwall.git package/luci-app-passwall
git clone -b master https://github.com/vernesong/OpenClash.git package/luci-app-openclash

#git clone -b master https://github.com/kenzok8/small.git package/small
git clone -b master https://github.com/jefferymvp/luci-app-koolproxyR package/luci-app-koolproxyR
git clone -b master https://github.com/Lienol/openwrt-OpenAppFilter.git package/luci-app-OpenAppFilter
git clone -b master https://github.com/Twinzo1/AdGuardHome.git package/luci-app-adguardhome2

# git clone https://github.com/yangsongli/luci-theme-atmaterial.git package/luci-theme-atmaterial
# git clone -b master https://github.com/vernesong/OpenClash.git  package/luci-app-OpenClash
# git clone https://github.com/kenzok8/openwrt-packages package/kenzo
# git clone https://github.com/fw876/helloworld.git package/luci-app-ssrp+

# git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
# git clone https://github.com/Twinzo1/AdGuardHome.git package/luci-app-adguardhome1

# git clone https://github.com/lwz322/luci-app-k3screenctrl.git package/k3/luci-app-k3screenctrl
# git clone https://github.com/lwz322/k3screenctrl.git package/k3/k3screenctrl
# git clone https://github.com/lwz322/k3screenctrl_build.git package/k3/k3screenctrl_build

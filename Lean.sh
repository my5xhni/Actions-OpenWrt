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
#git clone https://github.com/kenzok8/openwrt-packages.git package/kenzok8
#ADH,passwall,smartdns,openclash
git clone https://github.com/xnxy2012/luci-app-passwall.git package/luci-app-passwall
git clone https://github.com/kenzok8/small package/small
#passwall依赖
git clone https://github.com/vernesong/OpenClash.git package/luci-openclash
git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/luci-app-adguardhome
git clone https://github.com/jefferymvp/luci-app-koolproxyR package/luci-app-koolproxyR
git clone https://github.com/yangsongli/luci-theme-atmaterial.git package/luci-theme-atmaterial

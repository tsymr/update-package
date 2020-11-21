#!/bin/bash

git clone https://github.com/rosywrt/luci-theme-rosy
svn co https://github.com/garypang13/luci-theme-edge/branches/18.06 ./luci-theme-edge
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom
git clone https://github.com/vernesong/OpenClash.git
mv -f OpenClash/ ./luci-app-openclash
rm -rf OpenClash
git clone https://github.com/tty228/luci-app-serverchan
svn co https://github.com/littletao08/luci-app-eqos/trunk ./luci-app-eqos
git clone https://github.com/jerrykuku/node-request
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus
svn co https://github.com/lwz322/luci-app-k3screenctrl/trunk ./luci-app-k3screenctrl
svn co https://github.com/lwz322/k3screenctrl/trunk ./k3screenctrl
svn co https://github.com/lwz322/k3screenctrl_build/trunk ./k3screenctrl_build
svn co https://github.com/siropboy/sirpdboy-package/trunk/luci-app-koolproxyR
svn co https://github.com/siropboy/sirpdboy-package/trunk/luci-theme-opentopd
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/luci-app-smartdns
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/smartdns
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/luci-app-clash
svn co https://github.com/siropboy/sirpdboy-package/trunk/luci-app-adguardhome
svn co https://github.com/siropboy/sirpdboy-package/trunk/adguardhome
svn co https://github.com/siropboy/sirpdboy-package/trunk/luci-theme-opentomcat
git clone https://github.com/koshev-msk/luci-app-modeminfo
svn co https://github.com/jerrykuku/luci-theme-argon/branches/18.06 ./luci-theme-argon
svn co https://github.com/jerrykuku/luci-app-argon-config/trunk ./luci-app-argon-config
git clone https://github.com/esirplayground/luci-app-poweroff
svn co https://github.com/siropboy/sirpdboy-package/trunk/luci-app-netdata
svn co https://github.com/siropboy/sirpdboy-package/trunk/netdata
svn co https://github.com/xiaoqingfengATGH/feeds-xiaoqingfeng/trunk/miniupnpd
svn co https://github.com/xiaoqingfengATGH/feeds-xiaoqingfeng/trunk/mwan3
svn co https://github.com/fw876/helloworld/trunk ./luci-app-ssr-plus
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-gost
svn co https://github.com/kenzok8/openwrt-packages/trunk/gost
svn co https://github.com/destan19/OpenAppFilter/trunk ./luci-app-oaf
svn co https://github.com/xiaorouji/openwrt-package/trunk/lienol/luci-app-passwall
svn co https://github.com/xiaorouji/openwrt-package/trunk/package ./passwall
rm -rf ./passwall/openssl1.1
rm -rf ./passwall/v2ray
rm -rf ./passwall/trojan
rm -rf ./passwall/v2ray-plugin
rm -rf ./passwall/shadowsocksr-libev
svn co https://github.com/Lienol/openwrt-packages/trunk/net/https-dns-proxy
mv -f https-dns-proxy ./passwall
svn co https://github.com/Lienol/openwrt-packages/trunk/net/haproxy
mv -f haproxy ./passwall
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/luci-app-vssr
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/lua-maxminddb
svn co https://github.com/lisaac/luci-app-dockerman/trunk ./luci-app-dockerman
svn co https://github.com/lisaac/luci-lib-docker/trunk ./luci-lib-docker

sed -i 's/"Argon 主题设置"/"Argo设置"/g' ./luci-app-argon-config/po/zh-cn/argon-config.po
sed -i 's/"network"/"services"/g' ./luci-app-oaf/luci-app-oaf/luasrc/controller/appfilter.lua
sed -i 's/"网速控制"/"内网控速"/g' ./luci-app-eqos/files/po/zh-cn/eqos.po
sed -i 's/"network"/"services"/g' ./luci-app-eqos/files/eqos-controller.lua

rm -rf ./*/.git
rm -rf ./*/.svn
rm -rf ./*/README.md
rm -rf ./*/LICENSE
rm -rf .svn
rm -rf ./*/readme.txt
rm -f .gitattributes .gitignore
exit 0

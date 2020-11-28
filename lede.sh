#!/bin/bash

svn co  https://github.com/coolsnowwolf/lede/trunk ./
cd package
mkdir -p danshui
chown $USER:$GROUPS danshui
cd danshui

svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-atmaterial
git clone https://github.com/rosywrt/luci-theme-rosy
svn co https://github.com/garypang13/luci-theme-edge/branches/18.06 ./luci-theme-edge
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom
git clone https://github.com/vernesong/OpenClash.git
mv -f OpenClash/ ./luci-app-openclash
rm -rf OpenClash
git clone https://github.com/tty228/luci-app-serverchan
git clone https://github.com/jerrykuku/node-request
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus
svn co https://github.com/lwz322/luci-app-k3screenctrl/trunk ./luci-app-k3screenctrl
svn co https://github.com/lwz322/k3screenctrl/trunk ./k3screenctrl
svn co https://github.com/lwz322/k3screenctrl_build/trunk ./k3screenctrl_build
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
svn co https://github.com/xiaorouji/openwrt-passwall ./passwall
mv -f luci-app-passwall
rm -rf ./passwall/v2ray
rm -rf ./passwall/trojan
rm -rf ./passwall/v2ray-plugin
rm -rf ./passwall/shadowsocksr-libev
svn co https://github.com/Lienol/openwrt-packages/trunk/net/https-dns-proxy
mv -f https-dns-proxy ./passwall
svn co https://github.com/Lienol/openwrt-packages/trunk/net/haproxy
mv -f haproxy ./passwall
svn co https://github.com/Lienol/openwrt/trunk/package/diy/luci-app-dockerman
svn co https://github.com/Lienol/openwrt/trunk/package/diy/luci-lib-docker
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-app-aliddns
svn co https://github.com/littletao08/luci-app-eqos/trunk ./luci-app-eqos
svn co https://github.com/firker/diy-ziyong/trunk/cpulimit-ng
svn co https://github.com/firker/diy-ziyong/trunk/cpulimit
svn co https://github.com/firker/diy-ziyong/trunk/luci-app-cpulimit
svn co https://github.com/firker/diy-ziyong/trunk/luci-app-wrtbwmon-zhcn
svn co https://github.com/firker/diy-ziyong/trunk/wrtbwmon
svn co https://github.com/siropboy/mypackages/trunk/luci-app-advanced
svn co https://github.com/siropboy/mypackages/trunk/luci-app-autopoweroff
svn co https://github.com/siropboy/mypackages/trunk/luci-app-control-timewol
svn co https://github.com/siropboy/mypackages/trunk/luci-app-control-weburl
svn co https://github.com/siropboy/mypackages/trunk/luci-app-control-webrestriction
svn co https://github.com/sirpdboy/luci-theme-opentopd/trunk ./luci-theme-opentopd
svn co https://github.com/siropboy/mypackages/trunk/luci-app-koolproxyR
svn co https://github.com/siropboy/mypackages/trunk/luci-app-pptp-vpnserver-manyusers
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/luci-app-vssr
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/lua-maxminddb
svn co https://github.com/siropboy/mypackages/trunk/dnscrypt-proxy-full
svn co https://github.com/siropboy/mypackages/trunk/syncthing
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/ChinaDNS
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/GoQuiet
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/node-request
svn co https://github.com/pexcn/openwrt-udpspeeder/trunk ./openwrt-udpspeeder
svn co https://github.com/sensec/openwrt-udp2raw/trunk ./openwrt-udp2raw


sed -i 's/"Argon 主题设置"/"Argon设置"/g' ./luci-app-argon-config/po/zh-cn/argon-config.po
sed -i 's/"网速控制"/"内网控速"/g' ./luci-app-eqos/files/po/zh-cn/eqos.po

cd .. && cd lean
rm -rf luci-app-netdata
rm -rf luci-theme-argon
rm -rf luci-app-wrtbwmon
rm -rf k3screenctrl


cd .. && cd ..
rm -rf ./.github
rm -rf README
rm -rf doc
rm -rf ./*/.git
rm -rf ./*/.svn
rm -rf ./*/*/.git
rm -rf ./*/*/.svn
rm -rf ./*/*/*/.git
rm -rf ./*/*/*/.svn
rm -rf ./*/README.md
rm -rf ./*/LICENSE
rm -rf ./*/*/README.md
rm -rf ./*/*/LICENSE
rm -rf ./*/*/*/README.md
rm -rf ./*/*/*/LICENSE
rm -rf .svn
rm -rf ./*/readme.txt
rm -f .gitattributes .gitignore
exit 0

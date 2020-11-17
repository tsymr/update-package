#!/bin/bash
git clone https://github.com/rosywrt/luci-theme-rosy
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom
git clone -b master https://github.com/vernesong/OpenClash
mv -f OpenClash/luci-app-openclash .
git clone https://github.com/tty228/luci-app-serverchan
git clone https://github.com/garypang13/luci-app-eqos
git clone https://github.com/jerrykuku/node-request
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus
git clone https://github.com/fw876/helloworld
mv -f helloworld/luci-app-ssr-plus .
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/shadowsocksr-libev
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/pdnsd-alt
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/microsocks
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/dns2socks
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/simple-obfs
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/v2ray-plugin
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/v2ray
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/trojan
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ipt2socks
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/redsocks2
git clone https://github.com/esirplayground/luci-app-poweroff
git clone https://github.com/lwz322/luci-app-k3screenctrl
git clone https://github.com/lwz322/k3screenctrl
git clone https://github.com/lwz322/k3screenctrl_build
svn co https://github.com/siropboy/sirpdboy-package/trunk/luci-app-koolproxyR
svn co https://github.com/siropboy/sirpdboy-package/trunk/luci-theme-opentopd
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/luci-app-smartdns
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/smartdns
svn co https://github.com/project-openwrt/openwrt/trunk/package/ntlf9t/luci-app-clash
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/luci-app-vssr
svn co https://github.com/project-openwrt/openwrt/trunk/package/ctcgfw/lua-maxminddb
rm -rf ./LICENSE
rm -rf ./*/.git
rm -rf ./*/.svn 
rm -f .gitattributes .gitignore
exit 0

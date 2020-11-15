#!/bin/bash
git clone https://github.com/rosywrt/luci-theme-rosy
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom
git clone -b master https://github.com/vernesong/OpenClash
git clone https://github.com/frainzy1477/luci-app-clash
git clone https://github.com/tty228/luci-app-serverchan
git clone -b lede https://github.com/pymumu/luci-app-smartdns
git clone https://github.com/garypang13/luci-app-eqos
git clone https://github.com/jerrykuku/node-request
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus

git clone https://github.com/fw876/helloworld
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/shadowsocksr-libev Lienol-packages/ssr/
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/pdnsd-alt Lienol-packages/ssr/
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/microsocks Lienol-packages/ssr/
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/dns2socks Lienol-packages/ssr/
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/simple-obfs Lienol-packages/ssr/
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/v2ray-plugin Lienol-packages/ssr/
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/v2ray Lienol-packages/ssr/
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/trojan Lienol-packages/ssr/
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/ipt2socks Lienol-packages/ssr/
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/redsocks2 Lienol-packages/ssr/

git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git
git clone https://github.com/jerrykuku/luci-app-argon-config

git clone https://github.com/esirplayground/luci-app-poweroff
rm -rf ./*/.git
rm -rf ./*/.svn 
rm -f .gitattributes .gitignore
exit 0

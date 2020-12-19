#!/bin/bash

svn co https://github.com/jerrykuku/luci-theme-argon/branches/18.06 ./luci-theme-argon
svn co https://github.com/jerrykuku/luci-app-argon-config/trunk ./luci-app-argon-config
svn co https://github.com/siropboy/sirpdboy-package/trunk/luci-app-koolproxyR
git clone https://github.com/esirplayground/luci-app-poweroff
svn co https://github.com/siropboy/mypackages/trunk/luci-app-autopoweroff
svn co https://github.com/tuanqing/install-program/trunk ./install-program
svn co  https://github.com/xiaorouji/openwrt-passwall/trunk ./
svn co https://github.com/Lienol/openwrt-packages/trunk/net/https-dns-proxy
svn co https://github.com/Lienol/openwrt-packages/trunk/net/haproxy
rm -rf ./trojan
rm -rf ./chinadns-ng
rm -rf ./kcptun
rm -rf ./v2ray-plugin
rm -rf ./shadowsocksr-libev
svn co https://github.com/fw876/helloworld/trunk ./luci-app-ssr-plus

sed -i 's/"Argon 主题设置"/"Argon设置"/g' ./luci-app-argon-config/po/zh-cn/argon-config.po

rm -rf ./*/.git
rm -rf ./*/.svn
rm -rf ./*/README.md
rm -rf ./*/LICENSE
rm -rf .svn
rm -rf ./*/readme.txt
rm -f .gitattributes .gitignore
exit 0

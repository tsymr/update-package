#!/bin/bash

svn co https://github.com/jerrykuku/luci-theme-argon/branches/18.06 ./luci-theme-argon
svn co https://github.com/jerrykuku/luci-app-argon-config/trunk ./luci-app-argon-config
svn co https://github.com/siropboy/sirpdboy-package/trunk/luci-app-koolproxyR
git clone https://github.com/esirplayground/luci-app-poweroff
svn co https://github.com/siropboy/mypackages/trunk/luci-app-autopoweroff
svn co https://github.com/tuanqing/install-program/trunk ./install-program
svn co https://github.com/pymumu/luci-app-smartdns/branches/lede ./luci-app-smartdns
svn co https://github.com/zzsj0928/luci-app-serverchand/trunk ./luci-app-serverchand
svn co https://github.com/garypang13/openwrt-packages/trunk/lua-maxminddb
svn co https://github.com/Lienol/openwrt/trunk/package/diy/luci-app-adguardhome
svn co https://github.com/Lienol/openwrt-packages/trunk/net/adguardhome


curl -fsSL https://raw.githubusercontent.com/281677160/ceshi1/AdGuard/AdGuardHome > ./luci-app-adguardhome/root/etc/config/AdGuardHome
sed -i 's/"免费开源，功能强大的全网络广告和跟踪程序拦截DNS服务器"/"免费去广告和跟踪程序拦截DNS服务器，网页管理账号和密码均为：admin"/g' luci-app-adguardhome/po/zh-cn/AdGuardHome.po
curl -fsSL  https://raw.githubusercontent.com/281677160/openwrt-package/usb/argon/footer.htm > ./luci-theme-argon/luasrc/view/themes/argon/footer.htm
sed -i 's/"Argon 主题设置"/"Argon设置"/g' ./luci-app-argon-config/po/zh-cn/argon-config.po

rm -rf ./*/.git
rm -rf ./*/.svn
rm -rf ./*/*/.svn
rm -rf ./*/*/.git

rm -rf ./ReadMe.md
rm -rf ./*/ReadMe.md
rm -rf ./*/README.md
rm -rf ./*/LICENSE
rm -rf .svn
rm -rf ./*/readme.txt
rm -f .gitattributes .gitignore
exit 0

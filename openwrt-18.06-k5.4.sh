#!/bin/bash

svn co https://github.com/jerrykuku/luci-theme-argon/branches/18.06 ./luci-theme-argon
svn co https://github.com/jerrykuku/luci-app-argon-config/trunk ./luci-app-argon-config
svn co https://github.com/siropboy/sirpdboy-package/trunk/luci-app-koolproxyR
git clone https://github.com/esirplayground/luci-app-poweroff

svn co https://github.com/project-openwrt/openwrt/branches/openwrt-18.06-k5.4/package/ntlf9t ./ntlf9t

sed -i 's/"Argon 主题设置"/"Argon设置"/g' ./luci-app-argon-config/po/zh-cn/argon-config.po

rm -rf ./*/.git
rm -rf ./*/.svn
rm -rf ./*/README.md
rm -rf ./*/LICENSE
rm -rf .svn
rm -rf ./*/readme.txt
rm -f .gitattributes .gitignore
exit 0

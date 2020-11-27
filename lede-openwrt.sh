#!/bin/bash

svn co  https://github.com/coolsnowwolf/lede/trunk ./openwrt
svn co  https://github.com/coolsnowwolf/packages/trunk ./packages
svn co  https://github.com/coolsnowwolf/luci/trunk ./luci
svn co  https://git.openwrt.org/feed/routing.git/trunk ./routing
svn co  https://git.openwrt.org/feed/telephony/trunk ./telephony
svn co  https://github.com/freifunk/openwrt-packages/trunk ./freifunk
svn co  https://github.com/fw876/helloworld/trunk ./helloworld

rm -rf ./.github
rm -rf ./*/.git
rm -rf ./*/.svn
rm -rf ./*/README.md
rm -rf ./*/LICENSE
rm -rf .svn
rm -rf ./*/readme.txt
rm -f .gitattributes .gitignore
exit 0

#!/bin/bash

svn co  https://github.com/coolsnowwolf/lede/trunk ./
cd package
mkdir -p /danshui
chown $USER:$GROUPS /danshui
cd danshui
svn co https://github.com/kenzok8/openwrt-packages/trunk/luci-theme-atmaterial
cd ..
cd ..
rm -rf ./.github
rm -rf ./*/.git
rm -rf ./*/.svn
rm -rf ./*/*/.git
rm -rf ./*/*/.svn
rm -rf ./*/README.md
rm -rf ./*/LICENSE
rm -rf .svn
rm -rf ./*/readme.txt
rm -f .gitattributes .gitignore
exit 0

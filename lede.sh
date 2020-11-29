#!/bin/bash


svn co https://github.com/coolsnowwolf/lede/trunk ./
cd package
rm -rf lean
mkdir ctcgfw
mkdir lean
mkdir ntlf9t
mkdir zxlhhyccc

svn co https://github.com/project-openwrt/openwrt/branches/openwrt-18.06-k5.4/package/ctcgfw ./ctcgfw
svn co https://github.com/project-openwrt/openwrt/branches/openwrt-18.06-k5.4/package/lean ./lean
svn co https://github.com/project-openwrt/openwrt/branches/openwrt-18.06-k5.4/package/ntlf9t ./ntlf9t
svn co https://github.com/project-openwrt/openwrt/branches/openwrt-18.06-k5.4/package/zxlhhyccc ./zxlhhyccc
cd lean
rm -rf default-settings

svn co https://github.com/coolsnowwolf/lede/trunk/package/lean/default-settings


cd ..  && cd ..
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

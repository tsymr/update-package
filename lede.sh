#!/bin/bash
git clone https://github.com/fw876/helloworld
mv -f helloworld/luci-app-ssr-plus .
git clone https://github.com/rosywrt/luci-theme-rosy
git clone -b 18.06 https://github.com/garypang13/luci-theme-edge
git clone https://github.com/xiaoqingfengATGH/luci-theme-infinityfreedom
git clone -b master https://github.com/vernesong/OpenClash
mv -f OpenClash/luci-app-openclash .
git clone https://github.com/frainzy1477/luci-app-clash
git clone https://github.com/siropboy/luci-app-vssr-plus
git clone https://github.com/tty228/luci-app-serverchan
git clone -b lede https://github.com/pymumu/luci-app-smartdns
git clone https://github.com/garypang13/luci-app-eqos
git clone https://github.com/jerrykuku/node-request
git clone https://github.com/jerrykuku/luci-app-jd-dailybonus
svn co https://github.com/xiaorouji/openwrt-package/trunk/lienol/luci-app-passwall
svn co https://github.com/xiaorouji/openwrt-package/trunk/package ./
rm -rf .svn
git clone https://github.com/esirplayground/luci-app-poweroff
git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon
git clone https://github.com/jerrykuku/luci-app-argon-config
svn co https://github.com/siropboy/sirpdboy-package/trunk/luci-theme-opentomcat
svn co https://github.com/siropboy/sirpdboy-package/trunk/luci-theme-opentopd
svn co https://github.com/siropboy/sirpdboy-package/trunk/adguardhome
svn co https://github.com/siropboy/sirpdboy-package/trunk/luci-app-adguardhome
svn co https://github.com/siropboy/sirpdboy-package/trunk/luci-app-koolproxyR
rm -rf ./*/.git
rm -rf ./*/.svn 
rm -f .gitattributes .gitignore
exit 0

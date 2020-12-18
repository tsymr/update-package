#!/bin/bash
svn co https://github.com/tuanqing/mknop/trunk ./

# 生成完整目录清单
cat >> Update.md <<EOF
common
device
openwrt
gen_openwrt
EOF

# 获取所有更新目录并显示
ls | grep -v 'Update.md' | grep -v 'main.sh' >> UpdateList.md

# 对比Update.md文件里没有的内容，并生成变量
echo 缺失包列表
FOLDERS=`grep -Fxvf UpdateList.md Update.md`
FOLDERSX=`echo $FOLDERS | sed 's/ /、/g'`;echo $FOLDERSX

# 判断变量值，如果有效发送微信通知
if [ -n "$FOLDERS" ]; then  curl https://sc.ftqq.com/$SCKEY.send?text=$FOLDERSX--同步失败; fi
# 删除对比更新目录列表
rm -rf UpdateList.md
rm -rf Update.md


rm -rf ./*/.git
rm -rf ./*/.svn
rm -rf ./*/*/.svn
rm -rf ./*/*/.git
rm -rf ./.github
rm -rf ./*/README.md
rm -rf ./*/LICENSE
rm -rf .svn
rm -rf ./*/readme.txt
rm -f .gitattributes .gitignore
exit 0

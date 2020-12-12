#!/bin/bash
svn co https://github.com/tuanqing/mknop/trunk ./

rm -rf ./.git
rm -rf ./*/.svn
rm -rf ./*/LICENSE
rm -rf .svn
rm -rf ./*/readme.txt
rm -f .gitattributes .gitignore
exit 0

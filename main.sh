#!/bin/bash
svn co https://github.com/tuanqing/mknop/trunk ./

rm -rf ./.git
rm -rf ./.github
rm -rf ./*/.svn
rm -rf ./*/README.md
rm -rf ./*/LICENSE
rm -rf .svn
rm -rf ./*/readme.txt
rm -f .gitattributes .gitignore
exit 0

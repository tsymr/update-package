#!/bin/bash
svn co https://github.com/tuanqing/mknop/trunk ./

rm -rf ./.github
rm -rf .svn
rm -f .gitattributes .gitignore
exit 0

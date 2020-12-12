#!/bin/bash

git clone https://github.com/tuanqing/mknop reform

rm -rf ./*/.git
rm -rf ./*/.svn
rm -rf ./.github
rm -rf ./README.md
rm -rf LICENSE
rm -rf .svn
rm -rf ./*/readme.txt
rm -f .gitattributes .gitignore
exit 0

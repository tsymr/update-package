#!/bin/bash

git clone --depth 1 https://github.com/coolsnowwolf/lede ./

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

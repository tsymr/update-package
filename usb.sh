#!/bin/bash
svn co https://github.com/281677160/update-package/blob/main/README/usb/10-mount

rm -rf /.git
rm -rf /.svn
rm -f .gitattributes .gitignore
exit 0

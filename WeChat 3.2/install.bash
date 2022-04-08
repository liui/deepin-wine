#!/bin/bash

# 版本替换
mv ~/.deepinwine/Deepin-WeChat/drive_c/Program\ Files/Tencent/WeChat ~/.deepinwine/Deepin-WeChat/drive_c/Program\ Files/Tencent/WeChat.old
7z x WeChat.7z.001 -o$HOME/.deepinwine/Deepin-WeChat/drive_c/Program\ Files/Tencent/

# 降低 Wine 微信内存占用 & 牺牲小程序和公众号（不稳定）
rm -rf ~/.deepinwine/Deepin-WeChat/drive_c/users/$(whoami)/Application\ Data/Tencent/WeChat/XPlugin/Plugins/XWeb/
mkdir -p ~/.deepinwine/Deepin-WeChat/drive_c/users/$(whoami)/Application\ Data/Tencent/WeChat/XPlugin/Plugins
touch ~/.deepinwine/Deepin-WeChat/drive_c/users/$(whoami)/Application\ Data/Tencent/WeChat/XPlugin/Plugins/XWeb
chmod 000 ~/.deepinwine/Deepin-WeChat/drive_c/users/$(whoami)/Application\ Data/Tencent/WeChat/XPlugin/Plugins/XWeb

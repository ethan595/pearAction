#!/bin/bash
# 本脚本工作目录必须是git仓库的主目录

# get commit 
git checkout 8f9bc86de1896cc1ad9f013e923b9aa5ea3bd7c7 -b a
curl -fsSL https://raw.githubusercontent.com/PearInc/pearAction/master/x86_64/docker_tv_musl.config > .config 

# Add Some Package
cd package
git clone  https://github.com/PearInc/openwrt_docker.git
mv openwrt_docker docker
cd ../

# Modify default IP

sed -i 's/192.168.1.1/192.168.99.1/g' package/base-files/files/bin/config_generate
# sed -i 's/192.168/10.0/g' package/base-files/files/bin/config_generate

# Add some default settings

#\cp -rf ../lede/zzz-default-settings package/lean/default-settings/files/zzz-default-settings
curl -fsSL https://raw.githubusercontent.com/PearInc/pearAction/master/zzz-default-settings > package/lean/default-settings/files/zzz-default-settings

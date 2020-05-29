#!/bin/bash
# 本脚本工作目录必须是git仓库的主目录

# Add Some Package


# Modify default IP
sed -i 's/192.168.1.1/192.168.99.1/g' package/base-files/files/bin/config_generate

# Add some default settings
curl -fsSL https://raw.githubusercontent.com/linhailan/myActions/master/zzz-default-settings > package/lean/default-settings/files/zzz-default-settings

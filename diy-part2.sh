#!/bin/bash
###
 # @Author: xiawang1024
 # @Date: 2023-02-11 21:21:21
 # @LastEditTime: 2023-02-25 17:16:22
 # @LastEditors: IraXu
 # @Description: 
 # @FilePath: /ImmortalWrt-RedMi-AX6000/diy2-part2.sh
 # 开源让世界美好
### 

# 更新指定软件包
 ./scripts/feeds uninstall alist luci-app-alist frp luci-app-frpc luci-app-vlmcsd
 ./scripts/feeds install -p kiddin9 alist luci-app-alist frp luci-app-frpc luci-app-vlmcsd

# 删除多余的主题
# sed -i '/CONFIG_PACKAGE_luci-theme-argon=y/d' .config
sed -i '/CONFIG_PACKAGE_luci-theme-bootstrap-mod=y/d' .config

# 自定义默认网关，后方的192.168.10.1即是可自定义的部分
sed -i 's/192.168.1.1/192.168.10.1/g' package/base-files/files/bin/config_generate
# 固件版本名称自定义
# sed -i "s/DISTRIB_DESCRIPTION=.*/DISTRIB_DESCRIPTION='ImmortalWrt By IraXu $(date +"%Y%m%d") '/g" package/base-files/files/etc/openwrt_release

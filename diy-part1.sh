#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#smstools3
git clone --depth=1 https://github.com/koshev-msk/luci-app-smstools3 package/luci-app-smstools3

#helloworld
rm -rf package/helloworld
git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld

#check library
#mkdir -p package/helloworld
for i in "dns2socks" "microsocks" "ipt2socks" "pdnsd-alt" "redsocks2"; do \
  svn checkout "https://github.com/immortalwrt/packages/trunk/net/$i" "package/helloworld/$i"; \
done

#update lai
#./scripts/feeds update helloworld
#./scripts/feeds install -a -f -p helloworld



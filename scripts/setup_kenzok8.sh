#!/bin/bash


rm -rf feeds
(cd package
  # smartdns/passwall/ssrplus/...
  git clone https://github.com/kenzok8/openwrt-packages.git
  # passwall dependencuy
  git clone https://github.com/kenzok8/small.git

)
scripts/feeds update -a scripts/feeds install -a

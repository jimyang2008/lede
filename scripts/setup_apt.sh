#!/bin/bash


${CHINA_APT:-true} && {
  sudo cp /etc/apt/sources.list{,.bak}
  sudo sed -i -e s=http://archive.ubuntu.com=https://mirrors.tuna.tsinghua.edu.cn=g /etc/apt/sources.list
  sudo sed -i -e s=http://security.ubuntu.com=https://mirrors.tuna.tsinghua.edu.cn=g /etc/apt/sources.list
}

sudo apt update
sudo apt install -y build-essential asciidoc binutils bzip2 gawk gettext git libncurses5-dev libz-dev patch python3 python2.7 unzip zlib1g-dev lib32gcc1 libc6-dev-i386 subversion flex uglifyjs git-core gcc-multilib p7zip p7zip-full msmtp libssl-dev texinfo libglib2.0-dev xmlto qemu-utils upx libelf-dev autoconf automake libtool autopoint device-tree-compiler g++-multilib antlr3 gperf wget curl swig rsync



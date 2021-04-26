# Tips

## Upgrade Debian 9(stretch) to 10(buster)

* replace "stretch" with "buster" in /etc/apt/sources.list

      sudo sed -i -e 's/stretch/buster/g' /etc/apt/sources.list

* run APT update commands

      sudo apt update
      sudo apt upgrade -y
      sudo apt dist-upgrade -y

## install kernel headers

For `apt-get install linux-headers-$(uname -r)` to work, you need to be running a kernel which is still available from the distribution repositories; in most cases, this basically means you need to be running the latest supported kernel for your distribution.

On Debian, the simplest option is
```
apt-get update
apt-get install linux-image-amd64 linux-headers-amd64
```

## use Tsinghua mirror for Ubuntu repo

    sudo cp /etc/apt/sources.list{,.bak}
    sudo sed -i -e s=http://archive.ubuntu.com=https://mirrors.tuna.tsinghua.edu.cn=g /etc/apt/sources.list
    sudo sed -i -e s=http://security.ubuntu.com=https://mirrors.tuna.tsinghua.edu.cn=g /etc/apt/sources.list

## setup proxy for build

    proxy_ip=192.168.199.120
    proxy_port=1080
    export all_proxy=socks5h://${proxy_ip}:${proxy_port}
    git config --global http.proxy $all_proxy
    git config --global https.proxy $all_proxy

## enable extra feeds

```
cp feeds.conf.default{,.bak}
sed -i -e '/helloworld/ s/#//' feeds.conf.default
cat <<EOF >> feeds.conf.default
src-git kenzo https://github.com/kenzok8/openwrt-packages
src-git small https://github.com/kenzok8/small
EOF
```

## remove Docker paths in PATH
export PATH=$(echo $PATH | sed 's/:[^:]*\(Docker\| VS \)[^:]*//g')

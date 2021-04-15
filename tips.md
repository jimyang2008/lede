# Tips

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

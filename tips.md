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

## enable helloworld feed

    sed '/helloworld/ s/#//' feeds.conf.default

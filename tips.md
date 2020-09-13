# Tips

## setup proxy for build

    proxy_ip=192.168.199.120
    proxy_port=1080
    export all_proxy=socks5h://${proxy_ip}:${proxy_port}
    git config --global http.proxy $all_proxy
    git config --global https.proxy $all_proxy

## enable helloworld feed

    sed '/helloworld/ s/#//' feeds.conf.default

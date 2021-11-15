proxy_on() {
    export {http,https,ftp}_proxy='http://proxy:port'
    export no_proxy="localhost,127.0.0.1"
}

proxy_off(){
    unset http_proxy
    unset https_proxy
    unset ftp_proxy
    unset rsync_proxy
    echo -e "Proxy environment variable removed."
}


alias npm="npm --registry=https://registry.npm.taobao.org"
alias yarn="yarn --registry=https://registry.npm.taobao.org"

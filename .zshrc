function proxy_on() {
    export no_proxy="localhost,127.0.0.1,localaddress,.localdomain.com"

    if (( $# > 0 )); then
        valid=$(echo $@ | sed -n 's/\([0-9]\{1,3\}.\)\{4\}:\([0-9]\+\)/&/p')
        if [[ $valid != $@ ]]; then
            >&2 echo "Invalid address"
            return 1
        fi

        export http_proxy="http://$1/"
        export https_proxy=$http_proxy
        export ftp_proxy=$http_proxy
        export rsync_proxy=$http_proxy
        echo "Proxy environment variable set."
        return 0
    fi

    echo -n "username: "; read username
    if [[ $username != "" ]]; then
        echo -n "password: "
        read -es password
        local pre="$username:$password@"
    fi

    echo -n "server: "; read server
    echo -n "port: "; read port
    export http_proxy="http://$pre$server:$port/"
    export https_proxy=$http_proxy
    export ftp_proxy=$http_proxy
    export rsync_proxy=$http_proxy
    export HTTP_PROXY=$http_proxy
    export HTTPS_PROXY=$http_proxy
    export FTP_PROXY=$http_proxy
    export RSYNC_PROXY=$http_proxy
}

function proxy_off(){
    unset http_proxy
    unset https_proxy
    unset ftp_proxy
    unset rsync_proxy
    echo -e "Proxy environment variable removed."
}

export {http,https,ftp}_proxy='http://proxy:port'
export no_proxy="localhost,127.0.0.1"

alias npm="npm --registry=https://registry.npm.taobao.org"
alias yarn="yarn --registry=https://registry.npm.taobao.org"

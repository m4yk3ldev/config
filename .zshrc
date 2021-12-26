if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/maykel/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git fzf docker command-not-found rsync)

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

proxy_on() {
    export {http,https,ftp}_proxy='http://10.12.7.254:3128'
    export no_proxy="localhost,127.0.0.1"
}

proxy_off(){
    unset http_proxy
    unset https_proxy
    unset ftp_proxy
    unset rsync_proxy
    echo -e "Proxy environment variable removed."
}

source /usr/share/nvm/init-nvm.sh


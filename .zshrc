# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="${HOME}/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git fzf docker command-not-found rsync nvm emoji emoji-clock yarn npm archlinux adb battery colored-man-pages)

[[ ! -f $ZSH/oh-my-zsh.sh  ]] || source $ZSH/oh-my-zsh.sh


 [[ ! -f /usr/share/nvm/init-nvm.sh ]] || source /usr/share/nvm/init-nvm.sh

alias v="nvim"
alias vim="nvim"
export EDITOR="nvim"

alias ls='exa --icons'
alias l='ls -l'
alias la='ls -a'
alias lla='ls -la'
alias lt='ls --tree'
export BROWSER="google-chrome-stable"
alias cnpm='npm --registry=http://nexus.prod.uci.cu/repository/npm-all/'

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
export NODE_OPTIONS="--max-old-space-size=8192"

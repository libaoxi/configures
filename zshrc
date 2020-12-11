source ~/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found
antigen bundle rbenv 
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions 
antigen bundle zsh-users/zsh-autosuggestions


# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply


export HOMEBREW_BOTTLE_DOMAIN=https://mirrors.tuna.tsinghua.edu.cn/homebrew-bottles
export NODEJS_ORG_MIRROR=http://npm.taobao.org/mirrors/node

function proxy() {
  export ALL_PROXY=http://127.0.0.1:1087
  echo 'Proxy on'
}

function unproxy() {
  unset ALL_PROXY
  echo 'Proxy off'
}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!

# export PKG_CONFIG_PATH=/usr/local/opt/openssl/lib/pkgconfig
# export CPPFLAGS=-I/usr/local/opt/openssl/include # for mage config
# export LDFLAGS=-L/usr/local/opt/openssl/lib # for mage config

export PROJECT_NAME=mage_main

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/barry/.sdkman"
[[ -s "/Users/barry/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/barry/.sdkman/bin/sdkman-init.sh"

eval "$(fnm env)"
export FNM_NODE_DIST_MIRROR="http://npm.taobao.org/mirrors/node"

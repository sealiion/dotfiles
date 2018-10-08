# Add alias
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias l='ls -al --color=auto'
alias ll='ls -al --color=auto'
alias lll='ls -al --color=auto'
alias grep='grep --color=auto'

# Add path
set -g -x PATH /usr/local/bin $HOME/bin $PATH

# Set encoding
set -x LANG ja_JP.UTF-8

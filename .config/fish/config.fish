# Add alias
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias l='ls -al --color=auto'
alias ll='ls -al --color=auto'
alias lll='ls -al --color=auto'
alias grep='grep --color=auto'
alias lessf='less +F'

# Start ssh-agent
#eval (ssh-agent -c)
#ssh-add ~/.ssh/github_rsa

# Add path
# TODO /$HOME/bin/フォルダが無ければ作成するように設定する
set -g -x PATH /usr/local/bin $HOME/bin $PATH

# Set encoding
set -x LANG ja_JP.UTF-8

# Exit shells
#function on_exit --on-process %self
#    ssh-agent -k
#end

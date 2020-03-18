# .bashrc

# Export TERM
export TERM=xterm

# Add alias
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias l='ls -al --color=always'
alias ll='ls -al --color=always'
alias lll='ls -al --color=always'
alias grep='grep --color=always'
alias lessf='less +RF'
alias man='env LANG=ja_JP.utf8 man'
#alias which='alias | which --tty-only --read-alias --show-dot --show-tilde'

# Add path
PATH=$HOME/bin:$PATH
export PATH

# Start ssh-agent
#eval $(ssh-agent)
#ssh-add ~/.ssh/github_rsa

# Source global definitions
if [ -f /etc/bashrc ]; then
        . /etc/bashrc
fi

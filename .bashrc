# .bashrc

# Add alias
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias l='ls -al --color=auto'
alias ll='ls -al --color=auto'
alias lll='ls -al --color=auto'
alias grep='grep --color=auto'
#alias which='alias | which --tty-only --read-alias --show-dot --show-tilde'

# Add path
PATH=$PATH:$HOME/bin
export PATH

# Start ssh-agent
#eval $(ssh-agent)
#ssh-add ~/.ssh/github_rsa

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

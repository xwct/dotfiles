# bash settings
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=10000
HISTFILESIZE=100000

# brew path stuff
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

# general aliases
alias ..='cd ..'
alias :q='exit'
alias dir='grep --color=auto'
alias dog='echo bark'
alias fuck='sudo $(fc -ln -1)' #sudo before last command
alias grep='grep --color=auto'
alias l='ls -CF'
alias la='ls -la'
alias ll='ls -alF'
alias ls='ls -hG'
alias mkdir='mkdir -p'
alias myip='wget http://ipinfo.io/ip -qO -'
alias rmr='rm -r'
alias wd='pwd'

# git
alias ga='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gp='git push -u'
alias gpl='git pull'
alias gpm='git push -u origin master'
alias gpo='git push -u origin'
alias gr='git rm'
alias gs='git status'

# ssh
ip=92.221.26.233
alias sshc='ssh $ip -p 43434' #carrot
alias ssho='ssh $ip -p 41414' #onion
alias sshp='ssh $ip -p 42424' #potet

# config edit
alias ez='vim ~/.bashrc'
alias sz='source ~/.bashrc'

export EDITOR=/usr/bin/vim

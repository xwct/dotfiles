# instead of "cd dir" only type "dir"
setopt AUTO_CD

# pushd on cd
setopt AUTO_PUSHD

# don't print dirstack on pushd/popd
setopt PUSHD_SILENT

# command autocorrect
setopt CORRECT
CORRECT_IGNORE='_*'

# delay mass file removal
setopt RM_STAR_WAIT

# allow quitting with background jobs
setopt NO_HUP
setopt NO_CHECK_JOBS

# proper globbing
setopt GLOB_COMPLETE
setopt NO_CASE_GLOB
setopt NUMERIC_GLOB_SORT
setopt EXTENDED_GLOB

# error on unmatched files
unsetopt NOMATCH

[[ -a /usr/share/doc/pkgfile/command-not-found.zsh ]] && source /usr/share/doc/pkgfile/command-not-found.zsh

alias ls='ls --color --hide *.pyc'
alias grep='grep --color'

alias mkdir='mkdir -p'
alias :q=exit

alias ez="$EDITOR ~/.zshrc"
alias sz='source ~/.zshrc'

alias dog='echo bark'

# functions
unpack()
{
    # file exists
    if [ -f "$1" ] ; then
        case "$1" in
            *.tar.bz2) tar xvjf "$1" ;;
            *.tar.gz) tar xvzf "$1" ;;
            *.bz2) bunzip2 "$1" ;;
            *.rar) rar x "$1" ;;
            *.gz) gunzip "$1" ;;
            *.tar) tar xvf "$1" ;;
            *.tbz2) tar xvjf "$1" ;;
            *.tgz) tar xvzf "$1" ;;
            *.zip) unzip "$1" ;;
            *.Z) uncompress "$1" ;;
            *.7z) 7z x "$1" ;;
            *.xz) xz -d "$1" ;;
            *) echo "I don't know how to extract $1"; return 1 ;;
        esac
    else
        echo "$1 is not a valid file"
        return 2
    fi
}

# alt-s to add sudo to beginning of line
insert_sudo () { zle beginning-of-line; zle -U "sudo " }
zle -N insert-sudo insert_sudo
bindkey "^[s" insert-sudo

# completion
zstyle ':completion:*'  matcher-list 'm:{a-z}={A-Z}'

# history
HISTFILE=~/.history
SAVEHIST=10000
HISTSIZE=10000

# ignore duplicates, ignore spaces, save extended info, etc. etc.
setopt APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt HIST_NO_STORE
setopt HIST_VERIFY
setopt EXTENDED_HISTORY
setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

# load zsh modules
autoload -U promptinit compinit colors
promptinit
compinit
colors

# setup prompt
PROMPT="%n@%m %{$fg_bold[yellow]%}%2~%{$reset_color%}%# "
RPROMPT="[%{$fg_no_bold[yellow]%}%?%{$reset_color%}]"

# only display rprompt for current line
setopt TRANSIENT_RPROMPT

#Alias
alias nmclid="nmcli d"

#Date variable
now=$(date +"%Y_%d_%m_%H_%M")


// X setup
xrdb ~/.Xresources

xbindkeys

xset r rate 200 25
setxkbmap -layout no -variant nodeadkeys

setxkbmap -option caps:backspace
setxkbmap -option shift:both_capslock
xmodmap -e "clear Lock"

// daemons
//someday i will make this script ...someday
//~/dotfiles/bin/status.sh &
urxvtd -q -o -f

export EDITOR=vim
export VISUAL=visual-studio-code

exec dwm

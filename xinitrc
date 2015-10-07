// X setup
xrdb ~/.Xresources

xbindkeys
xfce4-power-manager

xset r rate 200 25
setxkbmap -layout no
//-variant swerty

setxkbmap -option caps:backspace
setxkbmap -option shift:both_capslock
xmodmap -e "clear Lock"

// daemons
//someday i will make this script ...someday
//~/dotfiles/bin/status.sh &
urxvtd -q -o -f

export EDITOR=vim
#export VISUAL=visual-studio-code

exec awesome

// X setup
xrdb ~/.Xresources

xbindkeys
xfce4-power-manager

xset r rate 200 25
setxkbmap -layout no -variant nodeadkeys

setxkbmap -option caps:backspace
setxkbmap -option shift:both_capslock
xmodmap -e "clear Lock"

// daemons
~/dotfiles/bin/status.sh &
urxvtd -q -o -f

exec awesome

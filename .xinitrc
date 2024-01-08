#!/bin/sh


# Keyboard Layout
setxkbmap us,ru -option 'grp:ctrl_space_toggle'

# Display Resolution
xrandr --output eDP-1 --mode 1920x1080 --rate 60 &

# Compositor
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
picom -f &

# Bar
while true; do
	.config/scripts/ubar
	sleep 0.5s
done &

# Wallpaper
nitrogen --restore &

# DWM
while true; do
	dwm >/dev/null 2>&1
done

#!/bin/sh

setxkbmap -layout us,ru -option grp:caps_toggle
xscreensaver --no-splash &
autorandr --change
exec i3

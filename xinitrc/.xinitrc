#!/bin/sh

setxkbmap -layout us,ru -option grp:caps_toggle
xscreensaver --no-splash &
exec i3

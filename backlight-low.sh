#!/bin/sh
xbacklight -set 1
xgamma -gamma 1
pkill notify-osd
xset s off
notify-send -t 100 -a Backlight Backlight "Backlight set to 1%, screensaver off"


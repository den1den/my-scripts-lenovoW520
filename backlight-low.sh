#!/bin/sh
xbacklight -set 1
xgamma -gamma 0.75
pkill notify-osd
notify-send -t 100 -a Backlight Backlight "Backlight set to 1%"

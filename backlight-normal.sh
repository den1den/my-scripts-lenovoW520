#!/bin/sh
xgamma -gamma 1.0
xbacklight -set 50
pkill notify-osd
notify-send -t 100 -a Backlight Backlight "Backlight set to 50%"

#!/bin/sh
xgamma -gamma 1.0
xbacklight -set 50
pkill notify-osd
xset s on
notify-send -t 100 -a Backlight Backlight "Backlight set to 50%, screensaver on"


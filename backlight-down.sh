#!/bin/sh
xgamma -gamma 1.0
l=$(xbacklight -get)
l2=$(echo "$l / 2" | bc -l)
if [ $(echo "$l2 > 2" | bc) = 1 ]
then
	xbacklight -set $l2
	pkill notify-osd
	notify-send
	notify-send -t 100 Backlight "Backlight set to $l2%"
else
	xbacklight -set 2
	pkill notify-osd
	notify-send
	notify-send -t 100 Backlight "Backlight set to 2%"
fi

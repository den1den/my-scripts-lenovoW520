#!/bin/sh
xgamma -gamma 1.0
l=$(xbacklight -get)
l2=$(echo "$l * 1.5 + 1" | bc -l)
echo $l2
if [ $(echo "$l2 > 100" | bc) = 1 ]
then
	xbacklight -set 100
	pkill notify-osd
	notify-send -t 100 Backlight "Backlight set to 100%"
else
	xbacklight -set $l2
	pkill notify-osd
	notify-send -t 100 Backlight "Backlight set to $l2%"
fi

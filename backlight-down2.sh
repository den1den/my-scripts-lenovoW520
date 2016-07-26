#!/bin/sh

xgamma -gamma 1.0
#sudo
gksudo -- cat /sys/class/backlight/intel_backlight/brightness | python -c "print int(0.5*float(raw_input())) or 1" | sudo tee /sys/class/backlight/intel_backlight/brightness
pkill notify-osd
notify-send
notify-send -t 100 Backlight "Backlight set to $(cat /sys/class/backlight/intel_backlight/brightness)"

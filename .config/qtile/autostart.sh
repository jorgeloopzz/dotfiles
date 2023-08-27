#!/bin/sh
picom --config ~/.config/picom/picom.conf &
dunst -conf /home/jorge/.config/dunst/qtilerc &
nm-applet &
cbatticon -n -i standard BAT1 &

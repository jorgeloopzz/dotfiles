#!/bin/sh
picom --config ~/.config/picom/picom.conf &
dunst -conf /home/jorge/.config/dunst/qtilerc &
nm-applet &
cbatticon -i standard BAT1 &
volumeicon &

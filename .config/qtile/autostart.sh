#!/bin/sh
xset s off &
nitrogen --restore &
redshift -P -O 3200 &
picom --config ~/.config/picom/picom.conf --experimental-backends &

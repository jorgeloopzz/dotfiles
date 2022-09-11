#!/bin/sh

battery=`acpi | awk '{print $4}' | sed 's/,//'`

if [[ $battery < 100 ]]; then
	echo -n "  $battery"
elif [[ $battery < 75 ]]; then
	echo -n "  $battery"
elif [[ $battery < 50 ]]; then
	echo -n "  $battery"
elif [[ $battery < 25 ]]; then
	echo -n "  $battery"
fi

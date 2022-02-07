while :; do
	# Date
	if (( $i % 60 == 0 )); then
        dte="$(date +"$(icon  ) %d/%m/%Y $(icon  ) %H:%M")"
	fi
	echo -e "$dte"
done

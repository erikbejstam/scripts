#!/bin/bash
# This script sets the brightness of a monitor using ddcutil.
# The provided argument is the desired screen brightness.
#
# TODO: Add the possibility to add a second parameter, that is the screen id. Not eeded right now since this is just private use on a specific machine.

if ! [[ "$1" =~ ^[0-9]+$ ]]; then
	echo "Error: Please provide a number between 1  and 100. Not $1."
	exit 1
fi

if (( $1 < 1 || $1 > 100 )); then
	echo "Error: The provided argument x must be 1 <= x <= 100."
	exit 1
fi

echo "Setting brightness to $1"

ddcutil --display 1 setvcp 10 "$1"

exit 0

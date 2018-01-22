#!/bin/sh

# https://github.com/jaagr/polybar/wiki/User-contributed-modules

#The icon that would change color
# icon=""
icon=" "
if pgrep -x "compton" > /dev/null
then
	echo "%{F#02597B}$icon " #Green
else
	echo "%{F#FBD346}$icon " #Gray
fi

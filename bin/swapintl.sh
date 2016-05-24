#!/bin/sh
set -u

setxkbmap -query | grep intl > /dev/null
if [ $? -eq 0 ] ; then
	setxkbmap -layout us -option ctrl:swapcaps
else
	setxkbmap -layout us -variant intl -option ctrl:swapcaps
fi

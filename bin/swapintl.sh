#!/bin/sh
set -u

setxkbmap -query | grep intl > /dev/null
if [ $? -eq 0 ] ; then
    setxkbmap -option
	setxkbmap -layout us -option ctrl:swapcaps -option ctrl:swap_rwin_rctl
else
    setxkbmap -option
	setxkbmap -layout us -variant intl -option ctrl:swapcaps -option ctrl:swap_rwin_rctl
fi

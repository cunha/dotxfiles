#!/bin/sh
set -u

setxkbmap -query | grep intl > /dev/null
if [ $? -eq 0 ] ; then
    setxkbmap -option
    setxkbmap -layout us -option ctrl:nocaps -option ctrl:swap_rwin_rctl
    rm -f .cache/us-intl
    pkill -USR1 i3status
else
    setxkbmap -option
    setxkbmap -layout us -variant intl -option ctrl:nocaps -option ctrl:swap_rwin_rctl
    touch .cache/us-intl
    pkill -USR1 i3status
fi

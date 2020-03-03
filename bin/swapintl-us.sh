#!/bin/sh
set -u

setxkbmap -query | grep intl > /dev/null
if [ $? -eq 0 ] ; then
    setxkbmap -option
    setxkbmap -layout us -option shift:both_capslock -option ctrl:nocaps
    rm -f .cache/us-intl
    pkill -USR1 i3status
else
    setxkbmap -option
    setxkbmap -layout us -variant alt-intl -option shift:both_capslock -option ctrl:nocaps
    touch .cache/us-intl
    pkill -USR1 i3status
fi

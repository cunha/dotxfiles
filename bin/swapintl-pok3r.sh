#!/bin/sh
set -u

setxkbmap -query | grep intl > /dev/null
if [ $? -eq 0 ] ; then
    setxkbmap -option
    setxkbmap -layout us -option shift:both_capslock
    rm -f .cache/us-intl
    echo " us-pok3r" > .cache/xkb-i3status
    pkill -USR1 i3status
else
    setxkbmap -option
    setxkbmap -layout us -variant alt-intl -option shift:both_capslock
    touch .cache/us-intl
    echo " br-pok3r" > .cache/xkb-i3status
    pkill -USR1 i3status
fi

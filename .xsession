configuring screens before firing X:
if xrandr --query | grep -Ee "^DP-1[^ ]* connected" > /dev/null ; then
	xrandr --output eDP-1 --off
	sleep 1s
	xrandr --output DP-1-1 --pos 0x0 --rotate left --auto
	sleep 1s
	xrandr --output DP-1-3 --pos 1080x300 --auto
	sleep 1s
	xrandr --dpi 96
	export GDK_SCALE=1
else
	xrandr --dpi 192
	export GDK_SCALE=2
fi

# openbox-session reads variables from ~/.config/openbox/environment
# openbox-session runs processes in ~/.config/openbox/autostart
# openbox-session runs processes in /etc/xdg/autostart and ~/.config/autostart
# exec openbox-session

export TZ='America/Sao_Paulo'
# export TZ='Europe/Berlin'
# export TZ='Australia/Sydney'
# export TZ='Asia/Singapore'

# to get proper cedilla in ibus, install ibus-table-compose
export GTK_IM_MODULE=xim
export XMODIFIERS="@im=none"
export MOZ_USE_OMTC=1
# export CHROMIUM_FLAGS="--enable-remote-extensions"
# export $(/usr/bin/gnome-keyring-daemon --start --components=ssh,secrets)

# thinkpad mouse wheel
# xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 8 1
# xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 8 2
# xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 8 6 7 4 5

setxkbmap -layout us -option ctrl:swapcaps
xcape -e "Control_L=Escape"
xrdb ~/.Xresources
xrdb -merge ~/.config/solarized-dark.Xresources
xset -b
xsetroot -mod 2 2 -fg black -bg midnightblue

# wicd-gtk &

# fluxbox -rc "/home/cunha/.config/fluxbox/init" -log "/home/cunha/.cache/fluxbox.log" &
# fbpid=$!
# sleep 1
# {
#         # dropbox start &
#         insync start &
#         nm-applet &
#         owncloud --logfile /home/cunha/.cache/owncloud.log &
#         pasystray &
#         /usr/bin/gnome-settings-daemon &
#         gsettings set org.gnome.settings-daemon.plugins.print-notifications active false
#         /usr/bin/setxkbmap -layout us -option ctrl:swapcaps -option ctrl:swap_rwin_rctl
#         /usr/bin/redshift -o -c /home/cunha/.config/redshift.conf
# }
# wait $fbpid

exec i3 -V >> ~/.cache/i3.log 2>&1
# exec gnome-session
# startkde

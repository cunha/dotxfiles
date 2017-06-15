export TZ='America/Sao_Paulo'
# export TZ='America/Los_Angeles'
# export TZ='Australia/Sydney'

# to get proper cedilla in ibus, install ibus-table-compose
export GTK_IM_MODULE=xim
export XMODIFIERS="@im=none"
export MOZ_USE_OMTC=1
# export CHROMIUM_FLAGS="--enable-remote-extensions"

export $(/usr/bin/gnome-keyring-daemon --start --components=ssh,secrets)

setxkbmap -layout us -option ctrl:swapcaps -option ctrl:swap_rwin_rctl
xcape -e "Control_L=Escape"

# thinkpad mouse wheel
# xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 8 1
# xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 8 2
# xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 8 6 7 4 5

xrdb ~/.Xresources
xrdb -merge ~/.config/solarized-dark.Xresources
xset -b

xsetroot -mod 2 2 -fg black -bg midnightblue

# clipit &
# dropbox start &
# insync start &
# nm-applet &
# owncloud --logfile /home/cunha/.cache/owncloud.log &
# pasystray &

# tmux new-session -d -s main
# tmux new-window -t main:1
# tmux new-window -d -t main:0 -n ranger ranger

# uxterm -e /usr/bin/zsh -c ssh-add .ssh/muxops_id_rsa .ssh/id_rsa &
# wicd-gtk &

if xrandr --query | grep -Ee "^DP-1[^ ]* connected" > /dev/null ; then
	xrandr --output eDP-1 --off
	sleep 1s
	xrandr --output DP-1-1 --pos 0x0 --rotate left --auto
	sleep 1s
	xrandr --output DP-1-3 --pos 1080x300 --auto
	sleep 1s
	xrandr --dpi 96
else
	xrandr --dpi 192
fi

i3 -V >> ~/.cache/i3.log 2>&1

# exec fluxbox -rc "/home/cunha/.config/fluxbox/init" -log "/home/cunha/.cache/fluxbox.log"
# exec gnome-session
# startkde

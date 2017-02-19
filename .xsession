# setxkbmap -layout us -option ctrl:swapcaps -option caps:escape -option ctrl:swap_rwin_rctl
setxkbmap -layout us -option ctrl:swapcaps -option ctrl:swap_rwin_rctl
xcape -e "Control_L=Escape"

export TZ='America/Sao_Paulo'

export GTK_IM_MODULE=xim
export XMODIFIERS="@im=none"
export MOZ_USE_OMTC=1

# thinkpad mouse wheel
# xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation" 8 1
# xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Button" 8 2
# xinput set-int-prop "TPPS/2 IBM TrackPoint" "Evdev Wheel Emulation Axes" 8 6 7 4 5

xrdb ~/.Xresources
xrdb -merge ~/.config/solarized-light.Xresources
xset -b

xsetroot -mod 2 2 -fg black -bg midnightblue

# clipit &
# dropbox start &
# insync start &
# nm-applet &
# pasystray &

# tmux new-session -d -s main
# tmux new-window -t main:1
# tmux new-window -d -t main:0 -n ranger ranger

# uxterm -e /usr/bin/zsh -c ssh-add .ssh/muxops_id_rsa .ssh/id_rsa &
# wicd-gtk &
# razercfg -r 3

# startkde
i3 -V >> ~/.cache/i3.log 2>&1
# fluxbox -rc "/home/cunha/.config/fluxbox/init" -log "/home/cunha/.cache/fluxbox.log"

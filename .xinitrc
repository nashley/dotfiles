xinput --set-prop 'DELL081C:00 044E:121F Touchpad' 'libinput Tapping Enabled' 1 &
xinput --set-prop 'DELL081C:00 044E:121F Touchpad' 'libinput Natural Scrolling Enabled' 1 &
xinput --set-prop 'DELL081C:00 044E:121F Touchpad' 'libinput Disable While Typing Enabled' 0 &
autocutsel &
mons -a &
dunst &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec i3

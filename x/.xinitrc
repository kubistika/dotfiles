#!/bin/sh

# set default terminal
export TERMINAL=termite

# set background image
~/.fehbg &

# enable switching keymap
setxkbmap -model pc104 -layout us,il -option grp:alt_shift_toggle

# start compton
compton -b --config ~/.compton.conf

# start i3 window manager
exec i3

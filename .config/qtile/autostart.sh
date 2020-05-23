#!/bin/sh
xrandr --output HDMI-2 --left-of DP-1 &
compton --config ~/.config/compton.conf --blur-method kawase --backend glx --blur-strength 10 --blur-background &
autocutsel &
export PATH=$PATH:$HOME/.local/bin &

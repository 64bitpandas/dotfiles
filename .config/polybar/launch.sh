#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

# Wait until all processes are shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Multi Monitor Setup

for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload example &
done

# Default startup


echo "Bars launched..." 

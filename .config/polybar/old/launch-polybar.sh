for m in $(polybar --list-monitors | cut -d":" -f1); do
    MONITOR=$m polybar --reload top -c "/home/ben/.config/polybar/space-theme" &
done
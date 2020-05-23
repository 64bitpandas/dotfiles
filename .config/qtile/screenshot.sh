#!/bin/sh

scrot -s $HOME/Pictures/screenshots/screenshot-$(date +%F_%T).png -e 'xclip -selection c -t image/png < $f'
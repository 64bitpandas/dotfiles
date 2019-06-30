#!/bin/bash

if [! -d "~/Pictures/screenshots"]
then
    mkdir ~/Pictures/screenshots
fi

scrot -s $HOME/Pictures/screenshots/screenshot-$(date +%F_%T).png -e 'xclip -selection c -t image/png < $f'

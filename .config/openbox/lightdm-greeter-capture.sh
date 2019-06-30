#!/bin/bash
sleep 15
DISPLAY=:0 XAUTHORITY=/var/run/lightdm/root/$DISPLAY xwd -root > /home/ben/Documents/dotfiles/temp.xwd
convert /home/ben/Documents/dotfiles/temp.xwd /home/ben/Documents/dotfiles/greeter.png
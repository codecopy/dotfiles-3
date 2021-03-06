#!/bin/bash

while sleep 10m
do
    if [[ $(pacman -Q linux-lts | cut -d " " -f 2) > $(uname -r) ]]; then
        notify-send "Kernel Update!" "Reboot required!"
    fi
done

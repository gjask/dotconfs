#!/bin/bash

unicode_start

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

if [ -z "$DISPLAY" -a $(tty) == /dev/tty1 ]; then
    #[ -f ~/.Xresources ] && xrdb ~/.Xresources
    export XKB_DEFAULT_LAYOUT=cz
    exec sway
fi

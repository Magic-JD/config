#!/bin/bash

if ! [ $TMUX ] && ! [ "$TERMINAL_EMULATOR" == "JetBrains-JediTerm" ]; then
    tmux a || tmux;
fi;

# Change caps to escape
setxkbmap -option caps:escape

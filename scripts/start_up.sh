#!/bin/bash

if ! [ $TMUX ]; then
    tmux a || tmux;
fi;

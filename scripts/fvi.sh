#!/bin/bash

FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS --select-1 --ansi --preview-window 'top:70%' --preview 'bat --color=always --style=header,grid --line-range :300 {}'"

if [[ -n $1 ]]; then
    FILE=$(fzf --query "$1")
else
    FILE=$(fzf)
fi

if [[ -n $FILE ]]; then
   vi $FILE; 
fi

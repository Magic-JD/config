#!/bin/bash

FILE=$(fzf --ansi --preview-window 'top:70%' --preview 'bat --color=always --style=header,grid --line-range :300 {}')

if [[ -n $FILE ]]; then
   vi $FILE; 
fi

#!/bin/bash

if [[ $1 ]]; then
    rg --line-number --with-filename . -g "$1" --color=always | fzf --delimiter=":" --with-nth=3.. --preview "bat --color=always {1} --highlight-line {2}" --preview-window ~8,+{2}-5;
else
    rg --line-number --with-filename . --color=always | fzf --delimiter=":" --with-nth=3.. --preview "bat --color=always {1} --highlight-line {2}" --preview-window ~8,+{2}-5;
fi

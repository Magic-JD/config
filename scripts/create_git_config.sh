#!/bin/bash

touch ~/.gitconfig

echo "
[include]
    path = ~/.gitconfig.general
" >> ~/.gitconfig

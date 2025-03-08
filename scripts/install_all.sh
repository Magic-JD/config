#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
test -d ~/.linuxbrew
eval "$(~/.linuxbrew/bin/brew shellenv)"
test -d /home/linuxbrew/.linuxbrew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew install bat \
    lazygit \
    starship \
    atac \
    zsh-autosuggestions \
    zsh-syntax-highlighting \
    atuin \
    yazi \
    btop \
    fzf \
    zoxide \
    fd \
    tmux \
    ripgrep \
    stow \
    eza \
    git-delta \
    miller \
    zsh-vi-mode \
    jq \
    zsh \
    uv \
    htmlq \
    pandoc \
    ddgr \
    magic-jd/tap/is-fast;

uv tool install --python 3.12 posting;

mkdir -p "$(bat --config-dir)/themes" && wget -P "$(bat --config-dir)/themes" https://github.com/catppuccin/bat/raw/main/themes/Catppuccin%20Mocha.tmTheme && bat cache --build;


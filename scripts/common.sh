#!/bin/sh

# check if stow is installed
if ! command -v stow &> /dev/null
then
    echo "stow could not be found, install stow and try again"
    exit 1
fi

# install configs relevant to Linux and Mac platforms
stow -S bash
stow -S tmux
stow -S vim

#!/bin/sh

if [ $+commands[direnv] ]; then
    echo "Set up direnv in your shell."
    eval "$(direnv hook zsh)"
fi
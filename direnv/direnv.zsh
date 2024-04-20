#!/bin/sh

if [ $+commands[direnv] ]; then
    echo "Set up direnv in your shell."
    eval "$(mise exec -- direnv hook zsh)"
fi
#!/bin/sh

# Launch node-env node version manager

if [ $+commands[nodenv] ]; then
    echo "Set up nodenv in your shell."
    eval "$(nodenv init -)"
fi
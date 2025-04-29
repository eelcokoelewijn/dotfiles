#!/bin/sh

if [ $+commands[brew] ]; then
    echo "Set up homebrew in your shell."
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

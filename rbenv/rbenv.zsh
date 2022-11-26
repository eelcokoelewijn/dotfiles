#!/bin/sh

# Launch rb-env ruby version manager

if [ $+commands[rbenv] ]; then
    echo "Set up rbenv in your shell."
    eval "$(rbenv init - zsh)"
fi
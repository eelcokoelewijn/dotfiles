#!/bin/sh

if [ $+commands[mise] ]; then
    echo "Activate Mise in your shell."
    eval "$(~/.local/bin/mise activate zsh)"
    MISE_IS_ACTIVATED=1
fi

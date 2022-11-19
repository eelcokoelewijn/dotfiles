#!/bin/sh
#
# Oh-my-zsh
#
# This installs oh-my-zsh.

# Check for Z-shell
DIRECTORY="$HOME/.oh-my-zsh"
if [ ! -d "$DIRECTORY" ]; then
  echo "  Installing oh-my-zsh for you."
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "  Oh my; oh-my-zsh is already installed."
fi
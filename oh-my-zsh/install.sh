#!/bin/sh
#
# Oh-my-zsh
#
# This installs oh-my-zsh.

OHMYZSH_PATH="$HOME/.oh-my-zsh"

# Check for Z-shell
if [ ! -d "$OHMYZSH_PATH" ]; then
  echo "  Installing oh-my-zsh for you."
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "  Oh my; oh-my-zsh is already installed."
fi
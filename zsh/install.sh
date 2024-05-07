#!/bin/sh
#
# zsh
#
# This installs zsh.

UNAME="$(uname -s)"
UNAMESHORT="${UNAME#1,5}"

# Check for zsh
if [ -z "$(command -v zsh)" ]; then
  # Install the correct zsh for each OS type
  if [ "$UNAMESHORT" = "Linux" ]; then
    echo "  Installing zsh for you."
    sudo dnf -y install util-linux-user zsh
    chsh -s "$(which zsh)"
  else
    echo "  macOS comes with zsh, nothing to install."
  fi
fi
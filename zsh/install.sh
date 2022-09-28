#!/bin/sh
#
# zsh
#
# This installs zsh.

UNAME="$(uname -s)"
UNAMESHORT="${UNAME#1,5}"

# Check for zsh
if [ -z "$(command -v zsh)" ]; then
  echo "  Installing zsh for you."
  # Install the correct zsh for each OS type
  if [ "$UNAMESHORT" = "Linux" ]; then
    sudo dnf -y install util-linux-user zsh
    chsh -s "$(which zsh)"
  fi
fi

exit 0
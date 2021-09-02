#!/usr/bin/env bash
#
# zsh
#
# This installs direnv.

# Check for nodenv
if [[ -z $(command -v zsh) ]]; then
  echo "  Installing zsh for you."
  # Install the correct homebrew for each OS type
  if [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    sudo dnf -y install util-linux-user zsh
    chsh -s $(which zsh)
  fi
fi

exit 0
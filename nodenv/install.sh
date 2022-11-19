#!/bin/sh
#
# nodenv
#
# This installs nodenv.

UNAME="$(uname -s)"
UNAMESHORT="${UNAME#1,5}"

# Check for nodenv
if [ -z "$(command -v nodenv)" ]; then
  echo "  Installing nodenv for you."
  # Install the correct homebrew for each OS type
  if [ "$UNAME" = "Darwin" ]; then
    brew install nodenv  
  elif [ "$UNAMESHORT" = "Linux" ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/nodenv/nodenv-installer/master/bin/nodenv-installer)"
  fi  
fi
#!/bin/sh
#
# direnv
#
# This installs direnv.

UNAME="$(uname -s)"
UNAMESHORT="${UNAME#1,5}"

# Check for direnv
if [ -z "$(command -v direnv)" ]; then
  echo "  Installing direnv for you."
  # Install the correct homebrew for each OS type
  if [ "$UNAME" = "Darwin" ]; then
    brew install direnv  
  elif [ "$UNAMESHORT" = "Linux" ]; then
    DIRECTORY="$HOME/.local/bin"
    if [ ! -d "$DIRECTORY" ]; then
      mkdir -p "$DIRECTORY"
    fi
    sh -c "$(curl -fsSL https://direnv.net/install.sh)"
  fi
fi

exit 0

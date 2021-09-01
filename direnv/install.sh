#!/usr/bin/env bash
#
# direnv
#
# This installs direnv.

# Check for direnv
if [[ -z $(command -v direnv) ]]; then
  echo "  Installing direnv for you."
  # Install the correct homebrew for each OS type
  if [[ "$(uname)" == "Darwin" ]]; then
    brew install direnv  
  elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    DIRECTORY="$HOME/.local/bin"
    if [[ ! -d "$DIRECTORY" ]]; then
      mkdir -p $DIRECTORY
    fi
    sh -c "$(curl -fsSL https://direnv.net/install.sh)"
  fi
fi

exit 0

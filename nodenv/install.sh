#!/usr/bin/env bash
#
# nodenv
#
# This installs nodenv.

# Check for nodenv
if [[ ! $(command -v nodenv &> /dev/null) ]]; then
  echo "  Installing nodenv for you."
  # Install the correct homebrew for each OS type
  if [[ "$(uname)" == "Darwin" ]]; then
    brew install nodenv  
  elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/nodenv/nodenv-installer/master/bin/nodenv-installer)"
  fi  
  
fi

exit 0

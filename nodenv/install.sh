#!/bin/sh
#
# nodenv
#
# This installs nodenv.

# Check for nodenv
if test ! $(which nodenv)
then
  echo "  Installing nodenv for you."
  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    brew install nodenv  
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/nodenv/nodenv-installer/master/bin/nodenv-installer)"
  fi  
  
fi

exit 0

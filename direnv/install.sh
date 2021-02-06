#!/bin/sh
#
# direnv
#
# This installs direnv.

# Check for nodenv
if test ! $(which direnv)
then
  echo "  Installing direnv for you."
  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    brew install direnv  
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    sh -c "$(curl -fsSL https://direnv.net/install.sh)"
  fi  
fi

exit 0

#!/bin/sh
#
# rbenv
#
# This installs rbenv.

# Check for rbenv
if test ! $(which rbenv)
then
  echo "  Installing rbenv for you."
  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    brew install rbenv  
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    sh -c "$(curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-installer)"
  fi  
  
  echo "  Installing ruby 2.7.1."
  rbenv install "2.7.1"
  echo "  Make ruby 2.7.1 the global default."
  rbenv global "2.7.1"
fi

exit 0

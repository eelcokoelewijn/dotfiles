#!/bin/sh
#
# rbenv
#
# This installs rbenv.

RUBY_VERSION="2.7.2"
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
fi

if [ $(rbenv global) != $RUBY_VERSION ]
then
  echo "  Installing ruby $RUBY_VERSION"
  rbenv install $RUBY_VERSION
  echo "  Make ruby $RUBY_VERSION the global default."
  rbenv global $RUBY_VERSION
else
  echo "$RUBY_VERSION already installed and set as global default."
fi

exit 0

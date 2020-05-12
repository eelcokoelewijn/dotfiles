#!/bin/sh
#
# rbenv
#
# This installs rbenv.

# Check for rbenv
if test ! $(which rbenv)
then
  echo "  Installing rbenv for you."
  brew install rbenv
  echo "  Installing ruby 2.7.1."
  rbenv install "2.7.1"
  echo "  Make ruby 2.7.1 the global default."
  rbenv global "2.7.1"
fi

exit 0

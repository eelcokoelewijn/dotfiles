#!/bin/sh
#
# rbenv
#
# This installs xcode-install gem.

# Is this macOS
if test ! "$(uname)" = "Darwin"
  then
  exit 0
fi

# Check for rbenv
if test $(which rbenv)
then
  echo "  Installing xcode-install for you."
  gem install xcode-install
  echo "  Run xcversion to see the options."
fi

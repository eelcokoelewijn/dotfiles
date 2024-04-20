#!/bin/sh
#
# rbenv
#
# This installs xcode-install gem.

# Is this macOS
UNAME="$(uname -s)"
if [ "$UNAME" != "Darwin" ]; then
  exit 0
fi

# Should use Mise to install xcodes 

# Check for rbenv
# if [ -n "$(which rbenv)" ]; then
#   echo "  Installing xcode-install for you."
#   gem install xcode-install
#   echo "  Run xcversion to see the options."
# fi

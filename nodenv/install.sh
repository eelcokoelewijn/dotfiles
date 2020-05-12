#!/bin/sh
#
# nodenv
#
# This installs nodenv.

# Check for nodenv
if test ! $(which nodenv)
then
  echo "  Installing nodenv for you."
  brew install nodenv
fi

exit 0

#!/bin/sh
#
# direnv
#
# This installs direnv.

# Check for nodenv
if test ! $(which direnv)
then
  echo "  Installing direnv for you."
  brew install direnv
fi

exit 0

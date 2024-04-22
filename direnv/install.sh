#!/bin/sh
#
# direnv
#
# This installs direnv.

# Check for direnv
if [ -z "$(command -v direnv)" ]; then
  echo "  Installing direnv for you."
  mise use -y -g direnv
fi

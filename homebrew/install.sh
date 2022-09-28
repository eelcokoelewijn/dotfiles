#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

SKIP_ON_LINUX="YES"
UNAME="$(uname -s)"
UNAMESHORT="${UNAME#1,5}"

# Check for Homebrew
if [ -z "$(command -v brew)" ]; then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if [ "$KERNELNAME" = "Darwin" ]; then
    echo "  Installing Xcode commandline tools."
    xcode-select --install

    echo "  Installing Homebrew."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  elif [ "$UNAMESHORT" = "Linux" ] && [ $SKIP_ON_LINUX != "YES" ]; then
    echo "  Installing Homebrew aka Linuxbrew."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

    echo "  Installing dev-tools."
    sudo yum groupinstall 'Development Tools'
    sudo yum install curl file git
    sudo yum install libxcrypt-compat # needed by Fedora 30 and up  
  else
    echo "  Skipped installing Homebrew."
  fi

fi

exit 0

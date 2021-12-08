#!/usr/bin/env bash
#
# rbenv
#
# This installs rbenv.

RUBY_VERSION="2.7.5"
# Check for rbenv
if [[ -z $(command -v rbenv) ]]; then
  echo "  Installing rbenv for you."
  # Install the correct homebrew for each OS type
  if [[ "$(uname)" == "Darwin" ]]; then
    brew install rbenv  
  elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
    git clone https://github.com/rbenv/rbenv.git "$HOME/.rbenv"
    git clone https://github.com/rbenv/ruby-build.git "$HOME/.rbenv/plugins/ruby-build"
  fi
  rbenv init
  echo "  Run $DOTFILES/rbenv/install.sh to install Ruby version $RUBY_VERSION as global default."
  exit 0
fi

if [[ $(rbenv global) != $RUBY_VERSION ]]; then
  echo "  Installing ruby $RUBY_VERSION"
  rbenv install $RUBY_VERSION
  echo "  Make ruby $RUBY_VERSION the global default."
  rbenv global $RUBY_VERSION
else
  echo "  Ruby $RUBY_VERSION already installed and set as global default."
fi

exit 0

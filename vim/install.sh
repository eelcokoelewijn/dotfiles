#!/bin/sh
#
# vim + plugins
#
# This installs vim.
DIRECTORY="$HOME/.vim/pack/plugins/start"

if [ ! -d "$DIRECTORY" ]; then
  mkdir -p $DIRECTORY
fi

if test "$(expr substr $(uname -s) 1 5)" = "Linux"
then
  echo "  Installing vim for you."
  sudo dnf install vim
fi

# This installs vim-plugins.

# Check for vim
if [ -d "$DIRECTORY" ]; then
    echo "  Installing vim plugins for you."

    # lightline
    if [ ! -d "$DIRECTORY/lightline" ]; then
        git clone https://github.com/itchyny/lightline.vim $DIRECTORY/lightline
    fi

    # auto-pairs
    if [ ! -d "$DIRECTORY/auto-pairs" ]; then
        git clone https://github.com/jiangmiao/auto-pairs.git $DIRECTORY/auto-pairs
    fi

    # vim-gitgutter
    if [ ! -d "$DIRECTORY/vim-gitgutter" ]; then
        git clone https://github.com/airblade/vim-gitgutter.git $DIRECTORY/vim-gitgutter
    fi
    
    # vim-surround
    if [ ! -d "$DIRECTORY/vim-surround" ]; then
        git clone https://github.com/tpope/vim-surround $DIRECTORY/vim-surround
    fi

    # rainbow
    if [ ! -d "$DIRECTORY/rainbow" ]; then
        git clone https://github.com/luochen1990/rainbow $DIRECTORY/rainbow
    fi
    
else
    echo "Vim $DIRECTORY doesnt exist, try and run vim first"
    echo "Run ./$HOME/.dotfiles/vim/install.sh to install plugins"
fi

exit 0

#!/bin/sh
#
# vim + plugins
#
# This installs vim.

PLUGINS_PATH="$HOME/.vim/pack/plugins/start"
UNAME="$(uname -s)"
UNAMESHORT="${UNAME#1,5}"

if [ ! -d "$PLUGINS_PATH" ]; then
  mkdir -p "$PLUGINS_PATH"
fi

if [ "$UNAMESHORT" = "Linux" ]; then
  echo "  Installing vim for you."
    if [[ "$EUID" = 0 ]]; then
        echo "(1) already root"
    else
        sudo -k # make sure to ask for password on next sudo ✱
        if sudo true; then
            echo "(2) correct password"
        else
            echo "(3) wrong password"
            exit 1
        fi
    fi  
  sudo dnf -y install vim
fi

# This installs vim-plugins.

# Check for vim
if [ -d "$PLUGINS_PATH" ]; then
    echo "  Installing vim plugins for you."

    # lightline
    if [ ! -d "$PLUGINS_PATH/lightline" ]; then
        git clone https://github.com/itchyny/lightline.vim "$PLUGINS_PATH/lightline"
    fi

    # auto-pairs
    if [ ! -d "$PLUGINS_PATH/auto-pairs" ]; then
        git clone https://github.com/jiangmiao/auto-pairs.git "$PLUGINS_PATH/auto-pairs"
    fi

    # vim-gitgutter
    if [ ! -d "$PLUGINS_PATH/vim-gitgutter" ]; then
        git clone https://github.com/airblade/vim-gitgutter.git "$PLUGINS_PATH/vim-gitgutter"
    fi
    
    # vim-surround
    if [ ! -d "$PLUGINS_PATH/vim-surround" ]; then
        git clone https://github.com/tpope/vim-surround "$PLUGINS_PATH/vim-surround"
    fi

    # rainbow
    if [ ! -d "$PLUGINS_PATH/rainbow" ]; then
        git clone https://github.com/luochen1990/rainbow "$PLUGINS_PATH/rainbow"
    fi
    
else
    echo "Vim $PLUGINS_PATH doesnt exist, try and run vim first"
    echo "Run ./$HOME/.dotfiles/vim/install.sh to install plugins"
fi

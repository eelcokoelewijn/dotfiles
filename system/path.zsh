HOME_BIN="$HOME/bin"
USR_LOCAL_BIN="/usr/local/bin"
USR_LOCAL_SBIN="/usr/local/sbin"
DOTFILES_BIN="$DOTFILES/bin"
HOME_LOCAL_BIN="$HOME/.local/bin"
MISE="$HOME/.local/share/mise/shims"
CARGO="$HOME/.cargo/bin"
AUTOCONF="/usr/local/autoconf/bin"
if ${MISE_IS_ACTIVATED:-false}; then
  # if mise is activated, add mise to the front of the path
  export PATH="$HOME_BIN:$AUTOCONF:$USR_LOCAL_BIN:$USR_LOCAL_SBIN:$DOTFILES_BIN:$HOME_LOCAL_BIN:$CARGO:$PATH"
else
  # if mise is not activated, add mise to the end of the path
  export PATH="$MISE:$HOME_BIN:$AUTOCONF:$USR_LOCAL_BIN:$USR_LOCAL_SBIN:$DOTFILES_BIN:$HOME_LOCAL_BIN:$CARGO:$PATH"
fi

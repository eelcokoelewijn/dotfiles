#!/bin/sh
#
# mise
#
# This installs mise.

# Check for mise
if [ -z "$(command -v "$HOME/.local/bin/mise")" ]; then
  echo "  Installing mise for you."
  curl https://mise.run | sh
  LOCAL_BIN="$HOME/.local/bin"
  MISE="$HOME/.local/share/mise/shims"
  export PATH="$MISE:$LOCAL_BIN:$PATH"
fi

# Plugin       Version     
# bundler      2.5.7
# carthage     0.39.1
# direnv       2.34.0      
# java         openjdk-17  
# mitmproxy    8.1.1       
# node         18.12.1
# node         20.12.1     
# ruby         3.2.2
# ruby         3.2.3
# sourcery     2.1.1
# sourcery     2.2.2
# swiftformat  0.53.5
# swiftlint    0.54.0
# tuist        3.42.2
# tuist        4.9.0
# xcodes       1.4.1
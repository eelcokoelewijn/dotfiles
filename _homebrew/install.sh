#!/bin/sh

# Check for Homebrew
# if [ -z "$(command -v brew)" ]; then
#     echo "  Installing Homebrew."
# 
#     # Install the correct homebrew for each OS type
#     if [ "$(uname)" = "Darwin" ]; then
#         echo "  Installing Homebrew."
#         /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# 
#         # Upgrade homebrew
#         echo "› brew update"
#         brew update
#     fi
# fi
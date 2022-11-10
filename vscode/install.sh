#!/bin/sh
#
# Visual Studio Code extensions
#
# Install listed extensions.

# Check for Homebrew
if [ -n "$(command -v code)" ]; then
  echo "  VSCode installed."
  EXSTENSIONS=" \
    bierner.markdown-mermaid \
    bungcip.better-toml \
    dbaeumer.vscode-eslint \
    eamodio.gitlens \
    esbenp.prettier-vscode \
    GitHub.vscode-pull-request-github \
    GraphQL.vscode-graphql \
    GraphQL.vscode-graphql-execution \
    GraphQL.vscode-graphql-syntax \
    Orta.vscode-jest \
    redhat.vscode-yaml \
    rust-lang.rust-analyzer \
    svanimpe.stencil \
    vadimcn.vscode-lldb"
  for EXSTENSION in $EXSTENSIONS
  do
    echo "  Installing $EXSTENSION extensions"
    code --install-extension "$EXSTENSION"
  done
else
  echo "  Skip extension installation no VSCode installed."
fi
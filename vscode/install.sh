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
    eamodio.gitlens \
    github.copilot \
    github.copilot-chat \
    esbenp.prettier-vscode \
    GitHub.vscode-pull-request-github \
    redhat.vscode-yaml \
    rust-lang.rust-analyzer \
    svanimpe.stencil \
    meezilla.json \
    ms-vscode.makefile-tools \
    rust-lang.rust-analyzer \
    sswg.swift-lang \
    tamasfe.even-better-toml \
    vadimcn.vscode-lldb \
    waderyan.gitblame"
  for EXSTENSION in $EXSTENSIONS
  do
    echo "  Installing $EXSTENSION extensions"
    code --install-extension "$EXSTENSION"
  done
else
  echo "  Skip extension installation no VSCode installed."
fi
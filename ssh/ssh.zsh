#!/bin/sh
#
# SSH
#
# Add SSH keys to keychain.

UNAME="$(uname -s)"
# Add ssh keys
if [ "$UNAME" = "Darwin" ]; then
    ssh-add --apple-use-keychain
fi
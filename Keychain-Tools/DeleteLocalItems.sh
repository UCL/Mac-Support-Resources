#!/bin/bash
# This script will delete the Local Items keychain.
if test -e /Users/$USER/Library/Keychains/????????-????-????-????-????????????; then
    echo "Local Items keychain found and will be deleted."
    rm -rf /Users/$USER/Library/Keychains/????????-????-????-????-????????????
    exit 0
else
    echo "No Local Items keychain found."
    exit 1
fi

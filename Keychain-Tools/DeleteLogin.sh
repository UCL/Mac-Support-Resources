#!/bin/bash
# This script will delete the login keychain.
if test -e /Users/$USER/Library/Keychains/login.keychain-db; then
    echo "Login keychain found and will be deleted."
    rm -f /Users/$USER/Library/Keychains/login.keychain-db
    exit 0
else
    echo "No login keychain found."
    exit 1
fi

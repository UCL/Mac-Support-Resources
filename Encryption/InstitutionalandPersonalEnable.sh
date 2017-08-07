#!/bin/bash
# This script enables FileVault 2 using the institutional recovery key
# stored in the same directory as the script and also gives the user
# a personal recovery key to use themselves. To use this script, run it
# with sudo from the same directory as your public (deployment)
# FileVaultMaster.keychain
# The personal key will be displayed to the user when the script is run, not saved.
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run with administrator privileges. Please try again using sudo."
  exit 1
fi
if test -e FileVaultMaster.keychain; then
    echo "FileVaultMaster found, please enter boot credentials."
    cp FileVaultMaster.keychain /Library/Keychains/FileVaultMaster.Keychain
    chown root:wheel /Library/Keychains/FileVaultMaster.keychain
    chmod 644 /Library/Keychains/FileVaultMaster.keychain
    fdesetup enable -keychain
    exit 0
else
    echo "No FileVaultMaster.keychain found, exiting."
    exit 1
fi

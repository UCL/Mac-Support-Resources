#!/bin/bash
# This script enables FileVault 2 using the institutional recovery key
# stored in the same directory as the script. To use this script, run it
# with sudo from the same directory as your public (deployment)
# FileVaultMaster.keychain
#
# Check if script has administrator rights (EUID of 0)
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run with administrator privileges. Please try again using sudo."
  exit 1
fi
# Check for FileVaultMaster.keychain - please create this file and put it
# in the same directory as this script is being run from. If you do not
# know how to make this file, please see:
# https://support.apple.com/en-gb/HT202385
if test -e FileVaultMaster.keychain; then
    echo "FileVaultMaster found, please enter boot credentials."
    cp FileVaultMaster.keychain /Library/Keychains/FileVaultMaster.Keychain
    chown root:wheel /Library/Keychains/FileVaultMaster.keychain
    chmod 644 /Library/Keychains/FileVaultMaster.keychain
    fdesetup enable -keychain -norecoverykey
    exit 0
else
# If FileVaultMaster.keychain is missing, exit.
    echo "No FileVaultMaster.keychain found, exiting."
    exit 1
fi

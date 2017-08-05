#!/bin/bash
# This script enables FileVault 2 using the institutional recovery key
# stored in the same directory as the script. To use this script, run it
# with sudo from the same directory as your public (deployment)
# FileVaultMaster.keychain
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as with administrator privileges. Please try again using sudo."
   exit 1
fi
cp FileVaultMaster.keychain /Library/Keychains/FileVaultMaster.Keychain
chown root:wheel /Library/Keychains/FileVaultMaster.keychain
chmod 644 /Library/Keychains/FileVaultMaster.keychain
fdesetup enable -keychain -norecoverykey

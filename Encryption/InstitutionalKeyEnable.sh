#!/bin/bash
# This script enables FileVault 2 using the institutional recovery key
# stored in the same directory as the script. To use this script, run it
# with sudo from the same directory as your public (deployment)
# FileVaultMaster.keychain
cp FileVaultMaster.keychain /Library/Keychains/FileVaultMaster.Keychain
chown root:wheel /Library/Keychains/FileVaultMaster.keychain
chmod 644 /Library/Keychains/FileVaultMaster.keychain
fdesetup enable -keychain -norecoverykey

#!/bin/bash
# This script enables FileVault 2 generating a personal recovery key
# stored in /temp/recovery.plist. To use this script, run it
# with sudo. Please ensure you make a safe copy of recovery.plist then
# remove it from the computer.
#
# This script will start encryption at next login, and the user may wait
# up to five times, on the sixth login encrption will be mandatory.
#
# Check if script has administrator rights (EUID of 0)
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run with administrator privileges. Please try again using sudo."
  exit 1
fi
# Enable FileVault 2 - please change /recovery.plist to the actual path
# where you want the personal recovery key stored.
fdesetup enable -defer /recovery.plist -forceatlogin 5

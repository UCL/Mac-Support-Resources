#!/bin/bash
# This script enables FileVault 2 generating a personal recovery key
# stored in /temp/recovery.plist. To use this script, run it
# with sudo. Please ensure you make a safe copy of recovery.plist then
# remove it from the computer.
#
# This script will start encryption at next login, and the user may wait
# up to five times, on the sixth login encrption will be mandatory.
#
fdesetup enable -defer /recovery.plist -forceatlogin 5

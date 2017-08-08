#!/bin/bash
# This script will migrate a user's home folder to a new account. This script depends on
# user folders being stored in /Users. If your user profiles are in a different
# location, please modify as appropriate before use.
# Use with caution - absolutely no warranty or support is provided.

# Check for admin rights
if [[ $EUID -ne 0 ]]; then
  echo "This script must be run with administrator privileges. Please try again using sudo."
  exit 1
fi

echo "This script will migrate a user home folder by moving it to /Users/<username> and chowning it to the desired user."

# Collect required variables
read -p "Enter home folder name/location to migrate: " oldfolder
read -p "Enter username to migrate to: " username
# Default group for local accounts on macOS is staff
read -p "Enter the user's default group: " usergroup

# Check no folder already exists, and migrate if clear to do so
if test -e /Users/$username; then
  echo "Target location already exists, please delete if desired, then re-run this script"
  exit 1
else
  mv $oldfolder /Users/$username
  chown -R $username:"$usergroup" /Users/$username
  echo "Script complete, exiting. If no errors shown, please test login as the newly migrated user"
  exit 0
fi

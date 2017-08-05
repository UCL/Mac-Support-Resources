# How to migrate a user home folder to a new machine/account
There are several circumstances where you may wish to migrate a user's home folder to a new machine or a new account.
To do this, copy the folder to the drive it needs to be on then use the MigrateProfile.sh script. This will move the home folder you desire to the correct location and chown it to the desired user. Note that this assumes your home folders are stored in /Users. If your home folders are stored elsewhere, please modify the script as needed.

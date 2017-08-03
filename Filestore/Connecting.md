# Connecting to Filestore@UCL
## Domain Join Status
First, it is useful to know the domain join status of a computer so that you can explain to users what they are likely to see. If the user is unsure, you can check easily for presence of a Kerberos ticket which is used for domain authentication:
### GUI Method to Check For Kerberos Tickets
1. Open 'Keychain Access'.
2. Click the 'Keychain Access' menu in the menu bar.
3. Select 'Ticket Viewer'
4. If there are entries in the list, the user has a Kerberos ticket, most likely from being domain joined. If the tickets end in @ad.ucl.ac.uk then they are joined to the main UCL AD domain, and their ticket can be used to authenticate to Filestore.
### Shell Method to Check For Kerberos Tickets
1. Type 'klist -l' and press enter at a shell prompt
2. If there are entries in the list, the user has a Kerberos ticket, most likely from being domain joined. If the ticket name ends in @ad.ucl.ac.uk then they are joined to the main UCL AD domain, and their ticket can be used to authenticate to Filestore.
### What if they are domain joined?
If a user is domain joined, they will not generally be prompted for their username and password. They may still be prompted if their computer does not have a current valid ticket, e.g. it was not able to connect to the domain controller on campus recently. If this happens, it is still possible an expired password in Keychain may be causing issues, but you can simply delete this password.
### What if they are not domain joined?
If a user is not domain joined, they will need to use their username and password to connect to Filestore. Outdated information in Keychain can prevent connection. In this case, you'll need to delete entries related to 'ad.ucl.ac.uk' from Keychain Access and have the user try again.
## Connecting, Step-by-Step
To connect, step-by-step, to file storage, do the following:
1. In Finder, select the 'Go' menu, then 'Connect to Server'. Alternatively, Command-K is the shortcut to this option.
2. In 'Server Address', enter:
  * For GroupFolders ('S-Drive'): smb://ad.ucl.ac.uk/GroupFolders
  * For Home ('N-Drive'): smb://ad.ucl.ac.uk/HomeG/abcdefg where:
    * abcdefg is the user's userID
    * G is the last character of their userID
3. Click the '+' icon to the right of the address box to add the server as a favourite (optional, but useful so the user can easily find it again in future).
4. Click 'Connect'.
5. Complete any required authentication steps (varies based on domain join status, above).
6. (Optional) Once connected, the user may want a shortcut on their dock. To do this, drag the share icon from the title bar of the Finder window on to the right side of the dock. This will create a shortcut on the dock. This shortcut can only be placed on the right side of the dock, as this is where folders, documents, and minimised windows are kept.
## Troubleshooting
### Network
The user must be on the UCL network to connect to Filestore@UCL. If they are off campus, please help them connect to the VPN.
If they are on-campus, please ensure they have connectivity to ad.ucl.ac.uk. Remember, if they're using an eduroam account from a different eduroam-participating institution, they will not be able to connect to UCL resources and will need to either change to their UCL eduroam account, or use the VPN.
Likewise, if they're using another institution's eduroam, they will need to use the VPN. Of note, this situation can happen even within UCL buildings, as we can see eduroam from our neighbours in various places, especially where we share walls with Birkbeck.
### DFS
The instructions above rely on the user's computer successfully traversing DFS. See [Apple KB PH26306](https://support.apple.com/kb/PH26306) for more information and further troubleshooting. If this fails, you can use the [UCL DFS Query Tool](http://webdfs01.ad.ucl.ac.uk/dfs-query/) to determine the user's non-DFS paths. Follow the instructions above and enter the paths from this tool in step two above.
### Keychain Access
If the user cannot authenticate, check that they do not have a stale Keychain entry for ad.ucl.ac.uk in Keychain Access. Any entries related to ad.ucl.ac.uk should be deleted if this is suspected as a potential problem, or if there are authentication errors.

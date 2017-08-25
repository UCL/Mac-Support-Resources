# Testing DFS on macOS
## What are we doing?
In order to better support Mac users, we want to simplify the connection process to Filestore@UCL. Currently, users are directed to the non-DFS paths for their home and group folders. This requires they look up these paths, it is slow and cumbersome, and may involve many paths especially for those working across multiple departments.
### Why testing?
This procedure of finding non-DFS paths was put in place by ISD due to trouble connecting to DFS paths from Macs, and various forms of unreliability we found.
### What changed?
Improvements have been made to the file storage and how it is integrated with Active Directory. Apple has also made improvements in their SMB stack. Some of us believe that the need to use non-DFS paths has likely been resolved, at least on more recent macOS releases.
### What do we need to determine?
Two questions need answered:
1. Is using DFS reliable on macOS in any situation?
2. If so, are their any OS versions or configurations for which it isn't reliable?
## How can we test?
A configuration for each OS, network, domain combination is available in the GitHub [DFS Testing Project](https://github.com/UCL/Mac-Support-Resources/projects/2). Please move a configuration you wish to test to 'in progress' and add your name to the note. Then test authentication, file types, nested folders, stability and permissions for that configuration as below:
* OS Version
    - 10.13 beta
    - 10.12
    - 10.11
    - 10.10
    - 10.9
* Network type
    - Departmental UCL public IP
    - UCL eduroam
    - UCL VPN
    - Departmental NAT
* Authentication
    - Username/password
    - Kerberos ticket
* File type
    - HTML
    - DOCX
    - PPTX
    - XLSX
    - SH
    - Apple bundle (e.g. APP, PKG, SCPTD, KEY)
* Nested folders
    - Ensure files are visible and accessible to three levels deep from the mounted point.
* Stability
    - Ensure a connection remains stable and function and passes tests after intervals of 30 minutes, 1 hour, 4 hours, and 8 hours.
* Permissions (if these fail please test with non-DFS paths, I don't actually know if these are maintained on the storage at all)
    - UNIX permissions
    - ACLs
## Follow-up
### Reporting Problems
If a problem is encountered, please submit it as an issue on the UCL Mac Support GitHub repository.
### Recording successes
Please move successful configurations to 'Passed Configurations' in the [DFS Testing Project](https://github.com/UCL/Mac-Support-Resources/projects/2).

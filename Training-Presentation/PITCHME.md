# UCL Mac Support Service
Intro Welcome Session
---
## Why are we here?
+++
### Is it because we like Apple?
No. <!-- .element: class="fragment" -->
+++
### Is it because we like computers?
No.  <!-- .element: class="fragment" -->
+++
### Is it because we're just bored?
No, definitely not. <!-- .element: class="fragment" -->
+++
### Then why are we here?
Students and education. We're here to support the teaching and research of UCL. Our students and staff come with Apple products, we need to ensure we're giving them the tools to make IT accessible to them, where they are. <!-- .element: class="fragment" -->
---
## The 'Big Five'
- Remote Access (VPN and Desktop@UCL Anywhere remote desktop) <!-- .element: class="fragment" -->
- Network (eduroam and Ethernet) <!-- .element: class="fragment" -->
- live@UCL (Email and Calendar from Office 365) <!-- .element: class="fragment" -->
- print@UCL (central Xerox managed print service) <!-- .element: class="fragment" -->
- Filestore@UCL (central NetApp file storage) <!-- .element: class="fragment" -->
+++
### Why do the 'big five' matter?
- Widely-used <!-- .element: class="fragment" -->
- Relied-upon <!-- .element: class="fragment" -->
- Critical to other services <!-- .element: class="fragment" -->
+++
### What are we offering for the 'big five'?
These five services will receive full support from ISD. We're here today mainly to learn about how we can better support and troubleshoot these services for our users.
---
## macOS
In order to support these five services, we'll also need to know and understand how to use the Mac itself. About half of our time today will be spent talking about the Mac, about a quarter on UCL services, and the remainder for questions and free time.
---
*'True simplicity is derived from so much more than just the absence of clutter and ornamentation. It's about bringing order to complexity.''*

\- Sir Jony Ive, Chief Design Officer, Apple
+++
## Two Simple Resources
There are two resources we will use for supporting both the 'big five' UCL services and for supporting Macs themselves.
+++
### GitHub
All the materials you'll see today are hosted on GitHub, where you'll find detailed help and resources for using them:

https://github.com/UCL/Mac-Support-Resources
+++
### Slack
Communicate with us, share you experiences, and get help from each other with Slack:

https://ucl-mac-support.slack.com/
---
## Bash and AppleScript
We will be using the bash shell and AppleScript for a lot of our work. They let us automate macOS and make your work easier
+++
### What is AppleScript?
AppleScript is Apple's scripting language available since System 7. The Script Editor built into macOS lets you develop and distribute AppleScript. AppleScript for the project will be packaged as signed apps for end users.
+++
### What is bash?
The Bourne Again SHell is a GNU Project free software alternative to the Bourne Shell. Aka it's a command processor.
+++
### Time for a bash script!
+++?code=Training-Presentation/profilemigrationexample.sh

@[1](Shebang - specify your interpreter!)
@[2-5](Hashes make comments)
@[7](Let people know what your script does in the comments)
@[8-11](`if`-`fi` statements only do something if a condition is met, in this case if the current EUID is *not* 0)
@[12](Keep those comments coming so people can understand!)
@[13](echo prints something in the user's shell)
@[15-18](read collects a variable, `-p` creates a prompt)
@[20-21](test allows one to perform various tests and return true or false, in this case `-e` tests if a file exists)
@[22-23](exit codes set the status of how the script completed, 1 is a general error, 0 is normal)
@[27](`$` reads a variable, and standard commands like `mv` are all available)
@[28](If you're not already familiar, `chown` - change owner - changes the owner of a file or directory)
@[29-31](And that's it! Who knows what this script just did?)
---
## macOS Tips and Tricks
Before we get into the UCL services, let's talk about a few tips and tricks around the OS. We will use bash and AppleScipt to help support both the OS and UCL-specific services!
+++
### Assistive Technology
Apple puts accessibility at the forefront in all they do, and we should aim to do the same. Every student, every researcher, every staff member, every person on Earth deserves the same opportunities to learn, work and grow. We should support all users in any way necessary to have the technology they need to thrive.
+++
### Keychain Management
Often, users can't do anything with their Mac because of Keychain issues. Here are some strategies for managing this problem today.
+++
### Encryption
Many people need to have full disk encryption to meet security requirements. Almost all users should have it. Let's discuss when to use it, when not to use it (rare!) and how to use it.
+++
### Profile Migration
There are multiple cases where a user may need to migrate their home folder from one computer to another, or from one account to another on the same computer (e.g. from a local account to a domain account).
---
## eduroam
*'eduroam (education roaming) is the secure, world-wide roaming access service developed for the international research and education community.'*

\- [eduroam.org](https://www.eduroam.org)
+++
### Connections Basics
For most users, getting started is simple. Select `eduroam` from the WiFi menu and enter:

Username: `userID@ucl.ac.uk`

Password: `UCL password`
+++
### 802.1x Profile Removal
Sometimes this goes wrong, the most common reason is because of a profile from another participating institution. Let's remove that profile!
---
## live@UCL
live@UCL is the email and calendar services from Office 365. Other Office 365 services are supported on a best efforts basis only.
+++
### Outlook Web Access
The easiest way to access email and calendar is through [Outlook Web Access](https://outlook.office365.com), and this allows users access to most features.
+++
### Outlook 2016
The Outlook desktop app can also be used (currently on version 2016). Some features are missing on Mac. Notably, there is no support for secondary shared calendars.
+++
### Other Clients
Other clients can only be supported on a best-efforts basis. If users encounter difficulty, refer them to [Microsoft documentation](https://support.office.com/en-gb/article/Access-your-account-using-a-Mac-e96367c3-3f39-4d16-91a3-410cc075d29b?ui=en-US&rs=en-GB&ad=GB).
---
## Remote Access
Remote access means allowing people to connect to UCL resources through the global public Internet.
+++
### VPN
VPN puts a user's computer on the UCL network directly. Users will need the Cisco AnyConnect client and Sophos anti-virus.
+++
### Desktop@UCL Anywhere
Desktop@UCL Anywhere provides the user with a Windows Server 2008 Citrix remote desktop experience.
---
## Filestore@UCL
Filestore@UCL provides each user with a 100 GB home folder (Home) and provides access to shared folders (GroupFolders), all stored on the central UCL NetApp infrastructure.
+++
### Connection Paths
For GroupFolders ('S-Drive'): `smb://ad.ucl.ac.uk/GroupFolders`

For Home ('N-Drive'): `smb://ad.ucl.ac.uk/HomeG/abcdefg` where:
  * abcdefg is the user's userID
  * G is the last character of their userID
+++
### Non-DFS
If DFS fails, please use the [UCL DFS Query Tool](http://webdfs01.ad.ucl.ac.uk/dfs-query/).
---
## print@UCL
print@UCL is the centrally managed printing service, allowing users to pick up jobs anywhere.
+++
### Automated Install
Use the [print@UCL Install](https://github.com/UCL/Mac-Support-Resources/blob/master/Print-UCL/Print-UCL-Install/Print%20UCL%20Install.zip) app, located on the UCL-Mac-Support GitHub repo, to create the print@UCL queue. Drivers will automatically download if needed.
+++
### Manual Setup
Install the Xerox printer support software, then add an SMB printer:

`smb://print.ucl.ac.uk/print-UCL`

using the Xerox WorkCentre 7655 driver.
---
## Playground Time!
I've talked quite enough, it's time to play with the things we've tried, and ask questions. The rest of this session is time for you to try things you want and to ask me questions. Let's learn together!
---
## Thank You!
Thank you for your time today, now let's all go out and give our students and staff excellent service to help make IT accessible and useful for every person.

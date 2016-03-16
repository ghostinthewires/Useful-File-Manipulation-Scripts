# Useful Manipulation Scripts #

A collection of file manipulation scripts that can be used to copy and delete files. Especially useful when used in conjunction with Windows Scheduled Tasks.

## Highlights ##

* FileCopy.bat
* FileCleanup.bat


## Usage ##

**FileCopy.bat**

* **Net Use * /delete /YES**

 * This is an undocumented switch to force disconnect a network drive. 
 * The /YES switch forces the disconnection, also if files are open, the disconnect succeeds without prompting the user.

<br>
 
* **Net use R: \\servername\sharename\folder /user:DOMAIN\USERNAME PASSWORD**

 * Maps a network drive as letter R. This can be changed to any letter that is available.
 * Full UNC path to network share and domain credentials to access the share (Preferably a service account with limited access)

<br>
 
* **robocopy C:\Reporting R:\ /COPYALL /B /SEC /MIR /R:0 /W:0 /log:"c:\logs\robolog.txt" /NFL /NDL**


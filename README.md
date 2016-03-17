# Useful File Manipulation Scripts #

A collection of file manipulation scripts that can be used to copy and delete files. Especially useful when used in conjunction with Windows Scheduled Tasks.

## Highlights ##

* FileCopy.bat
 * Copies files to network drive
 * Creates log of files copied or skipped

* FileCleanup.bat


## Usage ##

<br>

### **FileCopy.bat** ###

<br>

* **Net Use * /delete /YES**

 * This is an undocumented switch to force disconnect a network drive. 
 * The /YES switch forces the disconnection, also if files are open, the disconnect succeeds without prompting the user.

<br>
 
* **Net use R: \\servername\sharename\folder /user:DOMAIN\USERNAME PASSWORD**

 * Maps a network drive as letter R. This can be changed to any letter that is available.
 * Full UNC path to network share and domain credentials to access the share (Preferably a service account with limited access)

<br>
 
* **Robocopy C:\SourceDirectory R:\ /COPYALL /B /SEC /MIR /R:0 /W:0 /log:"c:\logs\robolog.txt" /NFL /NDL**

 * Uses Windows Robocopy to copy files from source directory to previously mapped R:
 * /COPYALL - Copies all file information
 * /B - Copies files in Backup mode
 * /SEC - Copies files with security
 * /MIR - Mirrors a directory tree (equivalent to /e plus /purge)
 * /R:0 - Specifies the number of retries on failed copies
 * /W:0 - Specifies the wait time between retries, in seconds
 * /log - Writes the status output to the log file (overwrites the existing log file)
 * /NFL - Specifies that file names are not to be logged.
 * /NDL - Specifies that directory names are not to be logged.

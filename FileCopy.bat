Net Use * /delete /YES
net use R: \\servername\sharename\folder /user:DOMAIN\USERNAME PASSWORD
robocopy C:\SourceDirectory R:\ /COPYALL /B /SEC /MIR /R:0 /W:0 /log:"c:\logs\robolog.txt" /NFL /NDL
:: OPTIONAL: Install Symantec Anti-Virus Corporate Edition Client
@Echo off
todo.pl "msiexec /qb /l* %SystemDrive%\netinst\logs\sav.txt /i \"%Z%\packages\sav-9.0\Symantec AntiVirus.msi\" RUNLIVEUPDATE=0 REBOOT=ReallySuppress"

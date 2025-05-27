:: Install the Windows 2000 resource kit
@Echo off
:: Force the installation directory to be C:\NTRESKIT for historical
:: reasons
todo.pl "msiexec /qb /l* %SystemDrive%\netinst\logs\reskit.txt /i %Z%\packages\reskit\W2000RK.MSI NTRK50DIR=%SystemDrive%\NTRESKIT"

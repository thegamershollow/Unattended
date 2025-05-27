:: Install WinXP (SP2) "Support Tools".
:: URL|ALL|http://download.microsoft.com/download/d/3/8/d38066aa-4e37-4ae8-bce3-a4ce662b2024/WindowsXP-KB838079-SupportTools-ENU.exe|packages/support-tools/winxpsp2-supporttools.exe
@Echo off
todo.pl ".reboot-on 194 %Z%\packages\support-tools\winxpsp2-supporttools.exe /Q /C:\"msiexec.exe /qb /l* %SystemDrive%\netinst\logs\suptools.txt /i suptools.msi REBOOT=ReallySuppress\""


:: OPTIONAL:  Install FileZilla
:: HOME: http://filezilla-project.org/
:: URL|All|http://downloads.sourceforge.net/project/filezilla/FileZilla_Client/3.8.0/FileZilla_3.8.0_win32-setup.exe|packages/filezilla/FileZilla_3.8.0_x86-setup.exe
:: URL|All|http://download.filezilla-project.org/client/FileZilla_3.36.0_win32-setup.exe|packages/filezilla/FileZilla_3.36.0_x86-setup.exe
:: URL|All|http://download.filezilla-project.org/client/FileZilla_3.36.0_win64-setup.exe|packages/filezilla/FileZilla_3.36.0_amd64-setup.exe


:: Run the installer
:: Latest version for Windows XP is 3.8.0
set VERSION=3.36.0
if "%WINVER%" == "winxpsp3" set VERSION=3.8.0

todo.pl "start /wait %Z%\packages\filezilla\FileZilla_%VERSION%_%PROCESSOR_ARCHITECTURE%-setup.exe /S"

:: OPTIONAL: Install PDFCreator (PDF Printer) 5.2.2
:: HOME: http://download.pdfforge.org/download/pdfcreator

@echo off
:: URL|ALL|http://cdn.download.pdfforge.org/pdfcreator/5.2.2/PDFCreator-5_2_2-Setup.exe|packages/pdfcreator/pdfcreator-5.2.2.setup.exe
:: URL|ALL|http://azure.download.pdfforge.org/pdfcreator/2.5.3/PDFCreator-2_5_3-Setup.exe|packages/pdfcreator/pdfcreator-2.5.3.setup.exe

:: No need for a desktop shortcut.
todo.pl "unlink.pl special:AllUsersDesktop\"\PDFCreator.lnk\"" 

:: Avoid auto update dialog
todo.pl ".ignore-err 1 reg add \"HKLM\SOFTWARE\PDFCreator\Program\" /v \"UpdateInterval\" /t REG_SZ /d \"0\" /f"

::If this system is XP then use 2.5.3
set VERSION=5.2.2
if "%WINVER%" == "winxpsp3" set VERSION=2.5.3

:: Install PDFCreator
:: To set default language, add /LANG=(language name)
todo.pl "%Z%\packages\pdfcreator\pdfcreator-%VERSION%.setup.exe /LOG=%SystemDrive%\netinst\logs\pdfcreator.txt /SILENT /COMPONENTS=\"program\" /NORESTART"

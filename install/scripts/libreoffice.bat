::OPTIONAL: Install LibreOffice
::HOME: http://www.libreoffice.org/
:: libreOffice 5.4.x is last release that works on windows XP
::URL|ALL|http://web.archive.org/web/20220721212714/http://archive-na.documentfoundation.org/libreoffice/old/5.4.7.2/win/x86/LibreOffice_5.4.7.2_Win_x86.msi|packages/libreoffice/libreoffice_5.4.7_win_x86_install.msi
::URL|ALL|http://web.archive.org/web/20240211091943/http://archive-na.documentfoundation.org/libreoffice/old/5.4.7.2/win/x86_64/LibreOffice_5.4.7.2_Win_x64.msi|packages/libreoffice/libreoffice_5.4.7_win_AMD64_install.msi
:: See bug https://bugs.documentfoundation.org/show_bug.cgi?id=112928
@echo off

:: Old systems use diferent versions.
set VERSION=24.8.7
if "%WINVER%" == "winxpsp3" set VERSION=5.4.7

todo.pl ".ignore-err 194 msiexec /qn /norestart /passive /i %Z%\packages\libreoffice\libreoffice_%VERSION%_win_%PROCESSOR_ARCHITECTURE%_install.msi"

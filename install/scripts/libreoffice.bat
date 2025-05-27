::OPTIONAL: Install LibreOffice
::HOME: http://www.libreoffice.org/
:: LibreOffice Fresh 25.2.3
:: <http://www.libreoffice.org/download/libreoffice-fresh/>
:: "LibreOffice Fresh is the stable version with the most recent features.
:: DEPLOYMENT INFO https://wiki.documentfoundation.org/Deployment_and_Migration
:: Users interested in taking advantage of our most innovative features should download and use our fresh version."
::URL|ALL|http://download.documentfoundation.org/libreoffice/stable/25.2.3/win/x86/LibreOffice_25.2.3_Win_x86.msi|packages/libreoffice/libreoffice_25.2.3_win_x86_install.msi
::URL|ALL|http://download.documentfoundation.org/libreoffice/stable/25.2.3/win/x86_64/LibreOffice_25.2.3_Win_x86-64.msi|packages/libreoffice/libreoffice_25.2.3_win_AMD64_install.msi

:: LibreOffice Still
:: <http://www.libreoffice.org/download/libreoffice-still/>
:: "LibreOffice Still is the stable version that has undergone more testing (over a longer time)
:: It is usually recommended for more conservative use."
:: libreOffice 24.8.x is last release that works on windows 7 and 8/8.1
::URL|ALL|http://download.documentfoundation.org/libreoffice/stable/24.8.7/win/x86/LibreOffice_24.8.7_Win_x86.msi|packages/libreoffice/libreoffice_24.8.7_win_x86_install.msi
::URL|ALL|http://download.documentfoundation.org/libreoffice/stable/24.8.7/win/x86_64/LibreOffice_24.8.7_Win_x86-64.msi|packages/libreoffice/libreoffice_24.8.7_win_AMD64_install.msi

:: libreOffice 5.4.x is last release that works on windows XP
::URL|ALL|http://archive-na.documentfoundation.org/libreoffice/old/5.4.7.2/win/x86/LibreOffice_5.4.7.2_Win_x86.msi|packages/libreoffice/libreoffice_5.4.7_win_x86_install.msi
::URL|ALL|http://archive-na.documentfoundation.org/libreoffice/old/5.4.7.2/win/x86_64/LibreOffice_5.4.7.2_Win_x64.msi|packages/libreoffice/libreoffice_5.4.7_win_AMD64_install.msi
:: See bug https://bugs.documentfoundation.org/show_bug.cgi?id=112928
@echo off

:: Old systems use diferent versions.
set VERSION=24.8.7
if "%WINVER%" == "winxpsp3" set VERSION=5.4.7
if "%WINVER%" == "win7" set VERSION=24.8.7

todo.pl ".ignore-err 194 msiexec /qn /norestart /passive /i %Z%\packages\libreoffice\libreoffice_%VERSION%_win_%PROCESSOR_ARCHITECTURE%_install.msi"

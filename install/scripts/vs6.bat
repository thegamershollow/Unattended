:: Install Visual Studio 6.0 and service pack
@Echo off
:: Trick acmboot.exe into thinking that GUI setup has already run
start /wait regedit /s %Z%\scripts\vs6.reg
if errorlevel 1 exit 1

:: Service Pack 6 for Visual Basic 6.0, Visual C++ 6.0 with Visual Source Safe 6.0d
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=A8494EDB-2E89-4676-A16A-5C5477CB9713>
:: No Download found for ARA.
:: No Download found for CSY.
:: No Download found for DAN.
:: URL|DEU|http://download.microsoft.com/download/5/6/0/560a4725-4ae4-41e9-abac-8dff2f25f0af/Vs6sp6.exe|updates/vs6/deu/vs6sp6.exe
:: No Download found for ELL.
:: URL|ENU|http://download.microsoft.com/download/1/9/f/19fe4660-5792-4683-99e0-8d48c22eed74/Vs6sp6.exe|updates/vs6/enu/vs6sp6.exe
:: URL|ESN|http://download.microsoft.com/download/6/d/7/6d77d007-23a6-434b-b932-e70f88b6a2ab/Vs6sp6.exe|updates/vs6/esn/vs6sp6.exe
:: No Download found for FIN.
:: URL|FRA|http://download.microsoft.com/download/4/1/b/41b29b6d-c426-4ffd-a319-4d4690e07b5f/Vs6sp6.exe|updates/vs6/fra/vs6sp6.exe
:: No Download found for HEB.
:: No Download found for HUN.
:: URL|ITA|http://download.microsoft.com/download/6/e/9/6e9a2a91-e1d5-47e0-a2af-ceb94e07567b/Vs6sp6.exe|updates/vs6/ita/vs6sp6.exe
:: URL|JPN|http://download.microsoft.com/download/8/e/9/8e9e24d9-e731-499b-991e-587633198356/Vs6sp6.exe|updates/vs6/jpn/vs6sp6.exe
:: URL|KOR|http://download.microsoft.com/download/4/a/9/4a9c57b6-0ff1-4f52-a7ad-387e3835856f/Vs6sp6.exe|updates/vs6/kor/vs6sp6.exe
:: No Download found for NLD.
:: No Download found for NOR.
:: No Download found for PLK.
:: No Download found for PTB.
:: No Download found for PTG.
:: No Download found for RUS.
:: No Download found for SVE.
:: No Download found for TRK.
todo.pl "%Z%\updates\vs6\%WINLANG%\setupsp6.exe /qn1 /g %SystemDrive%\netinst\logs\vs6sp6.txt" .reboot

:: NOTE: You must edit %Z%\site\keys.bat to set the vs6
:: variable to your license key
call %Z%\site\keys.bat
if %vs6%==xxxxxxx goto nokey
todo.pl "%Z%\packages\vs6\acmboot.exe /qn1 /g %SystemDrive%\netinst\logs\vs6.txt /k %vs6%" .reboot
if errorlevel 1 exit 1
exit 0

:nokey
@echo *** Unable to get VS6 license key
@echo ***  (did you forget to edit %Z%\site\keys.bat?)
exit 2

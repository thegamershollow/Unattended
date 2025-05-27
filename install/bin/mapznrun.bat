@echo off
if exist %SystemDrive%\netinst\permcred.bat call %SystemDrive%\netinst\permcred.bat
if exist %SystemDrive%\netinst\tempcred.bat call %SystemDrive%\netinst\tempcred.bat

if not %Z%. == . goto got_drive
set Z=Z:
:got_drive

:: If drive is already mapped, do nothing
if exist %Z%\ goto mapped

if not %Z_PATH%. == . goto got_path
set Z_PATH=\\ntinstall\install
:got_path

if %Z_USER%. == . goto no_user
if %Z_USER%. == "". goto no_user
set USER_ARG=/user:%Z_USER%
:no_user

:try_again
set COUNT=x%COUNT%
if not %COUNT% == xxxxxxxxxxxxxxxxxxxx goto mapit
echo Too many retries; giving up
goto hang

:mapit
echo Mapping %Z_PATH% on %Z%...

if not %Z_PATH%. == dvd. goto not_dvd
%SystemDrive%\netinst\mapcd.js \bin\todo.pl %Z%
if exist %SystemDrive%\netinst\setzpath.bat call %SystemDrive%\netinst\setzpath.bat
if exist %Z%\ goto mapped
echo Failed; retrying.
:: Sleep for 10 seconds
ping -n 10 localhost > nul
goto try_again

:not_dvd

net use %Z% %Z_PATH% %Z_PASS% %USER_ARG% /persistent:no
if exist %Z%\ goto mapped
net use %Z% /delete
echo Failed; retrying.
:: Sleep for 10 seconds
ping -n 10 localhost > nul
goto try_again

:mapped

echo ...done.
:: Clean up environment, except for %Z% and %Z_PATH%
set Z_USER=
set Z_PASS=
set USER_ARG=
set COUNT=

:: Invoke command passed as argument
%1 %2 %3 %4 %5 %6 %7 %8 %9
if not errorlevel 1 goto end
echo FAILURE in mapznrun.bat

:hang
goto hang

:end

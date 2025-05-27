@echo off
echo Unattended Boot Disk Starting....
set PATH=\
PROMPT $P$G

set Z_PATH=dvd
set Z_USER=guest
set Z_PASS=guest

echo Initializing CD/DVD rom drive....
shsucdx.com /D:FDCD001,V
:: Assuming that we can have up to 4 IDE CDROM drives
for %%a in (v w x y) do call checkz.bat %%a
echo SET DOS_ZDRV=%DOS_ZDRV%

set PATH=%DOS_ZDRV%\djgpp\bin;%DOS_ZDRV%\dosbin;%PATH%
set DJGPP=%DOS_ZDRV%\djgpp\djgpp.env
if exist %DJGPP% goto got_djgpp
echo *** %DJGPP% not found
echo *** (Did you download and install DJGPP?)
goto die

:got_djgpp

cwsdpmi -p -s-
set PERLLIB=%DOS_ZDRV%\lib

echo Starting install.pl...
perl %DOS_ZDRV%\dosbin\install.pl
if errorlevel 1 goto die

cwsdpmi -u

:: XP install requires smartdrv (http://support.microsoft.com/?id=296814)
smartcdx.exe

C:\netinst\doit.bat
:die
echo Aborting.
exit 1
:end
echo on
exit 0

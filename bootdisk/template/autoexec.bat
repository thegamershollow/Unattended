@echo off

:: Set these variables to your defaults

:: Install share
SET Z_PATH=\\ntinstall\install

:: Username for mapping install share
SET Z_USER=guest

:: Password for mapping install share
SET Z_PASS=guest

:: End of user settable variables

echo Unattended Boot Disk Starting....

set PATH=\;\NET
PROMPT $P$G

:: Set VERSION environment variable
call version.bat

:: Randomize hostname
:: delete the old system.ini if it exists and replace it with a clean copy
type \net\system.in_ > \net\system.ini
RANDOM 65535 >> \net\system.ini

echo Initializing Network Card....

:: Delete stale DHCP state file, if present.
if not exist \net\dhcp.prm goto state_gone
attrib -h -r -s \net\dhcp.prm > nul
del \net\dhcp.prm > nul
:state_gone

NET INITIALIZE /DYNAMIC
NETBIND.COM
UMB.COM
TCPTSR.EXE
TINYRFC.EXE
:: DNR.EXE

:retry
CHOICE /C:YN /T:N,5 Override bootdisk defaults (if unsure, say yes)
if errorlevel 2 goto gotcreds
echo Enter location of install share (default %Z_PATH%):
nset INPUT=$0
if not %INPUT%. == . set Z_PATH=%INPUT%
echo Enter username for mapping install share (default %Z_USER%):
nset INPUT=$0
if not %INPUT%. == . set Z_USER=%INPUT%
echo Enter password for mapping install share (default %Z_PASS%):
nset INPUT=$0
if not %INPUT%. == . set Z_PASS=%INPUT%
set INPUT=

:gotcreds

:: MSCLIENT does not allow DOMAIN\username, but we might need the
:: domain for authentication later.  So, if Z_USER is of the form
:: "DOM\username", split it so that Z_DOMAIN is DOM and Z_USER is
:: username.  This particular awful hack was stolen from
:: <http://www.ericphelps.com/batch/charactr/>.
echo = | choice /s /c=%Z_USER%= "split.bat " > temp.bat

call temp.bat

set Z_USER=%user%
set Z_DOMAIN=%domain%
set user=
set domain=

:: LOGON
echo Starting network....
NET LOGON %Z_USER% %Z_PASS% /YES /SAVEPW:NO
if not errorlevel 1 goto gotnet
echo *** Unable to start network.  (Are you using the right driver?)
echo *** Retrying...
NET LOGOFF > nul
goto retry

:gotnet
:: Save MAC address in file (to be parsed later).
net diag /status < crlf.txt > \netdiag.txt

echo Mapping Z: to %Z_PATH%...
NET USE Z: %Z_PATH%
if not errorlevel 1 goto got_z
echo Failed.  Retrying...
goto retry

:got_z
set PATH=Z:\djgpp\bin;Z:\dosbin;%PATH%

:: Save IP address in file (to be parsed later).
ipconfig \net > \ipconfig.txt < nul

set DJGPP=Z:\djgpp\djgpp.env

if exist %DJGPP% goto got_djgpp
echo *** %DJGPP% not found
echo *** (Did you download and install DJGPP?)
goto die
:got_djgpp

lh cwsdpmi -p -s-

set PERLLIB=Z:\lib
echo Starting install.pl...
perl Z:\dosbin\install.pl
if errorlevel 1 goto die
cwsdpmi -u

:: XP install requires smartdrv (http://support.microsoft.com/?id=296814)
smartdrv

C:\netinst\doit.bat

:die
echo Aborting.
exit 1

:end
echo on
exit 0

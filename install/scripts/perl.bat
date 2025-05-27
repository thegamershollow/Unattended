:: Yuck; I *hate* random delays.  But without this, Perl installation
:: hangs on some (fast) systems.  I wish I knew what we were really
:: waiting for.  See
:: <http://www.mail-archive.com/unattended-info%40lists.sourceforge.net/msg01259.html>.
:: HOME: http://downloads.activestate.com/ActivePerl/releases/
@Echo off

ping -n 15 localhost > nul

if not "%WINVER%" == "win2k" goto skipinstaller3
:: Windows Installer 2.0 Redistributable for Windows NT 4.0 and 2000
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=4B6140F9-2D36-4977-8FA1-6F8A0F5DCA8F>
:: Doesn't hurt to install this as it exits nicely if not needed.
:: URL|ALL|http://download.microsoft.com/download/WindowsInstaller/Install/2.0/NT45/EN-US/InstMsiW.exe|packages/windowsinstaller/instmsiw.exe
%Z%\packages\windowsinstaller\InstMsiW.exe /q /c:"msiinst.exe /i instmsi.msi /q"

:: Windows Installer 3.0 only installs on Win2000 SP3 or SP4,
:: Win2003Server, WinXP, WinXP SP1
:: (so we install version 2.0 and then upgrade to installer3 in
:: win2k-updates.bat)

if "%WINVER%" == "win2k" goto skipinstaller3

:: Windows Installer 3.1 Redistributable
:: <http://support.microsoft.com/kb/893803>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=889482FC-5F56-4A38-B838-DE776FD4138C>
:: Doesn't hurt to install this as it exits nicely if not needed (Except on win2k).
:: URL|ALL|http://download.microsoft.com/download/1/4/7/147ded26-931c-4daf-9095-ec7baf996f46/WindowsInstaller-KB893803-v2-x86.exe|packages/windowsinstaller/windowsinstaller-kb893803-v2-x86.exe
%Z%\packages\windowsinstaller\windowsinstaller-kb893803-v2-x86.exe /passive /norestart
:skipinstaller3

:: URL|ALL|http://downloads.activestate.com/ActivePerl/releases/5.22.1.2201/ActivePerl-5.22.1.2201-MSWin32-x86-64int-299574.msi|packages/perl/activeperl-5.22.1.2201-mswin32-x86-299574.msi
:: URL|ALL|http://downloads.activestate.com/ActivePerl/releases/5.22.1.2201/ActivePerl-5.22.1.2201-MSWin32-x64-299574.msi|packages/perl/activeperl-5.22.1.2201-mswin32-AMD64-299574.msi

set perl_msi=%Z%\packages\perl\activeperl-5.22.1.2201-mswin32-%PROCESSOR_ARCHITECTURE%-299574.msi

:retry
if exist %perl_msi% goto have_perl
echo %perl_msi% not found; press any key to retry.
pause > nul
goto retry

:have_perl

:: "PERL_PATH=Yes" instructs installer to add Perl to the PATH
:: "PERL_EXT=Yes" instructs installer to associate .pl files with Perl
:: (The latter is undocumented; see
:: http://bugs.activestate.com/show_bug.cgi?id=20364)

start /wait msiexec /qb /l* %SystemDrive%\netinst\logs\perl.txt /i %perl_msi% PERL_PATH=Yes PERL_EXT=Yes TARGETDIR="%ProgramFiles%" ADDLOCAL="PERL_FEATURE"

@if errorlevel 1 exit 1

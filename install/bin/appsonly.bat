echo off
REM batch file for apps-only-installs
REM contributed by Gerhard Hofmann, gerhard.hofmann@planat.de
REM Release 2010.12.22
REM History
REM =======
REM 01-Feb-2005
REM first release
REM 02-Feb-2005
REM now Z_USER and Z_PATH are set as environment variables
REM 03-Feb-2005
REM fixed invocation of perl.bat
REM if activating autologin, given user will be created
REM 17-Mar-2005
REM moved all files from \\server\install to \\server\install\bin
REM moved download location for the script to the Unattended WIKI http://www.ubertechnique.com/unattended/Scripts
REM find out a free drive letter instead of hard coded z:
REM use %USERNAME% as autologin user
REM 21-Apr-2005
REM in some cases c:\netinst and c:\netinst\logs directories were not created -> fixed
REM %USERDOMAIN% is now passed as an argument when invoking autolog.pl
REM 04-May-2005
REM multi-choice-dialog will now explicitely call choice.exe file in \\server\install\bin,
REM it turned out that Windows 2003 Server has its own choice.exe that has different parameters
REM 12-May-2005
REM handle existing c:\netinst\todo.txt
REM 18-May-2005
REM hide the autologin password while it is being typed
REM 23-May-2005
REM better handling of install dir mapping
REM 31-May-2005
REM fixed Z_PATH setting
REM 16-Sep-2005
REM show a list of already used drive letters
REM 20-Mar-2006
REM use %SystemDrive% instead of hard-coded c:
REM skipped usage of /persistent:no flag because of problems with Vista Preview Releases
REM 27-Mar-2006
REM added conf. section
REM optional deletion of existing drive mappings (will "free" drive z:)
REM 02-Jul-2008
REM *** integration of appsonly script into official CVS repository ***
REM 03-Jul-2008
REM autologin now always turned off after application installation
REM 11-Jul-2008
REM added possibility to directly pass autologin password and up to 8 .bat
REM file names (suppresses any dialogs)
REM 29-Jul-2008
REM fix: autologin now correcty set when providing autologin password by command line argument
REM 19-aug-2009
REM WIKI entry was moved to http://sourceforge.net/apps/trac/unattended/wiki/appsonly
REM delete Z, Z_PATH, Z_USER variables at the end, see http://www.mail-archive.com/unattended-info%40lists.sourceforge.net/msg08693.html
REM 20-aug-2010
REM changed the way of checking for an already installed Perl runtime
REM fixed a typo in the line
REM set z=z:
REM (a blank too much after set)
REM 22-dec-2010
REM integrated registry hack allow_unc_prog_start.reg into appsonly.bat to
REM avoid security warnings on every single script that is executed from an UNC path


REM ==== conf. section begin ====
REM delete existing mappings? (no/yes)
set deleteexistingmappings=yes
REM ==== conf. section end ======


REM Download and usage
REM ==================
REM up-to-date version always here: http://unattended.cvs.sourceforge.net/unattended/unattended/install/bin/
REM place appsonly.bat, appsonly.pl, choice.exe, setenv.exe, pathman.exe into \\server\install\bin
REM invoke the script with -> Start -> Run -> \\server\install\bin\appsonly.bat
REM    - OR -
REM double click appsonly.bat to run from an already mapped network drive
REM
REM avoiding dialogs:
REM  \\server\install\bin\appsonly.bat autologinpassword scriptfile1.bat scriptfile2.bat...


REM delete existing mappings if configured
if %deleteexistingmappings%==yes net use * /delete /y


REM make sure that directories %SystemDrive%\netinst and %SystemDrive%\netinst\logs exist
if not exist %SystemDrive%\netinst md %SystemDrive%\netinst
if not exist %SystemDrive%\netinst\logs md %SystemDrive%\netinst\logs

REM preferrably, we will use drive z: for install dir mapping
set z=z:

REM I assume that this batch file is called as UNC path
REM \\server\install\bin\appsonly.bat
REM \\server\install will be mapped to z: or other free drive
set scriptdir=%~dp0
set scriptdir=%scriptdir%*
set scriptdir=%scriptdir:\*=%
set scriptdir=%scriptdir:\bin=%

REM if script was called as "z:\bin\appsonly.bat" we can just keep the mapping
if exist %z%\bin\appsonly.bat goto mappingdone

REM if %z%\bin\appsonly.bat does not exist we have to run net use command to map install dir
net use %z% %scriptdir%
if errorlevel 1 goto userinput
if errorlevel 0 goto mappingdone
REM too bad, mapping failed, will have to ask user for free drive letter and UNC path
:userinput
echo showing list of already used drive letters...
net use
set /p z="Please enter a free driver letter for install dir mapping (with trailing colon): "
set /P scriptdir="Please enter UNC path of your install share, for example \\server\install: "
REM try it again with user-provided data
net use %z% %scriptdir%
REM still no success? -> abort everything
if errorlevel 1 goto end

:mappingdone

REM set Z, Z_USER, Z_PATH variables permanently for PCs
REM where OS was *not* installed with unattended
REM set some variables *only for the current* to directly pass
REM parameters (autologin password, .bat file names) to appsonly.pl
set path=%path%;%scriptdir%\bin
setenv -m Z_USER %username%
setenv -m Z_PATH %scriptdir%
set Z_PATH=%scriptdir%
setenv -m Z %Z%
REM pass command line arguments (if given) to appsonly.pl
REM for installs without any dialogs
set autologinpwd=%1
set script1=%2
set script2=%3
set script3=%4
set script4=%5
set script5=%6
set script6=%7
set script7=%8
set script8=%9


REM check for existing todo.txt
if not exist %SystemDrive%\netinst\todo.txt goto proceed
echo Have found an existing todo.txt, probably from a previous, defective run,
echo press a key to view the file
pause
more %SystemDrive%\netinst\todo.txt
%z%\bin\choice.exe /C:dk (d)elete or (k)eep the file? If unsure, choose (d)elete:
if errorlevel 2 goto proceed
if errorlevel 1 del %SystemDrive%\netinst\todo.txt 
:proceed

REM check for already installed Perl runtime, if not found, run perl.bat
assoc | find ".pl=Perl" > NUL
if errorlevel 1 call %z%\scripts\perl.bat
if errorlevel 0 goto runperlscript

:runperlscript
regedit /s %z%\bin\allow_unc_prog_start.reg
%z%\bin\appsonly.pl

:end

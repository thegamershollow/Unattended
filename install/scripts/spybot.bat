:: OPTIONAL: Install Spybot - Search & Destroy
:: HOME: http://www.safer-networking.org/
:: URL|ALL|http://www.spybotupdates.com/files/spybotsd162.exe|packages/spybotsd/spybotsd162.exe
:: URL|ALL|http://www.spybotupdates.com/updates/files/spybotsd_includes.exe|packages/spybotsd/spybotsd_includes-130612.exe
:: URL|ALL|http://www.spybotupdates.com/updates/files/startup.zip|packages/spybotsd/startup.zip
:: URL|ALL|http://www.spybotupdates.com/updates/files/clsid.zip|packages/spybotsd/clsid.zip
@Echo off

:: Comment the following line, if you do not want to run Spybot, check for updates, auto fix found issues,
:: and auto-immunize. The machine *will* need public internet access for that.
todo.pl "at 11:00 /every:5,10,15,20,25,30 \"%ProgramFiles%\Spybot~1\SpybotSD.exe\" /taskbarhide /autoclose /autoupdate /autoimmunize /autofix /autocheck"

todo.pl "%Z%\packages\spybotsd\spybotsd_includes-130612.exe /S /D=\"%ProgramFiles%\Spybot~1\"
todo.pl "copy %Z%\packages\spybotsd\downloaded.ini \"%ProgramFiles%\Spybot~1\Updates\" "
todo.pl "\"%ProgramFiles%\7-Zip\7z\" x -y -o\"%ProgramFiles%\Spybot~1\Includes\" %Z%\packages\spybotsd\startup.zip" 
todo.pl "\"%ProgramFiles%\7-Zip\7z\" x -y -o\"%ProgramFiles%\Spybot~1\Includes\" %Z%\packages\spybotsd\clsid.zip" 

:: By default does not try to update or startup the teatimer task (as in 1.4)
todo.pl "%Z%\packages\spybotsd\spybotsd162.exe /sp- /silent /norestart /components=\"main\" /tasks=\"!lauchteatimer\""

:: Install 7zip if it isn't already
todo.pl 7-zip.bat

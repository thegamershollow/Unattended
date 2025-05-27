:: OPTIONAL:  Install Scribus 1.6.0
:: HOME: http://www.scribus.net/

:: URL|All|http://downloads.sourceforge.net/scribus/scribus-1.6.0-windows.exe|packages/scribus/scribus-1.6.0-windows-x86.exe
:: URL|All|http://downloads.sourceforge.net/scribus/scribus-1.6.0-windows-x64.exe|packages/scribus/scribus-1.6.0-windows-AMD64.exe
@Echo off



:: todo.pl "shortcut.pl \"%ProgramFiles%\"\Scribus\scribus.exe special:AllUsersDesktop\Scribus"
todo.pl "%Z%\packages\scribus\scribus-1.6.0-windows-%PROCESSOR_ARCHITECTURE%.exe /S"

:: Install gsview first
todo.pl gsview.bat

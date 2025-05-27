:: OPTIONAL: Install Ghostscript and GSview
:: HOME: http://pages.cs.wisc.edu/~ghost/
:: URL|ALL|https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs9561/gs9561w32.exe|packages/ghostscript/gs9561-x86.exe
:: URL|ALL|https://github.com/ArtifexSoftware/ghostpdl-downloads/releases/download/gs9561/gs9561w64.exe|packages/ghostscript/gs9561-AMD64.exe
:: URL|ALL|http://www.ghostgum.com.au/download/gsv50w32.exe|packages/ghostscript/gsv50w32.exe
:: URL|ALL|http://www.ghostgum.com.au/download/gsv50w64.exe|packages/ghostscript/gsv50w64.exe

:: Then manually extract to gs and gv folders in the same path
todo.pl "%TEMP%\gv\setup.exe \"%ProgramFiles%\""
todo.pl "\"%ProgramFiles%\7-Zip\7z\" x -o\"%TEMP%\"\gv %Z%\packages\ghostscript\gsv50w32.exe"

:: some apps need ghostscript to be added on the path
:: set path=%path%;%ProgramFiles%\gs\gs9.56.1\bin
:: reg ADD "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v Path /t REG_EXPAND_SZ /d "%path%" /f

todo.pl "%Z%\packages\ghostscript\gs9561-%PROCESSOR_ARCHITECTURE%.exe /S"

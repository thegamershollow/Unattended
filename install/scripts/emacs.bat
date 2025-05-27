:: OPTIONAL: Install Emacs for Windows
::
:: URL|ALL|http://mirrors.usc.edu/pub/gnu/windows/emacs/emacs-22.3-bin-i386.zip|packages/emacs/emacs-22.3-bin-i386.zip
:: 
@Echo off
set zip="%ProgramFiles%\7-ZIP\7z.exe"
set prog=emacs-22.3

c:
cd \

%zip% x %Z%\packages\emacs\%prog%-bin-i386.zip
if errorlevel 1 exit 1
cd %prog%
if errorlevel 1 exit 1
start /wait bin\addpm.exe /q

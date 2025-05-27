:: Install Windows 2000 SP4 debugging symbols
@Echo off
start /wait %Z%\bin\AutoIt.exe %Z%\scripts\win2ksp4-symbols.aut
if errorlevel 1 exit 1

start /wait %Z%\bin\AutoIt.exe %Z%\scripts\win2k-symbols.aut
if errorlevel 1 exit 1

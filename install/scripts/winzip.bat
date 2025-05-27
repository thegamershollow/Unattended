:: Install WinZip
@Echo off
:: To prepare: first download WinZip from www.winzip.com
:: and run a setup to the %Z%\packages\WinZip directory.
:: NOTE: I have no idea (yet) how this affects a valid (site)license
:: and how to include that license in this setup...

md "%ProgramFiles%\WinZip"
cd /D "%ProgramFiles%\WinZip"
copy %Z%\packages\WinZip\*.* .
start /wait winzip32.exe /noqp /autoinstall
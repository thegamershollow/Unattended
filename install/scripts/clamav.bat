:: OPTIONAL: install clamav
:: HOME: http://www.clamav.net/lang/en/about/win32/ 

:: URL|ALL|http://download.immunet.com/clamav-en-us-latest-32.exe|packages/clamav/clamav-en-us-20100813-x86.exe
:: URL|ALL|http://download.immunet.com/clamav-en-us-latest-64.exe|packages/clamav/clamav-en-us-20100813-AMD64.exe
@echo off

todo.pl "%Z%\packages\clamav\clamav-en-us-20100813-%PROCESSOR_ARCHITECTURE%.exe /S"

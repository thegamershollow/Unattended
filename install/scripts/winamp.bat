:: OPTIONAL: Install WinAmp 5.5.5.2
:: HOME: http://www.winamp.com/
:: URL|ALL|http://download.nullsoft.com/winamp/client/winamp5552_full_emusic-7plus_en-us.exe|packages/winamp/winamp5552-full.exe
:: URL|ALL|http://download.nullsoft.com/winamp/client/wa5update.exe|packages/winamp/wa5update-20070507.exe

todo.pl "\"%ProgramFiles%\Winamp\eMusic\Uninst-eMusic-promotion.exe\" /S"
todo.pl "%Z%\packages\winamp\winamp5552-full.exe /S /install=SFQR"

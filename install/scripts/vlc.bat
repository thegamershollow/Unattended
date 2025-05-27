:: OPTIONAL:  VideoLAN - VLC media player 3.0.21
:: HOME: http://www.videolan.org/
:: URL|All|http://download.videolan.org/pub/videolan/vlc/3.0.21/win32/vlc-3.0.21-win32.exe|packages/vlc/vlc-3.0.21-x86.exe
:: URL|All|http://download.videolan.org/pub/videolan/vlc/3.0.21/win64/vlc-3.0.21-win64.exe|packages/vlc/vlc-3.0.21-AMD64.exe

@Echo off


todo.pl "%Z%\packages\vlc\vlc-3.0.21-%PROCESSOR_ARCHITECTURE%.exe /S"

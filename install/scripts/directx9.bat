:: OPTIONAL: Install DirectX 9.0c
:: URL|ALL|https://archive.org/download/windows-xp-updates/Windows%20XP/Microsoft%20DirectX%209.0C%20%28June%202010%29%20Redistributable/directx_Jun2010_redist.exe|packages/directx9/directx_Jun2010_redist.exe

@Echo off

setlocal

set "dxfile=%SystemRoot%\System32\d3dx9_43.dll"

if exist "%dxfile%" goto done
if "%dxver%"=="4.09.00.0904" goto done

todo.pl "%Z%\packages\directx9\directx_Jun2010_redist.exe"

:done

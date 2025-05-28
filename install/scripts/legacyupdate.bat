:: OPTIONAL: Install Legacy Update and windows xp patch
::URL|ALL|https://content.legacyupdate.net/legacyupdate/LegacyUpdate.exe|packages/legacyupdate/leagacyupdate.exe

@Echo off

if "%WINVER%" == "winxpsp3" reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Internet Settings\ZoneMap\Domains\legacyupdate.net" /v "*" /t REG_DWORD /d 2 /f

todo.pl "%Z%\packages\legacyupdate\leagacyupdate.exe /S /passive /norestart"

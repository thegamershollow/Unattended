:: OPTIONAL: Install Flash 32.0.0.465
:: HOME: http://get.adobe.com/flashplayer/otherversions/
:: http://www.adobe.com/software/flash/about/
:: http://helpx.adobe.com/flash-player/kb/archived-flash-player-versions.html
:: URL|ALL|http://fpdownload.macromedia.com/get/flashplayer/pdc/32.0.0.465/install_flash_player.exe|packages/flash/install_flash_player_32.0.0.465.exe
:: URL|ALL|http://fpdownload.macromedia.com/get/flashplayer/pdc/32.0.0.465/install_flash_player_ax.exe|packages/flash/install_flash_player_ax_32.0.0.465.exe
:: URL|ALL|http://fpdownload.macromedia.com/get/flashplayer/pdc/32.0.0.465/install_flash_player_ppapi.exe|packages/flash/install_flash_player_ppapi_32.0.0.465.exe
::
@Echo off

:: Delete Tasks autoupdate:
todo.pl "SchTasks /Delete /TN \"Adobe Flash Player Updater\" /f"
todo.pl "SchTasks /Delete /TN \"Adobe Flash Player PPAPI Notifier\" /f"
todo.pl "SchTasks /Delete /TN \"Adobe Flash Player NPAPI Notifier\" /f"

:: Remove Flash autoupdate service:
todo.pl "sc delete AdobeFlashPlayerUpdateSvc /f"

:: Disable Flash autoupdate:
todo.pl "echo AutoUpdateDisable=1 > %SYSTEMROOT%\System32\Macromed\Flash\mms.cfg"

:: ActiveX version for Internet Explorer
todo.pl ".ignore-err 30 %Z%\packages\flash\install_flash_player_ax_32.0.0.465.exe -install"

:: Version for Firefox NAPI
todo.pl "%Z%\packages\flash\install_flash_player_32.0.0.465.exe -install"

:: Version for Opera and Chromium
todo.pl "%Z%\packages\flash\install_flash_player_ppapi_32.0.0.465.exe -install"

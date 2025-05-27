:: OPTIONAL: Install Windows PowerToys (for XP Only)
@Echo off

:: Windows Power Toys for XP
:: <http://www.microsoft.com/windowsxp/pro/downloads/powertoys.asp>
:: (Only install useful powertoys.  At least useful to me)

:: URL|ALL|http://download.microsoft.com/download/whistler/Install/2/WXP/EN-US/TweakUiPowertoySetup.exe|packages/powertoys/tweakuipowertoysetup.exe
todo.pl "%Z%\packages\powertoys\tweakuipowertoysetup.exe /S /v/qn"

:: URL|ALL|http://download.microsoft.com/download/whistler/Install/2/WXP/EN-US/TimershotPowertoySetup.exe|packages/powertoys/timershotpowertoysetup.exe
todo.pl "%Z%\packages\powertoys\timershotpowertoysetup.exe /S /v/qn"

:: URL|ALL|http://download.microsoft.com/download/whistler/Install/2/WXP/EN-US/SlideshowPowertoySetup.exe|packages/powertoys/slideshowpowertoysetup.exe
todo.pl "%Z%\packages\powertoys\slideshowpowertoysetup.exe /S /v/qn"

:: URL|ALL|http://download.microsoft.com/download/whistler/Install/2/WXP/EN-US/PowerCalcPowertoySetup.exe|packages/powertoys/powercalcpowertoysetup.exe
todo.pl "%Z%\packages\powertoys\powercalcpowertoysetup.exe /S /v/qn"

:: URL|ALL|http://download.microsoft.com/download/whistler/Install/2/WXP/EN-US/ImageResizerPowertoySetup.exe|packages/powertoys/imageresizerpowertoysetup.exe
todo.pl "%Z%\packages\powertoys\imageresizerpowertoysetup.exe /S /v/qn"

:: URL|ALL|http://download.microsoft.com/download/whistler/Install/2/WXP/EN-US/CmdHerePowertoySetup.exe|packages/powertoys/cmdherepowertoysetup.exe
todo.pl "%Z%\packages\powertoys\cmdherepowertoysetup.exe /S /v/qn"

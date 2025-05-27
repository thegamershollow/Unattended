:: OPTIONAL: AVG Anti-Virus Free Edition 8-Dec-2014
:: HOME:http://www.avg.com/es-es/download.prd-avc
:: URL|ALL|http://download.avg.com/filedir/inst/avg_free_x86_all_2015_5645a8758.exe|packages/avg/avg_free_x86_all_2015_5645a8758.exe
:: URL|ALL|http://download.avg.com/filedir/inst/avg_free_x64_all_2015_5645a8758.exe|packages/avg/avg_free_AMD64_all_2015_5645a8758.exe

@echo off

:: AVG use a icon on the tray so this link is unecesary.
todo.pl "unlink.pl special:AllUsersDesktop\"\AVG 2015.lnk\""

::  Update program (Does not seem to work)
::todo.pl "\"%PROGRAMFILES%\AVG\AVG2014\avgmfapx.exe\" /AppMode=UPDATE"
::  Install virus definitions from local network first.
:: add http://download.avgfree.com/softw/14free/update/*.bin on the URL to work
::todo.pl "\"%PROGRAMFILES%\AVG\AVG2014\avgmfapx.exe\" /AppMode=UPDATE /source=folder /path=\"%Z%\packages\avg\updates\""

::  Before update lets make sure that avg is active and ok.
todo.pl ".reboot"

:: Disable these features:
:: fea_IDP:             Identity protention
:: LinkScnFea:          AVG LinkScanner
:: fea_SrchSrf__Search: AVG Active Search-Shield
:: fea_SrchSrf__Surf:   AVG Surf-Shield
:: fea_OnlnSc:          AVG Online Shield
:: EmailPluginsFea:     Email Plugins Feature
:: fea_Client:          AVG Remote admin

todo.pl "%Z%\packages\avg\avg_free_%PROCESSOR_ARCHITECTURE%_all_2015_5645a8758.exe /UILevel=Silent /InstallToolbar=0 /InstallSidebar=0 /ChangeBrowserSearchProvider=0 /DontRestart /RemoveFeatures=fea_IDP;LinkScnFea;fea_SrchSrf__Search;fea_SrchSrf__Surf;fea_OnlnSc;EmailPluginsFea;fea_Client;"

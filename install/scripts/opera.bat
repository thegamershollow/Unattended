:: OPTIONAL: Install Opera Browser 99.0.4788.77
:: URL|ALL|https://ftp.opera.com/pub/opera/desktop/99.0.4788.77/win/Opera_99.0.4788.77_Setup.exe|packages/opera/opera_99.0.4788.77_setup.exe
@Echo off

todo.pl "%Z%\packages\opera\opera_99.0.4788.77_setup.exe /launcher /install /runimmediately /launchopera=0 /singleprofile=0 /copyonly=0 /allusers=1 /setdefaultbrowser=0 /startmenushortcut=1 /desktopshortcut=0 /quicklaunchshortcut=0 /pintotaskbar=0"

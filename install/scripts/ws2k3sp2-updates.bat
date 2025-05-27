:: Install all updates and hotfixes for Windows XP SP3
@Echo off
:: Note that since we are pushing these commands onto the to-do stack,
:: they will be executed in the opposite order.

todo.pl "%Z%\scripts\ws2k3-extras.bat"
:: Install all updates for Windows 2003 Server
:: Get a list from Microsoft Security Bulletins
:: http://www.microsoft.com/technet/security/current.aspx

:: todo.pl "%Z%\scripts\ws2k3sp2-up1002.bat"

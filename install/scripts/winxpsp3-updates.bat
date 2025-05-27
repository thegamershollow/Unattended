:: Install all updates and hotfixes for Windows XP SP3
@Echo off
:: Note that since we are pushing these commands onto the to-do stack,
:: they will be executed in the opposite order.

todo.pl "%Z%\scripts\winxpsp3-extras.bat"
:: Install all updates for Windows XP SP3
:: Get a list from Microsoft Security Bulletins
:: http://www.microsoft.com/technet/security/current.aspx

todo.pl "%Z%\scripts\winxpsp3-up1206.bat"
todo.pl "%Z%\scripts\winxpsp3-up1205.bat"
todo.pl "%Z%\scripts\winxpsp3-up1204.bat"
todo.pl "%Z%\scripts\winxpsp3-up1202.bat"
todo.pl "%Z%\scripts\winxpsp3-up1201.bat"
todo.pl "%Z%\scripts\winxpsp3-up1112.bat"
todo.pl "%Z%\scripts\winxpsp3-up1110.bat"
todo.pl "%Z%\scripts\winxpsp3-up1109.bat"
todo.pl "%Z%\scripts\winxpsp3-up1108.bat"
todo.pl "%Z%\scripts\winxpsp3-up1107.bat"
todo.pl "%Z%\scripts\winxpsp3-up1106.bat"
todo.pl "%Z%\scripts\winxpsp3-up1104.bat"
todo.pl "%Z%\scripts\winxpsp3-up1102.bat"
todo.pl "%Z%\scripts\winxpsp3-up1101.bat"
todo.pl "%Z%\scripts\winxpsp3-up1012.bat"
todo.pl "%Z%\scripts\winxpsp3-up1010.bat"
todo.pl "%Z%\scripts\winxpsp3-up1009.bat"
todo.pl "%Z%\scripts\winxpsp3-up1008.bat"
todo.pl "%Z%\scripts\winxpsp3-up1007.bat"
todo.pl "%Z%\scripts\winxpsp3-up1006.bat"
todo.pl "%Z%\scripts\winxpsp3-up1005.bat"
todo.pl "%Z%\scripts\winxpsp3-up1004.bat"
todo.pl "%Z%\scripts\winxpsp3-up1002.bat"
todo.pl "%Z%\scripts\winxpsp3-up1001.bat"
todo.pl "%Z%\scripts\winxpsp3-up0912.bat"
todo.pl "%Z%\scripts\winxpsp3-up0910.bat"
todo.pl "%Z%\scripts\winxpsp3-up0909.bat"
todo.pl "%Z%\scripts\winxpsp3-up0908.bat"
todo.pl "%Z%\scripts\winxpsp3-up0906.bat"
todo.pl "%Z%\scripts\winxpsp3-up0904.bat"
todo.pl "%Z%\scripts\winxpsp3-up0901.bat"
todo.pl "%Z%\scripts\winxpsp3-up0812.bat"
todo.pl "%Z%\scripts\winxpsp3-up0811.bat"
todo.pl "%Z%\scripts\winxpsp3-up0810.bat"
todo.pl "%Z%\scripts\winxpsp3-up0808.bat"
todo.pl "%Z%\scripts\winxpsp3-up0807.bat"
todo.pl "%Z%\scripts\winxpsp3-up0806.bat"

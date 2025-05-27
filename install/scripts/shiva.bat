:: Install Shiva VPN client
@Echo off
:: Reboot when finished
todo.pl .reboot

start /wait AutoIt.exe %Z%\scripts\shiva.aut
if errorlevel 1 exit 1

:: OPTIONAL: Install TightVNC 2.8.85
:: HOME: http://www.tightvnc.com/
:: FIXME: Need to change user-agent to work
:: URL|ALL|http://www.tightvnc.com/download/2.8.85/tightvnc-2.8.85-gpl-setup-32bit.msi|packages/tightvnc-2.8.85-setup-x86.msi
:: URL|ALL|http://www.tightvnc.com/download/2.8.85/tightvnc-2.8.85-gpl-setup-64bit.msi|packages/tightvnc-2.8.85-setup-AMD64.msi
@Echo off

:: Edit install/site/pass.bat and provide your password like 'set tightvncpass=12345678'
call %Z%\site\pass.bat
if %tightvncpass%==xxxxxxxx goto nopass
SET VNC_OPTIONS= SET_PASSWORD=1 VALUE_OF_PASSWORD=%tightvncpass%
:nopass

:: Add rule to the firewall to allow port 5900 
:: This change include public profile. Same behaviour as old good Windows XP 
todo.pl "\"netsh firewall add portopening protocol=TCP port=5900 name=TightVNC profile=all\""
todo.pl "msiexec /qb /i %Z%\packages\tightvnc-2.8.85-setup-%PROCESSOR_ARCHITECTURE%.msi %VNC_OPTIONS%" 

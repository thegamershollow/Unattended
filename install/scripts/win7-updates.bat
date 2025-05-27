:: Install all updates and hotfixes for Windows 7
@Echo off
todo.pl win7sp1-updates.bat

echo *** INSTALLING JUST SERVICE PACK 1, THIS SYSTEM SHOULD BECOME SP1 ***
:: URL|ALL|http://download.microsoft.com/download/0/A/F/0AFB5316-3062-494A-AB78-7FB0D4461357/windows6.1-KB976932-X64.exe|updates/win7/windows6.1-KB976932-amd64.exe
:: URL|ALL|http://download.microsoft.com/download/0/A/F/0AFB5316-3062-494A-AB78-7FB0D4461357/windows6.1-KB976932-X86.exe|updates/win7/windows6.1-KB976932-X86.exe
todo.pl ".reboot-on 194 %Z%\updates\win7\windows6.1-KB976932-%PROCESSOR_ARCHITECTURE%.exe /norestart /unattend "

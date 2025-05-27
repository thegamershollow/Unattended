:: Install all updates and hotfixes for Windows Server 2003 SP1
@Echo off

:: Note that since we are pushing these commands onto the to-do stack,
:: they will be executed in the opposite order.

:: After installing SP2, install updates for ws2k3sp2.^M
todo.pl ws2k3sp2-updates.bat

:: Windows Server 2003 Service Pack 2 
:: <http://support.microsoft.com/?kbid=914961>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=95AC1610-C232-4644-B828-C55EEC605D55>
:: No Download found for ARA.
:: URL|CSY|http://download.microsoft.com/download/2/9/8/298aa7bc-8b9d-4e5b-aed0-a0484052fd81/WindowsServer2003-KB914961-SP2-x86-CSY.exe|updates/ws2k3/windowsserver2003-kb914961-sp2-x86-csy.exe
:: No Download found for DAN.
:: URL|DEU|http://download.microsoft.com/download/8/5/d/85db3e91-8541-4933-bdb0-c37236bfcc78/WindowsServer2003-KB914961-SP2-x86-DEU.exe|updates/ws2k3/windowsserver2003-kb914961-sp2-x86-deu.exe
:: No Download found for ELL.
:: No Download found for ENU.
:: URL|ESN|http://download.microsoft.com/download/e/6/d/e6db6cee-69c5-4c2d-bad8-d2e84c0535cb/WindowsServer2003-KB914961-SP2-x86-ESN.exe|updates/ws2k3/windowsserver2003-kb914961-sp2-x86-esn.exe
:: No Download found for FIN.
:: URL|FRA|http://download.microsoft.com/download/4/6/b/46b64f09-074e-4e7f-af86-0fd8d0d724a0/WindowsServer2003-KB914961-SP2-x86-FRA.exe|updates/ws2k3/windowsserver2003-kb914961-sp2-x86-fra.exe
:: No Download found for HEB.
:: URL|HUN|http://download.microsoft.com/download/5/1/4/514e1234-a8fd-419f-b418-bbbe409f5743/WindowsServer2003-KB914961-SP2-x86-HUN.exe|updates/ws2k3/windowsserver2003-kb914961-sp2-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/b/6/e/b6e4e3f8-24ce-4aab-8d63-e9d79def7c3e/WindowsServer2003-KB914961-SP2-x86-ITA.exe|updates/ws2k3/windowsserver2003-kb914961-sp2-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/a/a/8/aa83df65-59ec-488d-b41d-9c4c25f5209b/WindowsServer2003-KB914961-SP2-x86-JPN.exe|updates/ws2k3/windowsserver2003-kb914961-sp2-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/3/4/4/344b9577-6140-4e71-bf8b-fa2b67be23e8/WindowsServer2003-KB914961-SP2-x86-KOR.exe|updates/ws2k3/windowsserver2003-kb914961-sp2-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/9/a/9/9a9c14c0-6472-4ca2-9eeb-7ad2c8c62767/WindowsServer2003-KB914961-SP2-x86-NLD.exe|updates/ws2k3/windowsserver2003-kb914961-sp2-x86-nld.exe
:: No Download found for NOR.
:: URL|PLK|http://download.microsoft.com/download/d/d/e/ddef4cc1-9fbb-4dd0-ac57-7175b6f7165f/WindowsServer2003-KB914961-SP2-x86-PLK.exe|updates/ws2k3/windowsserver2003-kb914961-sp2-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/f/a/0/fa018d9f-6f9d-406f-aaad-b1a4674d7929/WindowsServer2003-KB914961-SP2-x86-PTB.exe|updates/ws2k3/windowsserver2003-kb914961-sp2-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/1/c/f/1cf43765-9c77-4766-acd2-65c08ee3b707/WindowsServer2003-KB914961-SP2-x86-PTG.exe|updates/ws2k3/windowsserver2003-kb914961-sp2-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/4/3/b/43b66e95-d277-403a-bd73-873c3ac93d2b/WindowsServer2003-KB914961-SP2-x86-RUS.exe|updates/ws2k3/windowsserver2003-kb914961-sp2-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/a/2/1/a2148718-6b2b-4e62-b049-abd691e3351c/WindowsServer2003-KB914961-SP2-x86-SVE.exe|updates/ws2k3/windowsserver2003-kb914961-sp2-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/4/7/e/47e7deb1-b4c0-4f87-9d24-c8594ef276d1/WindowsServer2003-KB914961-SP2-x86-TRK.exe|updates/ws2k3/windowsserver2003-kb914961-sp2-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\ws2k3\WindowsServer2003-KB914961-SP2-x86-%WINLANG%.exe /passive /n /norestart"

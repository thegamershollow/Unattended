:: Install all updates and hotfixes for Windows Server 2003
@Echo off

:: After installing SP1, install updates for ws2k3sp1.
todo.pl ws2k3sp1-updates.bat

:: Microsoft Windows Server 2003 Service Pack 1 (32 bit)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=22CFC239-337C-4D81-8354-72593B1C1F43>
:: No Download found for ARA.
:: URL|CHH|http://download.microsoft.com/download/e/9/3/e9320c27-37c5-4e3a-a702-0dec4d87f797/WindowsServer2003-KB889101-SP1-x86-CHH.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-chh.exe
:: URL|CHS|http://download.microsoft.com/download/9/d/e/9deaa3de-90d4-4b91-8f4f-79ecf404cca5/WindowsServer2003-KB889101-SP1-x86-CHS.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-chs.exe
:: URL|CHT|http://download.microsoft.com/download/2/1/7/21714b91-19e9-4f9d-a08e-09a8ab8fb8cb/WindowsServer2003-KB889101-SP1-x86-CHT.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-cht.exe
:: URL|CSY|http://download.microsoft.com/download/6/a/d/6ad55c98-6885-4189-bf83-88951af64529/WindowsServer2003-KB889101-SP1-x86-CSY.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-csy.exe
:: No Download found for DAN.
:: URL|DEU|http://download.microsoft.com/download/e/7/1/e712d620-7d04-4c77-a224-251ed9d9be27/WindowsServer2003-KB889101-SP1-x86-DEU.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-deu.exe
:: No Download found for ELL.
:: URL|ENU|http://download.microsoft.com/download/1/2/7/127c5938-d36a-4405-9df1-f00d57495652/WindowsServer2003-KB889101-SP1-x86-ENU.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/9/3/d/93d57504-b009-42e3-b9f1-3fac952b6ef8/WindowsServer2003-KB889101-SP1-x86-ESN.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-esn.exe
:: No Download found for FIN.
:: URL|FRA|http://download.microsoft.com/download/2/8/5/285321e4-d555-4166-8784-63bae527817d/WindowsServer2003-KB889101-SP1-x86-FRA.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-fra.exe
:: No Download found for HEB.
:: URL|HUN|http://download.microsoft.com/download/0/e/1/0e1ec4e7-c2f5-40cb-ac29-ec5f735d8e7d/WindowsServer2003-KB889101-SP1-x86-HUN.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/b/7/0/b7096a2d-9a56-4a09-9db9-cd102c1e56bc/WindowsServer2003-KB889101-SP1-x86-ITA.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/7/d/a/7dad6347-0b5f-4ad3-892a-c9661644942d/WindowsServer2003-KB889101-SP1-x86-JPN.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/1/e/f/1ef1b3e9-14cc-4250-aa90-b39cc8a5383d/WindowsServer2003-KB889101-SP1-x86-KOR.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/4/d/7/4d745661-24d4-47e6-92d2-b3068f5d3f3d/WindowsServer2003-KB889101-SP1-x86-NLD.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-nld.exe
:: No Download found for NOR.
:: URL|PLK|http://download.microsoft.com/download/c/c/4/cc4a2452-dd89-48cd-85bc-247c8c1e3d99/WindowsServer2003-KB889101-SP1-x86-PLK.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/5/7/e/57edac53-6523-467c-8d3b-646086d5b056/WindowsServer2003-KB889101-SP1-x86-PTB.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-ptb.exe
:: No Download found for PTG.
:: URL|RUS|http://download.microsoft.com/download/3/3/1/3312b09c-c0ae-4581-8213-c7640dfd094a/WindowsServer2003-KB889101-SP1-x86-RUS.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/4/a/6/4a6f67f7-c93f-44c7-9a0a-f54449e2b63c/WindowsServer2003-KB889101-SP1-x86-SVE.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/2/9/4/2948c558-938c-487e-b31b-2461f3d530da/WindowsServer2003-KB889101-SP1-x86-TRK.exe|updates/ws2k3/windowsserver2003-kb889101-sp1-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\ws2k3\WindowsServer2003-KB889101-SP1-x86-%WINLANG%.exe /passive /n /norestart"

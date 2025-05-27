:: Install all updates and hotfixes for Windows XP SP2
@Echo off
:: After installing SP3, install updates for winxpsp3.
todo.pl winxpsp3-updates.bat

echo *** INSTALLING JUST SERVICE PACK 3, THIS SYSTEM SHOULD BECOME SP3 ***
:: Windows XP Service Pack 3 Network Installation Package for IT Professionals and Developers
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=5B33B5A8-5E76-401F-BE08-1E1555D4F3D4>
:: URL|ARA|http://download.microsoft.com/download/2/b/5/2b5d286e-6536-4d12-b01d-c28b2be88431/WindowsXP-KB936929-SP3-x86-ARA.exe|updates/winxp/windowsxp-kb936929-sp3-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/5/0/4/5046394b-32df-4628-a300-64209a719db6/WindowsXP-KB936929-SP3-x86-CSY.exe|updates/winxp/windowsxp-kb936929-sp3-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/9/8/2/982c99b3-d968-4a5c-973e-12e97a38bbf9/WindowsXP-KB936929-SP3-x86-DAN.exe|updates/winxp/windowsxp-kb936929-sp3-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/1/e/7/1e758534-7b22-400c-9c46-d19d24ec7374/WindowsXP-KB936929-SP3-x86-DEU.exe|updates/winxp/windowsxp-kb936929-sp3-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/8/c/1/8c150467-65a8-4384-9639-3b7da8d946d8/WindowsXP-KB936929-SP3-x86-ELL.exe|updates/winxp/windowsxp-kb936929-sp3-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/d/3/0/d30e32d8-418a-469d-b600-f32ce3edf42d/WindowsXP-KB936929-SP3-x86-ENU.exe|updates/winxp/windowsxp-kb936929-sp3-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/9/4/2/942080a4-ba69-496b-a379-d3b26d37b647/WindowsXP-KB936929-SP3-x86-ESN.exe|updates/winxp/windowsxp-kb936929-sp3-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/4/7/4/474e6c1a-fd6d-464e-bf50-65e928fd2d1b/WindowsXP-KB936929-SP3-x86-FIN.exe|updates/winxp/windowsxp-kb936929-sp3-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/c/3/e/c3ea9fa6-d8e6-4832-8795-06dd27be9bc9/WindowsXP-KB936929-SP3-x86-FRA.exe|updates/winxp/windowsxp-kb936929-sp3-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/1/5/9/159e6818-dca3-40ba-9c15-a7f546d00888/WindowsXP-KB936929-SP3-x86-HEB.exe|updates/winxp/windowsxp-kb936929-sp3-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/0/7/7/077a5aa5-07d6-41a1-bed5-680f84898439/WindowsXP-KB936929-SP3-x86-HUN.exe|updates/winxp/windowsxp-kb936929-sp3-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/9/4/d/94d3f80a-2c0d-4ce1-a983-52f946b62c78/WindowsXP-KB936929-SP3-x86-ITA.exe|updates/winxp/windowsxp-kb936929-sp3-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/e/4/a/e4a9e704-eea9-452e-bef2-79f29cbe116e/WindowsXP-KB936929-SP3-x86-JPN.exe|updates/winxp/windowsxp-kb936929-sp3-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/7/9/a/79aaf123-878f-4945-933c-7b13c64576ab/WindowsXP-KB936929-SP3-x86-KOR.exe|updates/winxp/windowsxp-kb936929-sp3-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/e/a/1/ea15b9ae-f5d4-4971-8d31-22ce257ed30a/WindowsXP-KB936929-SP3-x86-NLD.exe|updates/winxp/windowsxp-kb936929-sp3-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/7/f/6/7f6b9393-ebba-4837-a765-e6efbbf921d1/WindowsXP-KB936929-SP3-x86-NOR.exe|updates/winxp/windowsxp-kb936929-sp3-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/4/6/5/465a583a-96a4-4000-80c5-4eef5eb0fac3/WindowsXP-KB936929-SP3-x86-PLK.exe|updates/winxp/windowsxp-kb936929-sp3-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/d/c/c/dccd3e5b-aef9-4f61-bfc4-d973396282aa/WindowsXP-KB936929-SP3-x86-PTB.exe|updates/winxp/windowsxp-kb936929-sp3-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/b/6/3/b633eaca-8fc7-4471-a459-577df014c99f/WindowsXP-KB936929-SP3-x86-PTG.exe|updates/winxp/windowsxp-kb936929-sp3-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/c/f/6/cf65d224-3ce2-4aaf-8e74-caa4987477c8/WindowsXP-KB936929-SP3-x86-RUS.exe|updates/winxp/windowsxp-kb936929-sp3-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/8/4/d/84d118c8-e8be-4c40-adc7-10a9b8159a0f/WindowsXP-KB936929-SP3-x86-SVE.exe|updates/winxp/windowsxp-kb936929-sp3-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/4/7/9/4797a8f7-bf89-45ae-ad3d-900d0714096e/WindowsXP-KB936929-SP3-x86-TRK.exe|updates/winxp/windowsxp-kb936929-sp3-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\winxp\WindowsXP-KB936929-SP3-x86-%WINLANG%.exe /norestart /passive /nobackup"

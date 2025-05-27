:: Install all updates for Windows XP
@Echo off
:: After installing SP2, install updates for winxpsp2.
todo.pl winxpsp2-updates.bat

:: Windows XP Service Pack 2 Network Installation Package for IT Professionals and Developers
:: <http://support.microsoft.com/?kbid=837783>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=049c9dbe-3b8e-4f30-8245-9e368d3cdb5a>
:: URL|ARA|http://download.microsoft.com/download/4/f/f/4ff4d6c8-a9de-4a94-95ab-e2ddc9aabb62/WindowsXP-KB835935-SP2-ARA.exe|updates/winxp/windowsxp-kb835935-sp2-ara.exe
:: URL|CSY|http://download.microsoft.com/download/2/8/0/28001168-047a-4f33-bcac-e343824afe79/WindowsXP-KB835935-SP2-CSY.exe|updates/winxp/windowsxp-kb835935-sp2-csy.exe
:: URL|DAN|http://download.microsoft.com/download/5/b/e/5be85df7-16e9-46e2-ad42-daefeccd3f56/WindowsXP-KB835935-SP2-DAN.exe|updates/winxp/windowsxp-kb835935-sp2-dan.exe
:: URL|DEU|http://download.microsoft.com/download/9/6/4/96442257-721a-4cd5-9006-10a40cbb45cb/WindowsXP-KB835935-SP2-DEU.exe|updates/winxp/windowsxp-kb835935-sp2-deu.exe
:: URL|ELL|http://download.microsoft.com/download/f/d/d/fddafe1f-8d86-4e14-871a-a3bd5f73f46b/WindowsXP-KB835935-SP2-ELL.exe|updates/winxp/windowsxp-kb835935-sp2-ell.exe
:: URL|ENU|http://download.microsoft.com/download/1/6/5/165b076b-aaa9-443d-84f0-73cf11fdcdf8/WindowsXP-KB835935-SP2-ENU.exe|updates/winxp/windowsxp-kb835935-sp2-enu.exe
:: URL|ESN|http://download.microsoft.com/download/6/e/a/6ea24385-85cd-47ac-b7f9-7bd9080063ec/WindowsXP-KB835935-SP2-ESN.exe|updates/winxp/windowsxp-kb835935-sp2-esn.exe
:: URL|FIN|http://download.microsoft.com/download/1/2/1/121e25ff-dcf9-4955-a1f6-20e1e7d8ca70/WindowsXP-KB835935-SP2-FIN.exe|updates/winxp/windowsxp-kb835935-sp2-fin.exe
:: URL|FRA|http://download.microsoft.com/download/d/5/4/d548d1a4-125c-4835-8054-10a5331a369f/WindowsXP-KB835935-SP2-FRA.exe|updates/winxp/windowsxp-kb835935-sp2-fra.exe
:: URL|HEB|http://download.microsoft.com/download/2/e/f/2ef2aa06-daa9-46b5-a23a-9da5a357bdcd/WindowsXP-KB835935-SP2-HEB.exe|updates/winxp/windowsxp-kb835935-sp2-heb.exe
:: URL|HUN|http://download.microsoft.com/download/2/1/8/218c6b34-aad6-41ab-b6c3-6e16fca75723/WindowsXP-KB835935-SP2-HUN.exe|updates/winxp/windowsxp-kb835935-sp2-hun.exe
:: URL|ITA|http://download.microsoft.com/download/5/9/0/59071318-c4b1-481d-8fd6-e4be9218e4cd/WindowsXP-KB835935-SP2-ITA.exe|updates/winxp/windowsxp-kb835935-sp2-ita.exe
:: URL|JPN|http://download.microsoft.com/download/5/c/5/5c5b703b-98ea-46a2-ba68-fb64db4d3c26/WindowsXP-KB835935-SP2-JPN.exe|updates/winxp/windowsxp-kb835935-sp2-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/e/d/4/ed4f6199-5e19-4e46-8d45-3b122a9bec90/WindowsXP-KB835935-SP2-KOR.exe|updates/winxp/windowsxp-kb835935-sp2-kor.exe
:: URL|NLD|http://download.microsoft.com/download/6/d/6/6d6fe05d-63bc-4274-accf-add56312cfb6/WindowsXP-KB835935-SP2-NLD.exe|updates/winxp/windowsxp-kb835935-sp2-nld.exe
:: URL|NOR|http://download.microsoft.com/download/5/3/d/53d54a30-92a7-4725-be77-0a7f9b2f689a/WindowsXP-KB835935-SP2-NOR.exe|updates/winxp/windowsxp-kb835935-sp2-nor.exe
:: URL|PLK|http://download.microsoft.com/download/a/c/7/ac78df4d-59cc-4e25-b4d7-94598a149719/WindowsXP-KB835935-SP2-PLK.exe|updates/winxp/windowsxp-kb835935-sp2-plk.exe
:: URL|PTB|http://download.microsoft.com/download/0/5/f/05fcbd3f-fb50-43be-a995-ad12ee4dcbe5/WindowsXP-KB835935-SP2-PTB.exe|updates/winxp/windowsxp-kb835935-sp2-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/8/1/f/81f1ce4b-f2ca-4d5f-b6ef-ec2cb5f14ae3/WindowsXP-KB835935-SP2-PTG.exe|updates/winxp/windowsxp-kb835935-sp2-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/b/6/8/b68977d4-aa1d-45ca-a74a-f35645cf96b2/WindowsXP-KB835935-SP2-RUS.exe|updates/winxp/windowsxp-kb835935-sp2-rus.exe
:: URL|SVE|http://download.microsoft.com/download/9/4/f/94fcdebe-17ff-4e57-bd77-482aad53b796/WindowsXP-KB835935-SP2-SVE.exe|updates/winxp/windowsxp-kb835935-sp2-sve.exe
:: URL|TRK|http://download.microsoft.com/download/2/9/3/293425d3-4989-4b55-93c4-746344264c52/WindowsXP-KB835935-SP2-TRK.exe|updates/winxp/windowsxp-kb835935-sp2-trk.exe
todo.pl ".ignore-err 194 %Z%\updates\winxp\WindowsXP-KB835935-SP2-%WINLANG%.exe /n /q /u /z" .reboot

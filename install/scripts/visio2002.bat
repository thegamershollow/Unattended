:: OPTIONAL: Install Visio 2002 and its updates
@Echo off
:: Reminder: Commands will be executed in reverse order.

:: Security Update for Visio 2002 (KB917150)
:: Description of the security update for Office XP, the security update for Project 2002, and the security update for Visio 2002: July 11, 2006
:: <http://www.microsoft.com/technet/security/bulletin/MS06-038.mspx>
:: <http://support.microsoft.com/kb/917150>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=9F67D75A-B69D-4064-942C-F5515C920E6B>
:: No Download found for ARA.
:: No Download found for CSY.
:: URL|DAN|http://download.microsoft.com/download/7/f/1/7f14ac97-a3bf-4ce3-b495-61e4024a5082/Visio2002-KB917150-FullFile-dan.EXE|updates/visio2002/visio2002-kb917150-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/c/4/1/c41633d1-11c4-4f1e-9103-367e71879814/Visio2002-KB917150-FullFile-deu.EXE|updates/visio2002/visio2002-kb917150-fullfile-deu.exe
:: No Download found for ELL.
:: URL|ENU|http://download.microsoft.com/download/0/1/5/0159066b-0223-4e10-840d-b85e66945113/Visio2002-KB917150-FullFile-enu.EXE|updates/visio2002/visio2002-kb917150-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/1/c/2/1c278335-eec0-40c8-85e4-e37db53baf68/Visio2002-KB917150-FullFile-esn.EXE|updates/visio2002/visio2002-kb917150-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/5/e/c/5ece9ce6-0c8b-491f-bc12-454349ea2e45/Visio2002-KB917150-FullFile-fin.EXE|updates/visio2002/visio2002-kb917150-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/b/6/f/b6faa64c-a200-4650-9c4d-661b0ce4b811/Visio2002-KB917150-FullFile-fra.EXE|updates/visio2002/visio2002-kb917150-fullfile-fra.exe
:: No Download found for HEB.
:: No Download found for HUN.
:: URL|ITA|http://download.microsoft.com/download/5/3/e/53eae0a0-1384-4396-8caa-38e0d4bac59e/Visio2002-KB917150-FullFile-ita.EXE|updates/visio2002/visio2002-kb917150-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/e/f/c/efc913d0-6d45-49d2-b4fd-cce7237f32b4/Visio2002-KB917150-FullFile-jpn.EXE|updates/visio2002/visio2002-kb917150-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/e/7/7/e7726464-3b6b-4346-aa74-2f1261b01c05/Visio2002-KB917150-FullFile-kor.EXE|updates/visio2002/visio2002-kb917150-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/2/c/2/2c23011c-6612-418c-8bf2-a9685288a981/Visio2002-KB917150-FullFile-NLD.EXE|updates/visio2002/visio2002-kb917150-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/b/3/e/b3e7be1a-7ffd-4578-b11e-356669da6e02/Visio2002-KB917150-FullFile-nor.EXE|updates/visio2002/visio2002-kb917150-fullfile-nor.exe
:: No Download found for PLK.
:: URL|PTB|http://download.microsoft.com/download/9/4/e/94edb9fe-78bf-4555-b884-083cdc96ab7a/Visio2002-KB917150-FullFile-ptb.EXE|updates/visio2002/visio2002-kb917150-fullfile-ptb.exe
:: No Download found for PTG.
:: No Download found for RUS.
:: URL|SVE|http://download.microsoft.com/download/f/0/4/f04040e2-9ea7-481e-bc0a-bdfa512cd45a/Visio2002-KB917150-FullFile-sve.EXE|updates/visio2002/visio2002-kb917150-fullfile-sve.exe
:: No Download found for TRK.
todo.pl ".reboot-on 194 %Z%\updates\visio2002\Visio2002-KB917150-FullFile-%WINLANG%.EXE /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb917150.txt /p Visio2002-KB917150-FullFile-GLB.MSP REBOOT=ReallySuppress\""

:: Visio 2002 Service Pack 2 (SP2)
:: <http://support.microsoft.com?kbid=830242>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=00b9dfe4-ed08-4328-b355-4bc63d6267b2>
:: No Download found for ARA.
:: No Download found for CSY.
:: URL|DAN|http://download.microsoft.com/download/0/4/9/049e2846-cf75-45b1-a0b6-997ba7fa4a87/Visio2002-KB830242-FullFile-DAN.EXE|updates/visio2002/visio2002-kb830242-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/9/d/6/9d6d2239-f00c-4002-abba-8ca3d68e2feb/Visio2002-KB830242-FullFile-DEU.EXE|updates/visio2002/visio2002-kb830242-fullfile-deu.exe
:: No Download found for ELL
:: URL|ENU|http://download.microsoft.com/download/7/4/3/743908a4-9e56-4f72-b8d6-501c54fcf089/Visio2002-KB830242-FullFile-ENU.EXE|updates/visio2002/visio2002-kb830242-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/2/a/6/2a627cd2-c902-4acd-9063-c1d1b57d4858/Visio2002-KB830242-FullFile-ESN.EXE|updates/visio2002/visio2002-kb830242-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/6/3/7/6373f6f1-d658-4412-8103-e19de7843487/Visio2002-KB830242-FullFile-FIN.EXE|updates/visio2002/visio2002-kb830242-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/0/b/3/0b3dfd96-0c64-44f3-804a-2a994b4fa519/Visio2002-KB830242-FullFile-FRA.EXE|updates/visio2002/visio2002-kb830242-fullfile-fra.exe
:: No Download found for HEB.
:: No Download found for HUN.
:: URL|ITA|http://download.microsoft.com/download/d/9/7/d97f4157-6d21-4e4a-a4c2-0d01f7265e28/Visio2002-KB830242-FullFile-ITA.EXE|updates/visio2002/visio2002-kb830242-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/7/4/8/7481a8c3-37fb-40a1-b88a-34ba94329053/Visio2002-KB830242-FullFile-JPN.EXE|updates/visio2002/visio2002-kb830242-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/9/d/6/9d6b3eb1-e80a-4eb2-8312-a44a3fc86dbf/Visio2002-KB830242-FullFile-KOR.EXE|updates/visio2002/visio2002-kb830242-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/7/c/0/7c047510-9fbe-40de-bf4f-4c0724dcc2ee/Visio2002-KB830242-FullFile-NLD.EXE|updates/visio2002/visio2002-kb830242-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/b/f/c/bfc31407-ab87-4f05-99da-15260add5759/Visio2002-KB830242-FullFile-NOR.EXE|updates/visio2002/visio2002-kb830242-fullfile-nor.exe
:: No Download found for PLK.
:: URL|PTB|http://download.microsoft.com/download/7/b/e/7be22f42-b5bb-4917-99dd-1c6979cac632/Visio2002-KB830242-FullFile-PTB.EXE|updates/visio2002/visio2002-kb830242-fullfile-ptb.exe
:: No Download found for PTG.
:: No Download found for RUS.
:: URL|SVE|http://download.microsoft.com/download/f/d/2/fd2aa6bb-0fe4-4921-895e-6903c76bd4f0/Visio2002-KB830242-FullFile-SVE.EXE|updates/visio2002/visio2002-kb830242-fullfile-sve.exe
:: No Download found for TRK.
todo.pl ".reboot-on 194 %Z%\updates\visio2002\Visio2002-KB830242-FullFile-%WINLANG%.EXE /r:n /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb830242.txt /p Visio2002-KB830242-FullFile-%WINLANG%.MSP REBOOT=ReallySuppress\""

:: Don't forget to add your PIDKEY=HEREG-OESY-OURK-EYVIS-IOXXX
todo.pl ".reboot-on 194 %Z%\packages\visio2002\setup.exe /qb /l* %SystemDrive%\netinst\logs\visio2002.txt ADDLOCAL=ALL NOUSERNAME=1"

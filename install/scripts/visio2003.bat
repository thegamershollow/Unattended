:: OPTIONAL: Install Visio 2003 and its updates
@Echo off
:: Reminder: Commands will be executed in reverse order.

:: Visio 2003 Service Pack 1 (SP1)
:: <http://support.microsoft.com/?kbid=840663>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=afca0578-e1fb-4540-b0cc-ff83def61cc6>
:: No Download found for ARA.
:: URL|CSY|http://download.microsoft.com/download/0/f/5/0f568813-e433-42e7-8078-4df58b16651e/Visio2003-KB840663-FullFile-CSY.EXE|updates/visio2003/visio2003-kb840663-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/0/c/7/0c7fe1f2-eaa0-461d-9c3f-fae44488b706/Visio2003-KB840663-FullFile-DAN.EXE|updates/visio2003/visio2003-kb840663-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/5/8/b/58b0017e-78ed-469f-aad6-5089cc4f6156/Visio2003-KB840663-FullFile-DEU.EXE|updates/visio2003/visio2003-kb840663-fullfile-deu.exe
:: No Download found for ELL
:: URL|ENU|http://download.microsoft.com/download/a/1/8/a184f190-01b8-47b9-a04f-e06c129fa812/Visio2003-KB840663-FullFile-ENU.EXE|updates/visio2003/visio2003-kb840663-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/c/1/8/c185931d-8636-459d-ae89-44211dde36bb/Visio2003-KB840663-FullFile-ESN.EXE|updates/visio2003/visio2003-kb840663-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/1/0/8/108db723-2972-4ee4-a271-d6f483b52581/Visio2003-KB840663-FullFile-FIN.EXE|updates/visio2003/visio2003-kb840663-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/e/a/1/ea1eafbb-c5a4-48eb-9bdd-b4e6aa304192/Visio2003-KB840663-FullFile-FRA.EXE|updates/visio2003/visio2003-kb840663-fullfile-fra.exe
:: No Download found for HEB.
:: URL|HUN|http://download.microsoft.com/download/1/d/8/1d8c2192-1453-4436-bddc-9c22515419b4/Visio2003-KB840663-FullFile-HUN.EXE|updates/visio2003/visio2003-kb840663-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/2/8/b/28b5d728-1f1c-4238-8821-384081e14e37/Visio2003-KB840663-FullFile-ITA.EXE|updates/visio2003/visio2003-kb840663-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/c/8/a/c8a4ebae-28cf-4353-98f8-06a3a0ff0496/Visio2003-KB840663-FullFile-JPN.EXE|updates/visio2003/visio2003-kb840663-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/c/5/5/c55dc12d-046a-484f-89b6-13bfa0ccd45a/Visio2003-KB840663-FullFile-KOR.EXE|updates/visio2003/visio2003-kb840663-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/1/c/c/1cc02cd2-e885-40ad-9051-be18eb67406d/Visio2003-KB840663-FullFile-NLD.EXE|updates/visio2003/visio2003-kb840663-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/e/2/3/e2335384-d81a-44ae-b3d9-fee44fb26379/Visio2003-KB840663-FullFile-NOR.EXE|updates/visio2003/visio2003-kb840663-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/d/b/f/dbfe1462-d850-4b80-a91a-ffe7ab9f801d/Visio2003-KB840663-FullFile-PLK.EXE|updates/visio2003/visio2003-kb840663-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/4/c/9/4c92bcea-0622-4048-a67f-61d311a715df/Visio2003-KB840663-FullFile-PTB.EXE|updates/visio2003/visio2003-kb840663-fullfile-ptb.exe 
:: URL|PTG|http://download.microsoft.com/download/1/0/7/1075de55-34df-4191-b773-0b441779d9be/Visio2003-KB840663-FullFile-PTG.EXE|updates/visio2003/visio2003-kb840663-fullfile-ptg.exe
:: No Download found for RUS.
:: URL|SVE|http://download.microsoft.com/download/0/e/0/0e0e769b-07ec-4f9d-9085-ad652e421b89/Visio2003-KB840663-FullFile-SVE.EXE|updates/visio2003/visio2003-kb840663-fullfile-sve.exe
:: No Download found for TRK.
todo.pl ".reboot-on 194 %Z%\updates\visio2003\Visio2003-KB840663-FullFile-%WINLANG%.EXE /r:n /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb840663.txt /p Visio2003-KB840663-FullFile-%WINLANG%.MSP REBOOT=ReallySuppress\""

:: Don't forget to add your PIDKEY=HEREG-OESY-OURK-EYVIS-IOXXX
todo.pl ".reboot-on 194 %Z%\packages\visio2003\setup.exe /qb /l* %SystemDrive%\netinst\logs\visio2003.txt ADDLOCAL=ALL NOUSERNAME=1"

:: Install updates for Win2k SP4
@Echo off
:: Note that since we are pushing these commands onto the to-do stack,
:: they will be executed in the opposite order.

:: Extra Updates

:: Microsoft Base Smart Card Cryptographic Service Provider Package: x86 (KB909520)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=e8095fd5-c7e5-4bee-9577-2ea6b45b41c6>
:: URL|ARA|http://download.microsoft.com/download/2/3/9/2397e3d9-3b86-4f37-842a-ca1b1cd402f9/Windows-KB909520-v1.000-x86-ARA.exe|updates/common/windows-kb909520-v1.000-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/3/9/5/395c69dd-54c7-48ed-934a-bb7ae670d33c/Windows-KB909520-v1.000-x86-CSY.exe|updates/common/windows-kb909520-v1.000-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/b/4/6/b4690798-2ef1-4475-b904-5e8b835e2d6f/Windows-KB909520-v1.000-x86-DAN.exe|updates/common/windows-kb909520-v1.000-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/a/9/2/a92460f9-a301-4b43-ab0b-6a906ea9b6da/Windows-KB909520-v1.000-x86-DEU.exe|updates/common/windows-kb909520-v1.000-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/c/3/4/c34d9eee-a30f-4401-b35f-ab66d682c5ec/Windows-KB909520-v1.000-x86-ELL.exe|updates/common/windows-kb909520-v1.000-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/d/0/9/d094e803-479d-432c-843d-74d9fd98ff5e/Windows-KB909520-v1.000-x86-ENU.exe|updates/common/windows-kb909520-v1.000-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/5/a/4/5a49dfad-9257-448f-b228-ea94785058bd/Windows-KB909520-v1.000-x86-ESN.exe|updates/common/windows-kb909520-v1.000-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/b/c/f/bcfd983e-c364-4794-92a7-65d7fa1540ba/Windows-KB909520-v1.000-x86-FIN.exe|updates/common/windows-kb909520-v1.000-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/c/b/1/cb128eda-a65e-4894-a727-ed782bf17c24/Windows-KB909520-v1.000-x86-FRA.exe|updates/common/windows-kb909520-v1.000-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/0/a/3/0a375bcf-d43f-4a80-8369-5ee2e6804577/Windows-KB909520-v1.000-x86-HEB.exe|updates/common/windows-kb909520-v1.000-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/e/5/4/e5459060-8a8b-4cc3-bd8c-835a384e3bb0/Windows-KB909520-v1.000-x86-HUN.exe|updates/common/windows-kb909520-v1.000-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/1/8/9/1893b220-15a7-496b-bad7-af4953bb46e6/Windows-KB909520-v1.000-x86-ITA.exe|updates/common/windows-kb909520-v1.000-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/e/3/7/e37351ae-21c9-480d-82d4-573de3021fbc/Windows-KB909520-v1.000-x86-JPN.exe|updates/common/windows-kb909520-v1.000-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/4/1/6/41607f0d-1b6a-422b-b6f4-a15b2e95408e/Windows-KB909520-v1.000-x86-KOR.exe|updates/common/windows-kb909520-v1.000-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/a/5/8/a58a6a6f-51c0-4b8a-add4-885b98061714/Windows-KB909520-v1.000-x86-NLD.exe|updates/common/windows-kb909520-v1.000-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/e/c/b/ecb60d4e-a1cd-4e5a-9a12-751f88e221a2/Windows-KB909520-v1.000-x86-NOR.exe|updates/common/windows-kb909520-v1.000-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/d/b/4/db480179-01b6-4f95-9d9c-bb333e09683/Windows-KB909520-v1.000-x86-PLK.exe|updates/common/windows-kb909520-v1.000-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/f/f/b/ffbf3942-c5dc-440e-956e-5b263a5c2ada/Windows-KB909520-v1.000-x86-PTB.exe|updates/common/windows-kb909520-v1.000-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/6/1/a/61ae5c40-9ef4-49dc-bb38-69e13c32da7e/Windows-KB909520-v1.000-x86-PTG.exe|updates/common/windows-kb909520-v1.000-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/e/4/d/e4dd6c2d-433f-47df-a86a-ebbcb45e0330/Windows-KB909520-v1.000-x86-RUS.exe|updates/common/windows-kb909520-v1.000-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/e/d/8/ed8b84a7-b9aa-4326-99e0-d551adfb3ded/Windows-KB909520-v1.000-x86-SVE.exe|updates/common/windows-kb909520-v1.000-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/8/7/b/87bd1589-b61d-4086-a392-ce2789c76928/Windows-KB909520-v1.000-x86-TRK.exe|updates/common/windows-kb909520-v1.000-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\common\Windows-KB909520-v1.000-x86-%WINLANG%.exe /passive /n /norestart"

todo.pl "%Z%\scripts\win_malicious-software-removal-tool.bat" 

:: Security Update for Windows Media Player 9 (KB917734)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=c00be4c3-34ba-4858-90d7-520b7d240e33>
:: URL|ARA|http://download.microsoft.com/download/3/6/3/36392c9a-6634-45d3-8c55-c46014be6ab2/WindowsMedia9-KB917734-x86-ARA.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/4/c/b/4cb4b92e-cfa2-41c4-a2af-1a77c7a3de2b/WindowsMedia9-KB917734-x86-CSY.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/f/f/0/ff0db250-f870-4930-ae08-0047158fb604/WindowsMedia9-KB917734-x86-DAN.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/a/a/f/aaf740d7-e991-447d-8bf6-e1514e86246c/WindowsMedia9-KB917734-x86-DEU.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/d/c/2/dc2a5a33-f9ee-4cef-8de5-04a6b5a82436/WindowsMedia9-KB917734-x86-ELL.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/b/8/e/b8e2b561-79bb-4c27-bb23-9333c14a73eb/WindowsMedia9-KB917734-x86-ENU.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/8/d/b/8db0c8a2-1872-47e0-8fff-47202ec4a4f3/WindowsMedia9-KB917734-x86-ESN.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/d/0/f/d0f78570-9346-4b49-a579-d43dc3cae626/WindowsMedia9-KB917734-x86-FIN.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/f/5/3/f53f6759-74f1-4310-bb91-dac7dd3a7f8c/WindowsMedia9-KB917734-x86-FRA.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/d/b/8/db85c991-eb57-44ec-9ba9-73ad26dc0fe0/WindowsMedia9-KB917734-x86-HEB.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/c/e/e/cee93513-eeb2-49ec-a5e0-a37d5abcf4c6/WindowsMedia9-KB917734-x86-HUN.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/d/f/0/df0299e6-3080-437d-9627-7a507627bca7/WindowsMedia9-KB917734-x86-ITA.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/6/d/4/6d4a04ae-dcaf-45d4-8930-1e2c70887921/WindowsMedia9-KB917734-x86-JPN.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/8/3/9/839fbf7d-ccd2-465c-8df1-cc11564a1a2e/WindowsMedia9-KB917734-x86-KOR.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/2/7/b/27bc664a-4593-4f2c-a9ae-011d9703361b/WindowsMedia9-KB917734-x86-NLD.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/4/e/a/4ea2e026-615b-413f-8e60-fb4960531d63/WindowsMedia9-KB917734-x86-NOR.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/7/1/d/71de641b-99ba-4b4a-85b6-cca042981908/WindowsMedia9-KB917734-x86-PLK.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/4/3/a/43a0d15d-b6a3-4b8b-b3c4-def21f4fe3b3/WindowsMedia9-KB917734-x86-PTB.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/4/9/3/4930be80-4b81-4fa0-93c7-4ca3ca2ee2fc/WindowsMedia9-KB917734-x86-PTG.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/1/3/d/13d585c4-e3f0-41cd-bb15-669a0a5e1bd7/WindowsMedia9-KB917734-x86-RUS.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/5/7/a/57aadadb-5cdb-44bd-9c9d-e936c5ecf777/WindowsMedia9-KB917734-x86-SVE.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/a/6/4/a64fec18-e9c7-4c56-a5a5-5363f83b4700/WindowsMedia9-KB917734-x86-TRK.exe|updates/win2ksp4/windowsmedia9-kb917734-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\WindowsMedia9-KB917734-x86-%WINLANG%.exe /passive /n /norestart"

:: Security Update for Windows Media Player 9 (KB911565)
:: Microsoft Security Bulletin MS06-005
:: "Vulnerability in Windows Media Player Could Allow Remote Code Execution (911565)"
:: <http://www.microsoft.com/technet/security/bulletin/MS06-005.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=8F9EEF16-04F7-4DA8-A0EF-1797B52D0B4B>
:: URL|ARA|http://download.microsoft.com/download/3/5/6/356343e4-8c7d-4e05-a473-23b44b75447b/WindowsMedia9-KB911565-x86-ARA.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/4/6/e/46ea8e2c-c8c7-4f4d-94bd-90be48a50a7d/WindowsMedia9-KB911565-x86-CSY.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/a/8/b/a8b84ed3-15d1-4fa5-8287-e5200cdf6292/WindowsMedia9-KB911565-x86-DAN.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/d/e/7/de73b741-1711-47c0-aef2-295a5d34b086/WindowsMedia9-KB911565-x86-DEU.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/1/5/5/155dcf04-4dcf-4d8c-992b-db5824d12f13/WindowsMedia9-KB911565-x86-ELL.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/e/e/c/eeca6f33-ddce-41f7-b2d1-ce2635369d29/WindowsMedia9-KB911565-x86-ENU.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/4/f/c/4fc87985-f55d-4e04-9759-145acac37271/WindowsMedia9-KB911565-x86-ESN.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/6/d/a/6da1a46a-b15f-415b-a4d5-14cc217396d3/WindowsMedia9-KB911565-x86-FIN.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/a/1/8/a185d009-2f63-450c-ba00-fd499b21b5cb/WindowsMedia9-KB911565-x86-FRA.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/8/a/1/8a10a511-5162-45a9-9f6b-143fb69d81ea/WindowsMedia9-KB911565-x86-HEB.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/8/5/4/85499c3c-5486-4b80-9337-0d3762d8c8ad/WindowsMedia9-KB911565-x86-HUN.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/0/2/e/02e95ebb-9222-417f-8c0c-df28437ebb36/WindowsMedia9-KB911565-x86-ITA.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/b/9/6/b96699ff-f24a-45ed-9f30-f08fa29ad182/WindowsMedia9-KB911565-x86-JPN.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/2/8/1/2817ee86-c3e1-4489-bd1f-a0525bb09279/WindowsMedia9-KB911565-x86-KOR.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/6/9/0/690e99b4-5190-4fa0-acc4-7c708f103eea/WindowsMedia9-KB911565-x86-NLD.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/3/f/7/3f727a8e-c7ae-4e46-8011-698fedcb3d36/WindowsMedia9-KB911565-x86-NOR.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/a/f/3/af3daa0e-c49f-44c0-9426-9443b0d9d89a/WindowsMedia9-KB911565-x86-PLK.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/d/2/e/d2ee249b-c527-47b7-8057-0cb802e2b77c/WindowsMedia9-KB911565-x86-PTB.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/5/b/0/5b0346de-83fa-47bf-96f7-284ed36dac00/WindowsMedia9-KB911565-x86-PTG.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/5/1/3/513c43a7-45d5-436a-bf98-0ef00938b53e/WindowsMedia9-KB911565-x86-RUS.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/7/1/d/71d63a60-d0f1-4d51-9b8f-a10f6c000ef2/WindowsMedia9-KB911565-x86-SVE.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/1/6/1/16159c15-4ad1-4ced-8d42-bd1b37dea8de/WindowsMedia9-KB911565-x86-TRK.exe|updates/mediaplayer9/windowsmedia9-kb911565-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\mediaplayer9\WindowsMedia9-KB911565-x86-%WINLANG%.exe /passive /n /norestart"

:: Security Update for Windows Media Player Plug-in (KB911564)
:: Microsoft Security Bulletin MS06-006
:: "Vulnerability in Windows Media Player Plug-in with Non-Microsoft Internet Browsers Could Allow Remote Code Execution (911564)"
:: <http://www.microsoft.com/technet/security/bulletin/MS06-006.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=CCDD3D35-BE5C-4C43-8FFA-BB8570A7321C>
:: URL|ARA|http://download.microsoft.com/download/e/1/3/e13972d9-d2c2-4a6b-9422-61ad6cce7604/WindowsMedia-KB911564-x86-ARA.exe|updates/common/windowsmedia-kb911564-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/3/a/6/3a69aa71-fea5-42b5-a204-68afc7b356e1/WindowsMedia-KB911564-x86-CSY.exe|updates/common/windowsmedia-kb911564-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/0/c/4/0c4b63e8-cea6-4fe2-b981-64807d16fd2c/WindowsMedia-KB911564-x86-DAN.exe|updates/common/windowsmedia-kb911564-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/d/f/5/df5650e4-9181-48d4-a87d-4a2e9469f728/WindowsMedia-KB911564-x86-DEU.exe|updates/common/windowsmedia-kb911564-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/2/d/3/2d35580b-a5af-44ed-a9c1-71a2f76e1269/WindowsMedia-KB911564-x86-ELL.exe|updates/common/windowsmedia-kb911564-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/3/1/5/31545397-c828-49c6-a30f-65799d411ce1/WindowsMedia-KB911564-x86-ENU.exe|updates/common/windowsmedia-kb911564-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/0/7/3/07347fca-64de-4334-b27c-4ef1f841346c/WindowsMedia-KB911564-x86-ESN.exe|updates/common/windowsmedia-kb911564-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/a/3/f/a3f9db82-fac9-444e-9304-a90403347deb/WindowsMedia-KB911564-x86-FIN.exe|updates/common/windowsmedia-kb911564-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/2/1/7/2176c540-5fce-4270-9bbb-6e3c0352c322/WindowsMedia-KB911564-x86-FRA.exe|updates/common/windowsmedia-kb911564-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/e/3/3/e33db4af-1671-4b3c-b1b5-5087e073faef/WindowsMedia-KB911564-x86-HEB.exe|updates/common/windowsmedia-kb911564-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/c/4/1/c4184039-219d-430f-a3d5-986194a3b83e/WindowsMedia-KB911564-x86-HUN.exe|updates/common/windowsmedia-kb911564-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/b/2/f/b2f832a4-2525-49c3-b2d3-4cfae60de14a/WindowsMedia-KB911564-x86-ITA.exe|updates/common/windowsmedia-kb911564-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/2/d/5/2d55d5dd-3708-46ef-9933-76b48743510d/WindowsMedia-KB911564-x86-JPN.exe|updates/common/windowsmedia-kb911564-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/8/6/8/868a3497-1869-4658-b232-04187b1192de/WindowsMedia-KB911564-x86-KOR.exe|updates/common/windowsmedia-kb911564-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/8/5/4/854b4b42-c716-4144-8587-2b925bebbba0/WindowsMedia-KB911564-x86-NLD.exe|updates/common/windowsmedia-kb911564-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/4/2/0/420d5a06-7ada-40cf-b234-35555abf0583/WindowsMedia-KB911564-x86-NOR.exe|updates/common/windowsmedia-kb911564-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/c/0/9/c093487c-376d-4445-8871-b03afc884409/WindowsMedia-KB911564-x86-PLK.exe|updates/common/windowsmedia-kb911564-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/f/9/7/f97fde18-a838-447d-8f13-c4bc53644f90/WindowsMedia-KB911564-x86-PTB.exe|updates/common/windowsmedia-kb911564-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/7/9/8/7986d2a7-7f39-46be-8d5e-146aa3853a75/WindowsMedia-KB911564-x86-PTG.exe|updates/common/windowsmedia-kb911564-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/b/0/f/b0f65a05-a4b2-432a-8c16-212592127b66/WindowsMedia-KB911564-x86-RUS.exe|updates/common/windowsmedia-kb911564-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/1/5/4/1541ac62-ad7d-48e8-b33d-8cfb9c7bf7f5/WindowsMedia-KB911564-x86-SVE.exe|updates/common/windowsmedia-kb911564-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/f/9/5/f958b179-94a6-4828-940b-b704c233e784/WindowsMedia-KB911564-x86-TRK.exe|updates/common/windowsmedia-kb911564-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\common\WindowsMedia-KB911564-x86-%WINLANG%.exe /passive /n /norestart"

:: FIX: Updates for Windows Media Player 9
:: <http://support.microsoft.com/kb/892313>
:: URL|ALL|http://download.microsoft.com/download/8/c/b/8cb07a83-3b1c-4a95-a1c7-4e788c113829/windowsmedia9-kb892313-x86-intl.exe|updates/mediaplayer9/windowsmedia9-kb892313-x86-intl.exe
todo.pl ".reboot-on 194 %Z%\updates\mediaplayer9\windowsmedia9-kb892313-x86-intl.exe /passive /n /norestart"

:: Security Update for Windows 2000 (KB928843)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=211a9c07-88ff-4ae4-a82a-ce2045c6c4fe>
:: URL|ARA|http://download.microsoft.com/download/0/7/d/07d87219-34c3-4883-83cb-312df608ac5b/Windows2000-KB928843-x86-ARA.EXE|updates/win2ksp4/windows2000-kb928843-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/8/7/c/87cc4448-8ab4-42a3-9b36-91eda69be3b1/Windows2000-KB928843-x86-CSY.EXE|updates/win2ksp4/windows2000-kb928843-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/3/f/c/3fce1c22-73b3-4344-bea5-6ae88547910c/Windows2000-KB928843-x86-DAN.EXE|updates/win2ksp4/windows2000-kb928843-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/f/3/4/f34ad29d-6c4b-4ecb-87b8-bc0c8af41421/Windows2000-KB928843-x86-DEU.EXE|updates/win2ksp4/windows2000-kb928843-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/6/d/f/6dfedf6c-f699-4617-a25a-bc72b62f1f3e/Windows2000-KB928843-x86-ELL.EXE|updates/win2ksp4/windows2000-kb928843-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/9/2/c/92cab157-5f80-4be0-940b-4ff4675a0756/Windows2000-KB928843-x86-ENU.EXE|updates/win2ksp4/windows2000-kb928843-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/0/3/b/03ba9278-9199-4b34-85e0-46a90b2e1579/Windows2000-KB928843-x86-ESN.EXE|updates/win2ksp4/windows2000-kb928843-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/1/5/b/15bbd422-04db-4f8c-808d-fda69416b5e1/Windows2000-KB928843-x86-FIN.EXE|updates/win2ksp4/windows2000-kb928843-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/9/e/f/9ef993d8-1320-4469-9c41-084601863fb6/Windows2000-KB928843-x86-FRA.EXE|updates/win2ksp4/windows2000-kb928843-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/b/4/d/b4d90309-190f-414e-a05b-7516c4c926f9/Windows2000-KB928843-x86-HEB.EXE|updates/win2ksp4/windows2000-kb928843-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/5/c/0/5c09c3d1-b922-4bb3-ad02-c9bb2d362cf4/Windows2000-KB928843-x86-HUN.EXE|updates/win2ksp4/windows2000-kb928843-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/8/b/a/8bae96f1-1d94-4696-bd2a-76f3f5183a27/Windows2000-KB928843-x86-ITA.EXE|updates/win2ksp4/windows2000-kb928843-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/5/7/3/573ece7b-ad4d-4133-93ff-d091f93849c7/Windows2000-KB928843-x86-JPN.EXE|updates/win2ksp4/windows2000-kb928843-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/e/4/1/e41bafa8-d3a5-4bfc-b285-cb1153b4e0f2/Windows2000-KB928843-x86-KOR.EXE|updates/win2ksp4/windows2000-kb928843-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/c/2/b/c2b15a92-57db-4f9b-abfd-bdc45c67f3b5/Windows2000-KB928843-x86-NLD.EXE|updates/win2ksp4/windows2000-kb928843-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/8/1/b/81b46f06-2ac9-49c7-8de6-e86a3ea6619d/Windows2000-KB928843-x86-NOR.EXE|updates/win2ksp4/windows2000-kb928843-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/8/e/1/8e1ee0ae-1461-4efa-b707-efc8ccf943f5/Windows2000-KB928843-x86-PLK.EXE|updates/win2ksp4/windows2000-kb928843-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/3/a/b/3ab64885-b71f-403c-bdf9-8260533a9966/Windows2000-KB928843-x86-PTB.EXE|updates/win2ksp4/windows2000-kb928843-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/8/0/6/80626359-cc47-4573-b293-ebfd3f9f8282/Windows2000-KB928843-x86-PTG.EXE|updates/win2ksp4/windows2000-kb928843-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/4/7/f/47f064bf-f8b2-4966-8949-dee7235b7814/Windows2000-KB928843-x86-RUS.EXE|updates/win2ksp4/windows2000-kb928843-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/7/8/4/7845f8bb-a6da-4928-80eb-776120b80f19/Windows2000-KB928843-x86-SVE.EXE|updates/win2ksp4/windows2000-kb928843-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/3/f/f/3ff4e8a2-f400-412c-bb6d-6e67802a5cc2/Windows2000-KB928843-x86-TRK.EXE|updates/win2ksp4/windows2000-kb928843-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB928843-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB926436)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=7b1a81d5-1072-49d9-a24a-0e2630f62d8c>
:: URL|ARA|http://download.microsoft.com/download/8/9/5/8957e780-aceb-4e22-8e40-4777aa9c6a81/Windows2000-KB926436-x86-ARA.EXE|updates/win2ksp4/windows2000-kb926436-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/2/5/d/25d87ad3-6e7d-4cda-bf7c-8ddf53385f35/Windows2000-KB926436-x86-CSY.EXE|updates/win2ksp4/windows2000-kb926436-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/e/5/6/e5610af4-3caf-49c4-86c1-bdd8141251e4/Windows2000-KB926436-x86-DAN.EXE|updates/win2ksp4/windows2000-kb926436-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/9/7/d/97d36eba-819a-4695-982c-e79d44caaa32/Windows2000-KB926436-x86-DEU.EXE|updates/win2ksp4/windows2000-kb926436-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/a/c/f/acfe8cf2-79e2-4e7f-817e-7a5d6140a40c/Windows2000-KB926436-x86-ELL.EXE|updates/win2ksp4/windows2000-kb926436-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/5/7/b/57bb4ac3-2487-4489-aa17-5f74a9e79aab/Windows2000-KB926436-x86-ENU.EXE|updates/win2ksp4/windows2000-kb926436-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/9/5/d/95d66113-319c-45e4-8c74-c664849841be/Windows2000-KB926436-x86-ESN.EXE|updates/win2ksp4/windows2000-kb926436-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/f/e/b/feb9d421-bb8b-47d6-8783-7962a09a92ca/Windows2000-KB926436-x86-FIN.EXE|updates/win2ksp4/windows2000-kb926436-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/0/4/2/042f08ba-e7a6-4274-b21a-32c75e65b88a/Windows2000-KB926436-x86-FRA.EXE|updates/win2ksp4/windows2000-kb926436-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/b/b/a/bba838cc-4603-49f3-b712-098dc8e6545c/Windows2000-KB926436-x86-HEB.EXE|updates/win2ksp4/windows2000-kb926436-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/8/5/e/85e56d06-b351-4a9b-a571-16a3b5a1957f/Windows2000-KB926436-x86-HUN.EXE|updates/win2ksp4/windows2000-kb926436-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/8/5/4/85409bbc-a568-41df-8be0-a3306a6a6b9f/Windows2000-KB926436-x86-ITA.EXE|updates/win2ksp4/windows2000-kb926436-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/b/1/6/b16a38a4-787b-42f7-a1d9-7443dfab668a/Windows2000-KB926436-x86-JPN.EXE|updates/win2ksp4/windows2000-kb926436-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/7/3/a/73a75b2e-cd06-4211-9cda-f1d841cdd1ad/Windows2000-KB926436-x86-KOR.EXE|updates/win2ksp4/windows2000-kb926436-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/d/1/a/d1a77fa9-ffb5-4cca-95d1-08d9ed7db858/Windows2000-KB926436-x86-NLD.EXE|updates/win2ksp4/windows2000-kb926436-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/2/8/9/2897870c-e002-4085-b964-1bb68cd4df3d/Windows2000-KB926436-x86-NOR.EXE|updates/win2ksp4/windows2000-kb926436-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/3/a/5/3a5fd2d0-4c8d-45ce-97d4-2dec842bb43f/Windows2000-KB926436-x86-PLK.EXE|updates/win2ksp4/windows2000-kb926436-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/5/c/9/5c9cbbb6-13b7-4f5e-811d-a1eb4296cb41/Windows2000-KB926436-x86-PTB.EXE|updates/win2ksp4/windows2000-kb926436-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/d/2/4/d24e3128-866f-4f4d-82c9-f787ae91123f/Windows2000-KB926436-x86-PTG.EXE|updates/win2ksp4/windows2000-kb926436-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/d/7/9/d796bda8-7fa2-4779-a112-f9f9ca8f717d/Windows2000-KB926436-x86-RUS.EXE|updates/win2ksp4/windows2000-kb926436-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/2/1/f/21f83dad-e3e9-4083-9335-2855f8f881bb/Windows2000-KB926436-x86-SVE.EXE|updates/win2ksp4/windows2000-kb926436-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/9/e/e/9ee7151b-b0f7-4a1b-b8a6-59dd3341fcb1/Windows2000-KB926436-x86-TRK.EXE|updates/win2ksp4/windows2000-kb926436-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB926436-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB924667)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=d6577f1f-0d9e-4856-b1d6-7e27657a3620>
:: URL|ARA|http://download.microsoft.com/download/6/a/c/6acede4d-a6b1-4e22-9732-361ff3c797ff/Windows2000-KB924667-x86-ARA.EXE|updates/win2ksp4/windows2000-kb924667-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/4/5/3/453dadb2-0901-4669-a41d-de545f04b94b/Windows2000-KB924667-x86-CSY.EXE|updates/win2ksp4/windows2000-kb924667-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/9/6/d/96d16c8f-d57d-4800-8b3b-0da0a157d66b/Windows2000-KB924667-x86-DAN.EXE|updates/win2ksp4/windows2000-kb924667-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/5/5/c/55ca156a-15b6-40a9-9f0b-377a95babfee/Windows2000-KB924667-x86-DEU.EXE|updates/win2ksp4/windows2000-kb924667-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/a/3/a/a3a842c2-029b-4575-aac6-76df1d0c3f62/Windows2000-KB924667-x86-ELL.EXE|updates/win2ksp4/windows2000-kb924667-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/1/f/7/1f7de6a2-d1af-4a97-819a-eda8e9ee08ec/Windows2000-KB924667-x86-ENU.EXE|updates/win2ksp4/windows2000-kb924667-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/c/8/8/c88ac303-a515-474c-bb07-8abf5464b377/Windows2000-KB924667-x86-ESN.EXE|updates/win2ksp4/windows2000-kb924667-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/d/2/d/d2d05b21-6373-48a4-8d75-e25a05505f87/Windows2000-KB924667-x86-FIN.EXE|updates/win2ksp4/windows2000-kb924667-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/0/c/3/0c3b0947-535a-41ec-bf0f-4726f524a8c8/Windows2000-KB924667-x86-FRA.EXE|updates/win2ksp4/windows2000-kb924667-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/3/0/f/30f1251e-6056-45d6-b8a0-8efe4c8f2e17/Windows2000-KB924667-x86-HEB.EXE|updates/win2ksp4/windows2000-kb924667-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/c/5/9/c59c1d92-8589-407f-b240-893ba03bd99a/Windows2000-KB924667-x86-HUN.EXE|updates/win2ksp4/windows2000-kb924667-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/2/a/2/2a25822b-214e-478c-a664-f3da26ad5b72/Windows2000-KB924667-x86-ITA.EXE|updates/win2ksp4/windows2000-kb924667-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/5/4/6/54678f0c-b6bc-45f5-924a-574061668913/Windows2000-KB924667-x86-JPN.EXE|updates/win2ksp4/windows2000-kb924667-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/d/3/d/d3de6c71-2abc-4dcf-ae00-1f6cd7eda649/Windows2000-KB924667-x86-KOR.EXE|updates/win2ksp4/windows2000-kb924667-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/e/8/4/e84d5d74-7919-4fef-9f79-6991005b96e7/Windows2000-KB924667-x86-NLD.EXE|updates/win2ksp4/windows2000-kb924667-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/a/9/2/a9240133-166c-4b08-9cb9-446b0b2a1cd0/Windows2000-KB924667-x86-NOR.EXE|updates/win2ksp4/windows2000-kb924667-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/a/3/0/a30b9c83-6919-49ef-ae68-16f9888d2fd3/Windows2000-KB924667-x86-PLK.EXE|updates/win2ksp4/windows2000-kb924667-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/f/0/2/f02bc625-e737-40f8-b39b-98d03e93e794/Windows2000-KB924667-x86-PTB.EXE|updates/win2ksp4/windows2000-kb924667-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/a/4/4/a4470a54-a098-41b1-8fe5-514f3da4c16d/Windows2000-KB924667-x86-PTG.EXE|updates/win2ksp4/windows2000-kb924667-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/c/0/c/c0c13004-eee2-4e2d-863a-98bb18dd7af2/Windows2000-KB924667-x86-RUS.EXE|updates/win2ksp4/windows2000-kb924667-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/f/e/6/fe6e45cf-4c70-4a12-afdb-6cac55f5278c/Windows2000-KB924667-x86-SVE.EXE|updates/win2ksp4/windows2000-kb924667-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/a/c/5/ac5f7cb0-06d4-4fd6-b50e-c67919b1e386/Windows2000-KB924667-x86-TRK.EXE|updates/win2ksp4/windows2000-kb924667-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB924667-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB918118)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=0b0b13d3-b2fb-4cf4-8ee1-51871d39eecd>
:: URL|ARA|http://download.microsoft.com/download/9/c/b/9cb2f597-a5df-4c1c-beca-1d7ba1cbd789/Windows2000-KB918118-x86-ARA.EXE|updates/win2ksp4/windows2000-kb918118-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/0/f/0/0f06be54-37b3-400e-92e3-d86759e48a09/Windows2000-KB918118-x86-CSY.EXE|updates/win2ksp4/windows2000-kb918118-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/c/2/c/c2cebbd6-a3b2-4f31-a25c-4ab5867cb8e0/Windows2000-KB918118-x86-DAN.EXE|updates/win2ksp4/windows2000-kb918118-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/a/a/3/aa32449d-e3db-4a07-b414-8f09ed20d06a/Windows2000-KB918118-x86-DEU.EXE|updates/win2ksp4/windows2000-kb918118-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/8/7/1/871c4002-605e-4909-9685-0b12250ee922/Windows2000-KB918118-x86-ELL.EXE|updates/win2ksp4/windows2000-kb918118-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/4/1/a/41ae66b6-c394-4643-9425-6e8c484d6df0/Windows2000-KB918118-x86-ENU.EXE|updates/win2ksp4/windows2000-kb918118-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/2/0/c/20c7994d-9714-4562-ab90-93d4395aed05/Windows2000-KB918118-x86-ESN.EXE|updates/win2ksp4/windows2000-kb918118-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/6/f/d/6fd8a6d7-875e-4587-a534-d7170790c4c6/Windows2000-KB918118-x86-FIN.EXE|updates/win2ksp4/windows2000-kb918118-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/6/6/8/6689b27e-28a4-4454-92a8-5a57329dbd50/Windows2000-KB918118-x86-FRA.EXE|updates/win2ksp4/windows2000-kb918118-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/c/c/8/cc851e0a-f0c0-4ccb-b416-7f24659829d1/Windows2000-KB918118-x86-HEB.EXE|updates/win2ksp4/windows2000-kb918118-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/5/6/8/568a2fc3-7169-4fdb-88db-15c4ed042652/Windows2000-KB918118-x86-HUN.EXE|updates/win2ksp4/windows2000-kb918118-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/4/6/3/463367e4-64f5-49fc-8c17-ea7348757442/Windows2000-KB918118-x86-ITA.EXE|updates/win2ksp4/windows2000-kb918118-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/6/9/b/69b219a0-f836-4618-875e-12dafc516966/Windows2000-KB918118-x86-JPN.EXE|updates/win2ksp4/windows2000-kb918118-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/9/9/a/99a939ef-1f3d-4ff7-9244-a560ce240470/Windows2000-KB918118-x86-KOR.EXE|updates/win2ksp4/windows2000-kb918118-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/f/5/4/f54e5dfa-62de-4d6e-9735-6b677a71caa6/Windows2000-KB918118-x86-NLD.EXE|updates/win2ksp4/windows2000-kb918118-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/3/3/1/33109606-e022-4733-be80-e735dca9c9d6/Windows2000-KB918118-x86-NOR.EXE|updates/win2ksp4/windows2000-kb918118-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/d/9/b/d9b8a1f8-d6ef-4b93-8f86-27014878e6e3/Windows2000-KB918118-x86-PLK.EXE|updates/win2ksp4/windows2000-kb918118-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/f/6/2/f622bb5b-f796-45e8-afb0-2a1ecc3015ee/Windows2000-KB918118-x86-PTB.EXE|updates/win2ksp4/windows2000-kb918118-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/d/a/5/da5cd0fe-b040-455f-9b70-e21dd6358d8d/Windows2000-KB918118-x86-PTG.EXE|updates/win2ksp4/windows2000-kb918118-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/0/2/3/0235c1d8-c0c6-42ab-949a-6a70344d4d2d/Windows2000-KB918118-x86-RUS.EXE|updates/win2ksp4/windows2000-kb918118-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/3/4/1/341c5142-e7c4-4e17-9792-a65feec51b83/Windows2000-KB918118-x86-SVE.EXE|updates/win2ksp4/windows2000-kb918118-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/7/f/b/7fb438d6-13cc-4ed1-8fdf-5c328055c1cd/Windows2000-KB918118-x86-TRK.EXE|updates/win2ksp4/windows2000-kb918118-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB918118-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB920685)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=778294ae-c5e3-4f17-b0e4-308e46e00105>
:: URL|ARA|http://download.microsoft.com/download/b/2/f/b2fa96ce-6aa5-4352-a7de-1b8173a1566d/Windows2000-KB920685-x86-ARA.EXE|updates/win2ksp4/windows2000-kb920685-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/b/f/e/bfe35511-3f84-4a52-b942-1d7ee614c37e/Windows2000-KB920685-x86-CSY.EXE|updates/win2ksp4/windows2000-kb920685-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/4/c/4/4c4bb8c5-e7cb-452f-8109-3447a6a04cfe/Windows2000-KB920685-x86-DAN.EXE|updates/win2ksp4/windows2000-kb920685-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/c/9/6/c961ae1f-e1ee-4472-8cbe-f4c5934a4dd6/Windows2000-KB920685-x86-DEU.EXE|updates/win2ksp4/windows2000-kb920685-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/e/3/6/e36fc0ed-2992-409f-b140-ecfadd613173/Windows2000-KB920685-x86-ELL.EXE|updates/win2ksp4/windows2000-kb920685-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/9/8/1/981ee358-dcaa-41fc-8ad8-e30eacd6a739/Windows2000-KB920685-x86-ENU.EXE|updates/win2ksp4/windows2000-kb920685-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/1/5/9/1599bb75-e91d-434d-9833-daf6eb0fd627/Windows2000-KB920685-x86-ESN.EXE|updates/win2ksp4/windows2000-kb920685-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/4/a/0/4a0d6235-32b0-4012-87d0-8346583fdab3/Windows2000-KB920685-x86-FIN.EXE|updates/win2ksp4/windows2000-kb920685-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/e/d/d/edd1a1cf-a044-4a0b-a1dd-abdc63a4421f/Windows2000-KB920685-x86-FRA.EXE|updates/win2ksp4/windows2000-kb920685-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/b/0/6/b0669079-6390-4934-a739-e7e9c192f9e6/Windows2000-KB920685-x86-HEB.EXE|updates/win2ksp4/windows2000-kb920685-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/2/9/e/29ed5ded-536b-4eb1-8ba7-151f7cdbf9ed/Windows2000-KB920685-x86-HUN.EXE|updates/win2ksp4/windows2000-kb920685-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/0/b/e/0bea6a5b-d87f-4401-8e2a-eaf7c24d1e20/Windows2000-KB920685-x86-ITA.EXE|updates/win2ksp4/windows2000-kb920685-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/0/f/1/0f1450bc-f3c7-4c16-a5ed-3c9882dbc675/Windows2000-KB920685-x86-JPN.EXE|updates/win2ksp4/windows2000-kb920685-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/8/6/a/86a74fb1-51b0-4c3e-a194-0f962eda3832/Windows2000-KB920685-x86-KOR.EXE|updates/win2ksp4/windows2000-kb920685-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/d/1/b/d1bf8414-3728-4f00-a132-99c20df8c84a/Windows2000-KB920685-x86-NLD.EXE|updates/win2ksp4/windows2000-kb920685-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/6/d/9/6d9b20fc-a6ac-4c7c-bb57-cf298a89db87/Windows2000-KB920685-x86-NOR.EXE|updates/win2ksp4/windows2000-kb920685-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/c/b/4/cb4aed05-1216-425d-9d83-d6533387f544/Windows2000-KB920685-x86-PLK.EXE|updates/win2ksp4/windows2000-kb920685-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/2/f/a/2fa98e4b-fc38-4f82-801c-c1c11cd2616f/Windows2000-KB920685-x86-PTB.EXE|updates/win2ksp4/windows2000-kb920685-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/a/c/1/ac1d1ea3-c775-44fb-a460-faaa1558d519/Windows2000-KB920685-x86-PTG.EXE|updates/win2ksp4/windows2000-kb920685-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/e/1/6/e160b3a5-1e8b-403e-b22b-4a454cfb2158/Windows2000-KB920685-x86-RUS.EXE|updates/win2ksp4/windows2000-kb920685-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/e/7/4/e7435aa2-21ad-409f-8c76-4cf59945f88a/Windows2000-KB920685-x86-SVE.EXE|updates/win2ksp4/windows2000-kb920685-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/3/b/f/3bf9198e-5034-4e8d-8420-8b3077560139/Windows2000-KB920685-x86-TRK.EXE|updates/win2ksp4/windows2000-kb920685-x86-trk.exe

todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB920685-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB912919)
:: Microsoft Security Bulletin MS06-001
:: "Vulnerability in Graphics Rendering Engine Could Allow Remote Code Execution (912919)"
:: <http://www.microsoft.com/technet/security/bulletin/ms06-001.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=AA9E27BD-CB9A-4EF1-92A3-00FFE7B2AC74>
:: URL|ARA|http://download.microsoft.com/download/a/7/d/a7dfc3d5-c4b2-4796-b0f4-4d0206e12219/Windows2000-KB912919-x86-ARA.EXE|updates/win2ksp4/windows2000-kb912919-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/b/d/9/bd973f4c-fe19-44c9-9664-9183b0a6d18a/Windows2000-KB912919-x86-CSY.EXE|updates/win2ksp4/windows2000-kb912919-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/7/6/d/76d2d534-c6b7-4fa9-8934-f5e050992e54/Windows2000-KB912919-x86-DAN.EXE|updates/win2ksp4/windows2000-kb912919-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/b/d/5/bd579181-d9fc-4610-add0-b84a74b703dc/Windows2000-KB912919-x86-DEU.EXE|updates/win2ksp4/windows2000-kb912919-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/f/7/7/f77ba539-6232-4329-8b33-80e6653679c2/Windows2000-KB912919-x86-ELL.EXE|updates/win2ksp4/windows2000-kb912919-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/2/8/7/287925a9-ab55-4fa3-8601-1c3af9da654c/Windows2000-KB912919-x86-ENU.EXE|updates/win2ksp4/windows2000-kb912919-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/a/5/8/a58b612b-7914-4dbd-b3b2-8bec2d234620/Windows2000-KB912919-x86-ESN.EXE|updates/win2ksp4/windows2000-kb912919-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/2/7/8/27891580-888f-46fc-abc0-6424dab1b819/Windows2000-KB912919-x86-FIN.EXE|updates/win2ksp4/windows2000-kb912919-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/e/c/8/ec885561-3337-4154-98bd-537b15b72ff2/Windows2000-KB912919-x86-FRA.EXE|updates/win2ksp4/windows2000-kb912919-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/2/a/d/2ad06fee-4e1e-4377-bada-1ab3ab514445/Windows2000-KB912919-x86-HEB.EXE|updates/win2ksp4/windows2000-kb912919-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/5/4/6/546a0798-0f94-48c7-a678-1abaaa3d75d9/Windows2000-KB912919-x86-HUN.EXE|updates/win2ksp4/windows2000-kb912919-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/0/1/1/0116571b-e916-4258-93b9-0866aff39bfa/Windows2000-KB912919-x86-ITA.EXE|updates/win2ksp4/windows2000-kb912919-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/6/1/c/61c28581-65f7-4fa6-af45-7d79eb8c0b53/Windows2000-KB912919-x86-JPN.EXE|updates/win2ksp4/windows2000-kb912919-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/a/3/0/a301b0ca-de63-425c-8ce0-7ac87895a41f/Windows2000-KB912919-x86-KOR.EXE|updates/win2ksp4/windows2000-kb912919-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/b/5/1/b512d9d6-043c-4e27-8ea1-0cb330f1749c/Windows2000-KB912919-x86-NLD.EXE|updates/win2ksp4/windows2000-kb912919-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/f/a/9/fa931f35-f884-4352-aa90-2b36974f8a94/Windows2000-KB912919-x86-NOR.EXE|updates/win2ksp4/windows2000-kb912919-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/7/1/1/711bdfe5-dc80-43a9-8f97-4aa35213dddb/Windows2000-KB912919-x86-PLK.EXE|updates/win2ksp4/windows2000-kb912919-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/1/1/3/113c2b5c-9e30-488c-83a5-6ccdeb60b971/Windows2000-KB912919-x86-PTB.EXE|updates/win2ksp4/windows2000-kb912919-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/4/1/3/413403b3-a5bf-4a32-8f05-3717254464b5/Windows2000-KB912919-x86-PTG.EXE|updates/win2ksp4/windows2000-kb912919-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/d/9/9/d99273ea-17dc-4fe9-b989-c8ebd541c375/Windows2000-KB912919-x86-RUS.EXE|updates/win2ksp4/windows2000-kb912919-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/3/7/9/3798cfbb-bd86-4dec-b414-3bf4e1fbf1f3/Windows2000-KB912919-x86-SVE.EXE|updates/win2ksp4/windows2000-kb912919-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/6/7/2/6721ede3-11b4-4622-ae9d-5720a615d295/Windows2000-KB912919-x86-TRK.EXE|updates/win2ksp4/windows2000-kb912919-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB912919-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB908519)
:: Microsoft Security Bulletin MS06-002
:: "Vulnerability in Embedded Web Fonts Could Allow Remote Code Execution (908519)"
:: <http://www.microsoft.com/technet/security/bulletin/MS06-002.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=DC6C2FE8-3C81-4661-994B-4146775BF590>
:: URL|ARA|http://download.microsoft.com/download/9/6/f/96f2fcd6-69b5-4eea-8216-a5fa4c6f038a/Windows2000-KB908519-x86-ARA.EXE|updates/win2ksp4/windows2000-kb908519-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/6/9/e/69e10f50-eaec-4de0-bc5b-b0b82b9ba671/Windows2000-KB908519-x86-CSY.EXE|updates/win2ksp4/windows2000-kb908519-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/6/f/6/6f6cc87f-96bc-48c0-9598-55d2775cddef/Windows2000-KB908519-x86-DAN.EXE|updates/win2ksp4/windows2000-kb908519-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/b/8/0/b80c58e8-f5fc-4e5c-8229-f3923e6b92ea/Windows2000-KB908519-x86-DEU.EXE|updates/win2ksp4/windows2000-kb908519-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/9/f/c/9fc7213d-773e-4a41-9ea6-e5584ba94a45/Windows2000-KB908519-x86-ELL.EXE|updates/win2ksp4/windows2000-kb908519-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/4/2/6/426603e1-0d9c-4f70-90a3-716e51ca302d/Windows2000-KB908519-x86-ENU.EXE|updates/win2ksp4/windows2000-kb908519-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/9/7/1/971518db-8a81-4690-ae26-ca8d362fa406/Windows2000-KB908519-x86-ESN.EXE|updates/win2ksp4/windows2000-kb908519-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/b/5/9/b5932e14-6b68-448b-9941-6375fc9e4b02/Windows2000-KB908519-x86-FIN.EXE|updates/win2ksp4/windows2000-kb908519-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/b/3/9/b3946ce6-eed8-45c1-8eed-27e4958deb7a/Windows2000-KB908519-x86-FRA.EXE|updates/win2ksp4/windows2000-kb908519-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/e/4/1/e41ee26a-e492-4a44-814c-303dcca9c5e7/Windows2000-KB908519-x86-HEB.EXE|updates/win2ksp4/windows2000-kb908519-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/8/d/3/8d35c1d4-86de-4933-a20a-724ac643b4fa/Windows2000-KB908519-x86-HUN.EXE|updates/win2ksp4/windows2000-kb908519-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/d/5/9/d59aed4d-b099-42da-becb-3e54540f9bdb/Windows2000-KB908519-x86-ITA.EXE|updates/win2ksp4/windows2000-kb908519-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/3/b/f/3bf89f2e-1110-4a87-864d-f2c6277d592b/Windows2000-KB908519-x86-JPN.EXE|updates/win2ksp4/windows2000-kb908519-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/a/d/7/ad72202a-68ee-49b9-990c-7624c15c7dac/Windows2000-KB908519-x86-KOR.EXE|updates/win2ksp4/windows2000-kb908519-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/4/8/8/4882d86e-f5b8-4e0c-a6bb-23dc33907324/Windows2000-KB908519-x86-NLD.EXE|updates/win2ksp4/windows2000-kb908519-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/9/c/9/9c944e79-d83e-4297-88e4-5950bf082bee/Windows2000-KB908519-x86-NOR.EXE|updates/win2ksp4/windows2000-kb908519-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/2/d/c/2dc72748-92df-4a67-bbe0-ff1ac34ad6a7/Windows2000-KB908519-x86-PLK.EXE|updates/win2ksp4/windows2000-kb908519-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/5/a/c/5ac02cf9-798d-475a-b5ad-238335922ae9/Windows2000-KB908519-x86-PTB.EXE|updates/win2ksp4/windows2000-kb908519-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/0/6/2/0623833c-cfce-42a4-b615-8224c6010fba/Windows2000-KB908519-x86-PTG.EXE|updates/win2ksp4/windows2000-kb908519-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/c/8/9/c89baa9b-1862-48cd-ba65-93ff090f1e4f/Windows2000-KB908519-x86-RUS.EXE|updates/win2ksp4/windows2000-kb908519-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/e/2/0/e20a6876-7f74-4520-9669-34c800b77f03/Windows2000-KB908519-x86-SVE.EXE|updates/win2ksp4/windows2000-kb908519-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/e/7/3/e73d184e-5749-46cc-af43-47734e410e20/Windows2000-KB908519-x86-TRK.EXE|updates/win2ksp4/windows2000-kb908519-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB908519-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB896424)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=F361FCCB-B273-47E7-BB15-BC9C27073446>
:: URL|ARA|http://download.microsoft.com/download/5/d/1/5d14a50a-e7bd-4c6d-9b7e-1bea151b82a4/Windows2000-KB896424-x86-ARA.EXE|updates/win2ksp4/windows2000-kb896424-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/3/7/b/37b97697-e9a4-4b70-a33a-f4be33e5eba7/Windows2000-KB896424-x86-CSY.EXE|updates/win2ksp4/windows2000-kb896424-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/a/9/9/a9912f2f-52d7-45a5-98b6-df93a312e462/Windows2000-KB896424-x86-DAN.EXE|updates/win2ksp4/windows2000-kb896424-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/5/4/f/54f42f00-8888-4590-8f40-9d65614b47e1/Windows2000-KB896424-x86-DEU.EXE|updates/win2ksp4/windows2000-kb896424-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/e/7/1/e712dbe3-ab06-44e0-a774-035d6c6a63cc/Windows2000-KB896424-x86-ELL.EXE|updates/win2ksp4/windows2000-kb896424-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/a/7/1/a7119cb1-c7c8-4b80-b10a-499d8742d2ec/Windows2000-KB896424-x86-ENU.EXE|updates/win2ksp4/windows2000-kb896424-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/e/e/c/eecd9d69-ba87-48ea-afdb-c58e88ad1dad/Windows2000-KB896424-x86-ESN.EXE|updates/win2ksp4/windows2000-kb896424-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/0/9/b/09b9bfa5-d6c7-40aa-a010-8d2e9fc68fb0/Windows2000-KB896424-x86-FIN.EXE|updates/win2ksp4/windows2000-kb896424-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/c/2/c/c2c82989-f946-4a73-8f42-8dd0d8df65a0/Windows2000-KB896424-x86-FRA.EXE|updates/win2ksp4/windows2000-kb896424-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/5/b/e/5be19781-8eb7-45ee-b6c3-e3cfe8d7ba25/Windows2000-KB896424-x86-HEB.EXE|updates/win2ksp4/windows2000-kb896424-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/4/b/8/4b82b6f1-a54f-48cc-a178-a9b9f0e17b0f/Windows2000-KB896424-x86-HUN.EXE|updates/win2ksp4/windows2000-kb896424-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/b/9/a/b9a7ff22-19b9-4a4d-a87b-5cb2023265c2/Windows2000-KB896424-x86-ITA.EXE|updates/win2ksp4/windows2000-kb896424-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/0/b/a/0babee04-b738-423a-aa92-632b5207756c/Windows2000-KB896424-x86-JPN.EXE|updates/win2ksp4/windows2000-kb896424-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/e/b/c/ebcc377a-855f-47cf-a8a5-624efbe75c6d/Windows2000-KB896424-x86-KOR.EXE|updates/win2ksp4/windows2000-kb896424-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/1/9/9/199e02fa-f90c-4397-ac4f-10b95c3b1385/Windows2000-KB896424-x86-NLD.EXE|updates/win2ksp4/windows2000-kb896424-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/b/7/f/b7f6114b-ea51-4c26-85a6-e27024e03732/Windows2000-KB896424-x86-NOR.EXE|updates/win2ksp4/windows2000-kb896424-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/7/2/f/72f05928-0499-4475-b2a8-f2a47584358a/Windows2000-KB896424-x86-PLK.EXE|updates/win2ksp4/windows2000-kb896424-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/f/2/d/f2d70b6e-ffc6-42d3-904f-9c9cdc733334/Windows2000-KB896424-x86-PTB.EXE|updates/win2ksp4/windows2000-kb896424-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/5/6/6/566a4406-aa61-4303-ab15-2051ea9b3c90/Windows2000-KB896424-x86-PTG.EXE|updates/win2ksp4/windows2000-kb896424-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/0/3/7/03784cd8-cc7c-4479-9817-ca335fa9d41b/Windows2000-KB896424-x86-RUS.EXE|updates/win2ksp4/windows2000-kb896424-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/a/0/d/a0d3456a-ef08-4531-b385-33c7c44f927c/Windows2000-KB896424-x86-SVE.EXE|updates/win2ksp4/windows2000-kb896424-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/b/1/f/b1f6a09d-c295-496a-9896-0190424c21a3/Windows2000-KB896424-x86-TRK.EXE|updates/win2ksp4/windows2000-kb896424-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB896424-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB905749)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=FFDB8AB7-F979-41B4-9625-EA51CD503258>
:: URL|ARA|http://download.microsoft.com/download/e/8/5/e85d929c-fcb8-4423-9b1a-cd24c88885a0/Windows2000-KB905749-x86-ARA.EXE|updates/win2ksp4/windows2000-kb905749-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/4/3/0/43017ab5-7186-4688-80a6-2e217c138bea/Windows2000-KB905749-x86-CSY.EXE|updates/win2ksp4/windows2000-kb905749-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/d/f/7/df7db895-67e0-49ad-a432-453dba7ee743/Windows2000-KB905749-x86-DAN.EXE|updates/win2ksp4/windows2000-kb905749-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/3/8/4/3842010a-7d5b-4316-9ee2-b04bc6731cc3/Windows2000-KB905749-x86-DEU.EXE|updates/win2ksp4/windows2000-kb905749-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/0/9/e/09eb6828-f1ea-4981-b0de-310736cff315/Windows2000-KB905749-x86-ELL.EXE|updates/win2ksp4/windows2000-kb905749-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/8/9/4/89449a45-8708-4320-b1d0-1e2580d15a86/Windows2000-KB905749-x86-ENU.EXE|updates/win2ksp4/windows2000-kb905749-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/6/d/8/6d857b6e-95c3-409c-b452-662e90293539/Windows2000-KB905749-x86-ESN.EXE|updates/win2ksp4/windows2000-kb905749-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/1/7/2/1722ee47-fd90-404a-ba11-3bec92739830/Windows2000-KB905749-x86-FIN.EXE|updates/win2ksp4/windows2000-kb905749-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/e/4/c/e4c95510-fad5-49b7-a03d-f97a17cac35f/Windows2000-KB905749-x86-FRA.EXE|updates/win2ksp4/windows2000-kb905749-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/6/6/1/66189c24-3879-4a02-9564-aaf912dfa55f/Windows2000-KB905749-x86-HEB.EXE|updates/win2ksp4/windows2000-kb905749-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/7/1/c/71c70e9e-2e21-4cec-96e8-7cfff5293847/Windows2000-KB905749-x86-HUN.EXE|updates/win2ksp4/windows2000-kb905749-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/8/d/a/8daea7b4-1e00-4e49-ac76-0f41a97c244d/Windows2000-KB905749-x86-ITA.EXE|updates/win2ksp4/windows2000-kb905749-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/5/f/3/5f3d27ac-49d3-4cf9-8444-0e4a378293ab/Windows2000-KB905749-x86-JPN.EXE|updates/win2ksp4/windows2000-kb905749-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/c/e/e/cee751a1-f935-4aa7-8da8-53e28a2b8fd0/Windows2000-KB905749-x86-KOR.EXE|updates/win2ksp4/windows2000-kb905749-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/9/6/c/96c93106-65cc-4186-aeb6-ec13c561dc3c/Windows2000-KB905749-x86-NLD.EXE|updates/win2ksp4/windows2000-kb905749-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/1/c/b/1cb2a0ff-472d-49b4-93e2-5e6519b6de03/Windows2000-KB905749-x86-NOR.EXE|updates/win2ksp4/windows2000-kb905749-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/3/6/f/36ff8b98-b464-43f5-8390-400b9e926823/Windows2000-KB905749-x86-PLK.EXE|updates/win2ksp4/windows2000-kb905749-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/b/8/7/b876258b-bd34-49c4-98a7-25ff32b80f36/Windows2000-KB905749-x86-PTB.EXE|updates/win2ksp4/windows2000-kb905749-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/3/6/2/362943bf-3ba3-4fba-9acd-df28a0b19401/Windows2000-KB905749-x86-PTG.EXE|updates/win2ksp4/windows2000-kb905749-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/2/4/d/24def67c-9d13-4ca3-81ca-fb8c51862603/Windows2000-KB905749-x86-RUS.EXE|updates/win2ksp4/windows2000-kb905749-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/1/a/f/1afb5c0e-0b7f-477e-97f8-595514df648d/Windows2000-KB905749-x86-SVE.EXE|updates/win2ksp4/windows2000-kb905749-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/3/4/8/34869cce-6f1a-4f83-a4c0-8367e05b6142/Windows2000-KB905749-x86-TRK.EXE|updates/win2ksp4/windows2000-kb905749-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB905749-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB905414)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=92C5A89F-89E5-4A33-ACD6-4F42AE921681>
:: URL|ARA|http://download.microsoft.com/download/6/e/f/6ef7fa7f-4bc7-4622-ba99-843028b8ae46/Windows2000-KB905414-x86-ARA.EXE|updates/win2ksp4/windows2000-kb905414-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/e/2/4/e24804de-52e9-44f1-b2a0-6c09f5b04646/Windows2000-KB905414-x86-CSY.EXE|updates/win2ksp4/windows2000-kb905414-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/9/5/d/95d81e7a-54c6-4937-97fc-8a476bf19c38/Windows2000-KB905414-x86-DAN.EXE|updates/win2ksp4/windows2000-kb905414-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/5/2/c/52c35675-fc0c-4263-b74c-7a25a3e85ae1/Windows2000-KB905414-x86-DEU.EXE|updates/win2ksp4/windows2000-kb905414-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/1/d/5/1d59b3dc-9e21-4f47-8e7c-e029a6afae37/Windows2000-KB905414-x86-ELL.EXE|updates/win2ksp4/windows2000-kb905414-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/6/9/f/69f0d119-5cee-49b5-85d0-ae4fc56c7879/Windows2000-KB905414-x86-ENU.EXE|updates/win2ksp4/windows2000-kb905414-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/5/5/f/55ff32ee-e159-4d4b-8ba5-44268be3b380/Windows2000-KB905414-x86-ESN.EXE|updates/win2ksp4/windows2000-kb905414-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/b/4/d/b4d8d798-508e-44ed-9cdb-330f199d7b59/Windows2000-KB905414-x86-FIN.EXE|updates/win2ksp4/windows2000-kb905414-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/c/2/b/c2b55e41-4b11-45f7-8be9-5e7cd18dc898/Windows2000-KB905414-x86-FRA.EXE|updates/win2ksp4/windows2000-kb905414-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/4/f/2/4f2bd27a-2082-4d30-b249-5ff41fcb6b66/Windows2000-KB905414-x86-HEB.EXE|updates/win2ksp4/windows2000-kb905414-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/f/f/f/fffce8d9-8a3b-420a-93a3-70a127eedb0c/Windows2000-KB905414-x86-HUN.EXE|updates/win2ksp4/windows2000-kb905414-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/c/0/0/c0012a08-9ed5-4d59-b065-fdbc85ecf59c/Windows2000-KB905414-x86-ITA.EXE|updates/win2ksp4/windows2000-kb905414-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/8/3/0/830d3db4-2f00-4677-97a1-10072c04d711/Windows2000-KB905414-x86-JPN.EXE|updates/win2ksp4/windows2000-kb905414-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/9/6/6/966430f2-aabf-496f-ab97-d2b9b38e4298/Windows2000-KB905414-x86-KOR.EXE|updates/win2ksp4/windows2000-kb905414-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/0/c/e/0ce90e2d-37a9-43e0-9fe8-825c813d5321/Windows2000-KB905414-x86-NLD.EXE|updates/win2ksp4/windows2000-kb905414-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/c/4/5/c45c141c-90fe-4f0c-aa67-57f8df179db5/Windows2000-KB905414-x86-NOR.EXE|updates/win2ksp4/windows2000-kb905414-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/1/3/a/13ace4a4-6275-4cc0-95ef-b74a0521166f/Windows2000-KB905414-x86-PLK.EXE|updates/win2ksp4/windows2000-kb905414-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/3/0/a/30a628f4-4a82-4d63-8bdb-756237fd4136/Windows2000-KB905414-x86-PTB.EXE|updates/win2ksp4/windows2000-kb905414-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/6/c/0/6c082661-f8d7-4e1a-8db9-7fe81636d59c/Windows2000-KB905414-x86-PTG.EXE|updates/win2ksp4/windows2000-kb905414-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/4/a/3/4a3c1933-e840-46e4-836c-1b8ab8b4f530/Windows2000-KB905414-x86-RUS.EXE|updates/win2ksp4/windows2000-kb905414-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/4/3/b/43b142bf-3c5b-4fe8-bd79-fc504f26ba12/Windows2000-KB905414-x86-SVE.EXE|updates/win2ksp4/windows2000-kb905414-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/a/c/d/acd7c010-d105-4f85-bdfa-80064b44b0de/Windows2000-KB905414-x86-TRK.EXE|updates/win2ksp4/windows2000-kb905414-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB905414-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for DirectX 9 for Windows 2000 (KB904706)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=1853AD1F-92C8-4C2B-8F52-9B2FC8DBF769>
:: URL|ARA|http://download.microsoft.com/download/d/4/2/d426ed70-112b-48e2-930d-7fa9f6a8121e/Windows2000-KB904706-DX9-x86-ARA.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/1/e/5/1e582b7e-0499-40b8-ade2-91e7ef84aa16/Windows2000-KB904706-DX9-x86-CSY.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/1/1/d/11d6dc94-6677-4d63-806d-61b56c1064b3/Windows2000-KB904706-DX9-x86-DAN.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/2/9/a/29a573e0-750c-42d7-9fb0-aed5c7786c7a/Windows2000-KB904706-DX9-x86-DEU.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/2/d/b/2db6bbf8-7855-4e43-ae49-b2d23c9b9ae5/Windows2000-KB904706-DX9-x86-ELL.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/a/8/f/a8fed1de-6519-4c4e-b67f-f6cb477a74bf/Windows2000-KB904706-DX9-x86-ENU.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/4/3/d/43d6af02-2b01-4ba5-8a5c-b43948a5c44e/Windows2000-KB904706-DX9-x86-ESN.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/8/2/2/822bba4a-6065-4be9-b04d-df4dc03517f4/Windows2000-KB904706-DX9-x86-FIN.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/c/9/c/c9c2d75d-90c8-4e80-83a7-d6c3c3dabb21/Windows2000-KB904706-DX9-x86-FRA.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/a/1/9/a19a61ef-2ec0-4939-8373-bee9ebf2ffb9/Windows2000-KB904706-DX9-x86-HEB.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/9/1/f/91f3df11-fc9a-4b90-97be-42d6afc52187/Windows2000-KB904706-DX9-x86-HUN.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/1/9/6/19616595-53c7-4218-8ffa-18d1821be4b7/Windows2000-KB904706-DX9-x86-ITA.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/c/7/0/c708d66d-d985-41df-89d2-edde8cade2b5/Windows2000-KB904706-DX9-x86-JPN.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/4/b/0/4b0f0041-a478-4769-a20a-15fe7a8da36a/Windows2000-KB904706-DX9-x86-KOR.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/9/d/1/9d1e6f65-2e20-4dc0-9e21-a7bbf615fe1f/Windows2000-KB904706-DX9-x86-NLD.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/7/5/b/75b1a652-5101-40dd-a271-b637e2bab554/Windows2000-KB904706-DX9-x86-NOR.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/1/b/a/1ba567c6-b813-4986-83a3-7adac3dee540/Windows2000-KB904706-DX9-x86-PLK.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/a/9/8/a98fa6c1-3f1b-4985-a5f9-661e460b1701/Windows2000-KB904706-DX9-x86-PTB.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/4/0/0/40066c62-41ac-4898-b25a-f9281e3e0d5a/Windows2000-KB904706-DX9-x86-PTG.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/1/d/8/1d8cb43e-7281-4dd1-a285-717b2a135923/Windows2000-KB904706-DX9-x86-RUS.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/6/5/e/65e2e5dc-a5b8-4cb5-960d-8f71877c93eb/Windows2000-KB904706-DX9-x86-SVE.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/f/9/8/f9873d66-cd6a-47fe-9ee2-4cd5e5367627/Windows2000-KB904706-DX9-x86-TRK.exe|updates/win2ksp4/windows2000-kb904706-dx9-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB904706-DX9-x86-%WINLANG%.exe /passive /n /norestart"

:: Security Update for Windows 2000 (KB902400)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=4E5B96D8-BA74-4008-80D9-922364ABC6AC>
:: URL|ARA|http://download.microsoft.com/download/b/c/2/bc20d1fb-04ca-494e-af0f-ce08ffdf4ecc/Windows2000-KB902400-x86-ARA.EXE|updates/win2ksp4/windows2000-kb902400-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/a/f/4/af421e3e-1d1a-41c3-bfe5-6b93a726bf11/Windows2000-KB902400-x86-CSY.EXE|updates/win2ksp4/windows2000-kb902400-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/9/0/e/90e46043-faee-417d-b9fd-76c0094bf5a3/Windows2000-KB902400-x86-DAN.EXE|updates/win2ksp4/windows2000-kb902400-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/a/4/2/a42c72e7-65e2-4c25-850c-b027d2b78ece/Windows2000-KB902400-x86-DEU.EXE|updates/win2ksp4/windows2000-kb902400-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/9/0/b/90b297b6-62e1-4b42-bc37-2a071136b87d/Windows2000-KB902400-x86-ELL.EXE|updates/win2ksp4/windows2000-kb902400-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/5/5/7/55719c3d-84cb-4271-ac59-7879e7c0e5e6/Windows2000-KB902400-x86-ENU.EXE|updates/win2ksp4/windows2000-kb902400-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/2/7/8/27814957-673c-4a94-a840-17afb72f4e8b/Windows2000-KB902400-x86-ESN.EXE|updates/win2ksp4/windows2000-kb902400-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/2/d/5/2d5a87c3-5b6c-43f7-93a7-7ec4859c43c9/Windows2000-KB902400-x86-FIN.EXE|updates/win2ksp4/windows2000-kb902400-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/e/e/5/ee56ece1-250b-4217-b75c-397b02186975/Windows2000-KB902400-x86-FRA.EXE|updates/win2ksp4/windows2000-kb902400-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/e/3/0/e30ca1da-73a7-46cb-be6d-480a3c201372/Windows2000-KB902400-x86-HEB.EXE|updates/win2ksp4/windows2000-kb902400-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/8/2/3/82318e94-032c-4075-85e2-83dcc3241ac6/Windows2000-KB902400-x86-HUN.EXE|updates/win2ksp4/windows2000-kb902400-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/c/7/0/c70f0e73-a5a5-4fad-900e-57b524e88a38/Windows2000-KB902400-x86-ITA.EXE|updates/win2ksp4/windows2000-kb902400-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/a/2/0/a20e9ebc-5fae-471d-b125-d59538eaac93/Windows2000-KB902400-x86-JPN.EXE|updates/win2ksp4/windows2000-kb902400-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/6/0/b/60b407b3-8eda-4358-b24f-1f8eb08ced7b/Windows2000-KB902400-x86-KOR.EXE|updates/win2ksp4/windows2000-kb902400-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/9/f/0/9f09d359-adcb-43e6-bc57-20ce18c87258/Windows2000-KB902400-x86-NLD.EXE|updates/win2ksp4/windows2000-kb902400-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/f/5/e/f5ee6bc1-0577-418f-8759-32ecf262d43d/Windows2000-KB902400-x86-NOR.EXE|updates/win2ksp4/windows2000-kb902400-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/e/e/0/ee0b3a61-3985-4920-b658-3b71cfe5aa49/Windows2000-KB902400-x86-PLK.EXE|updates/win2ksp4/windows2000-kb902400-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/8/a/3/8a34b26e-dc8b-4b3e-9aad-0eaa8c9fa2b2/Windows2000-KB902400-x86-PTB.EXE|updates/win2ksp4/windows2000-kb902400-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/0/7/c/07cc6b8b-21ef-49c3-a290-09c80684a72f/Windows2000-KB902400-x86-PTG.EXE|updates/win2ksp4/windows2000-kb902400-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/1/c/f/1cf4c440-f8a3-444f-a28f-7d0881cc1f76/Windows2000-KB902400-x86-RUS.EXE|updates/win2ksp4/windows2000-kb902400-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/e/a/3/ea3a5ed3-7797-453e-9636-67151f529224/Windows2000-KB902400-x86-SVE.EXE|updates/win2ksp4/windows2000-kb902400-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/4/4/9/4493dd8b-5e60-48bc-9191-f2eedcefe0c3/Windows2000-KB902400-x86-TRK.EXE|updates/win2ksp4/windows2000-kb902400-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB902400-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB901017)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=AE0BA6D7-37AF-46E8-9E25-AB63883FA944>
:: URL|ARA|http://download.microsoft.com/download/d/4/4/d44ec63f-cdb1-411e-97b3-4a8e1d428572/Windows2000-KB901017-x86-ARA.EXE|updates/win2ksp4/windows2000-kb901017-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/2/1/3/213f9323-bb8a-4128-afec-560821843fdd/Windows2000-KB901017-x86-CSY.EXE|updates/win2ksp4/windows2000-kb901017-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/2/1/f/21f2a531-f257-4712-accf-2e70c3abfe2f/Windows2000-KB901017-x86-DAN.EXE|updates/win2ksp4/windows2000-kb901017-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/2/5/1/251e38e0-11cf-43dc-9d21-a3ba558f7982/Windows2000-KB901017-x86-DEU.EXE|updates/win2ksp4/windows2000-kb901017-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/5/2/b/52baadd2-17d9-419d-bebf-4160c9c5f707/Windows2000-KB901017-x86-ELL.EXE|updates/win2ksp4/windows2000-kb901017-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/2/2/3/22364e62-e9cd-4c5b-bf40-b742fab0e02d/Windows2000-KB901017-x86-ENU.EXE|updates/win2ksp4/windows2000-kb901017-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/1/b/4/1b490504-1cf0-468a-b6fc-c2682f8b5582/Windows2000-KB901017-x86-ESN.EXE|updates/win2ksp4/windows2000-kb901017-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/9/3/5/935755aa-fcf7-4c58-9118-789560bf0d20/Windows2000-KB901017-x86-FIN.EXE|updates/win2ksp4/windows2000-kb901017-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/f/6/0/f603eef4-dac4-4b25-ba6f-fa7aaaedf75d/Windows2000-KB901017-x86-FRA.EXE|updates/win2ksp4/windows2000-kb901017-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/5/6/4/56494024-0de9-4a6f-883e-8a9353ed20f0/Windows2000-KB901017-x86-HEB.EXE|updates/win2ksp4/windows2000-kb901017-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/d/0/2/d02ba533-d956-4521-a75c-eb8342f39f19/Windows2000-KB901017-x86-HUN.EXE|updates/win2ksp4/windows2000-kb901017-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/1/d/2/1d2ec882-b961-41a4-8f1c-022bac4753c7/Windows2000-KB901017-x86-ITA.EXE|updates/win2ksp4/windows2000-kb901017-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/4/2/b/42b4e470-6859-4ced-a556-91d8dc86ecf2/Windows2000-KB901017-x86-JPN.EXE|updates/win2ksp4/windows2000-kb901017-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/c/c/9/cc9a4520-b9ce-4733-b6da-c51c16e2a055/Windows2000-KB901017-x86-KOR.EXE|updates/win2ksp4/windows2000-kb901017-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/e/8/2/e82e9612-533b-47c1-8f5d-789669520bb1/Windows2000-KB901017-x86-NLD.EXE|updates/win2ksp4/windows2000-kb901017-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/e/9/9/e9928971-4ccb-4fb0-b442-6a3554474567/Windows2000-KB901017-x86-NOR.EXE|updates/win2ksp4/windows2000-kb901017-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/0/f/4/0f4f29c4-5906-4015-b7fb-675c120f5617/Windows2000-KB901017-x86-PLK.EXE|updates/win2ksp4/windows2000-kb901017-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/4/9/e/49e544de-a571-4394-926b-1428d279119c/Windows2000-KB901017-x86-PTB.EXE|updates/win2ksp4/windows2000-kb901017-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/e/f/a/efaf9ad4-afce-4cb6-9b7b-47728d514796/Windows2000-KB901017-x86-PTG.EXE|updates/win2ksp4/windows2000-kb901017-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/3/6/8/368c3a9d-4f97-474d-8893-dca091497ed9/Windows2000-KB901017-x86-RUS.EXE|updates/win2ksp4/windows2000-kb901017-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/8/d/7/8d756674-77a3-48f3-9adf-482053e85881/Windows2000-KB901017-x86-SVE.EXE|updates/win2ksp4/windows2000-kb901017-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/4/a/8/4a89a801-9607-4c61-bce8-9a29cd06bcb8/Windows2000-KB901017-x86-TRK.EXE|updates/win2ksp4/windows2000-kb901017-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB901017-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB900725)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=1F063C4A-B0BF-49C6-928B-F1F076C69612>
:: URL|ARA|http://download.microsoft.com/download/1/0/6/106d43ba-902c-4e12-9643-5332bbffee58/Windows2000-KB900725-x86-ARA.EXE|updates/win2ksp4/windows2000-kb900725-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/8/1/8/81802f70-7bc9-4bd9-9462-dfa62876ee6a/Windows2000-KB900725-x86-CSY.EXE|updates/win2ksp4/windows2000-kb900725-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/a/7/b/a7b628e4-eb4e-45bd-ac20-6dee66149dbd/Windows2000-KB900725-x86-DAN.EXE|updates/win2ksp4/windows2000-kb900725-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/7/3/4/73480fd1-8875-4097-8312-c9691316a660/Windows2000-KB900725-x86-DEU.EXE|updates/win2ksp4/windows2000-kb900725-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/e/4/5/e4572584-110c-4674-a60f-7e76bb3d4ff1/Windows2000-KB900725-x86-ELL.EXE|updates/win2ksp4/windows2000-kb900725-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/6/1/f/61fd8ca9-13ef-4efd-9340-7a1b7e723582/Windows2000-KB900725-x86-ENU.EXE|updates/win2ksp4/windows2000-kb900725-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/c/c/3/cc34f0a0-7c59-4d74-9de7-bfdc78812bd4/Windows2000-KB900725-x86-ESN.EXE|updates/win2ksp4/windows2000-kb900725-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/8/2/c/82c99ae9-94b9-49f3-86f0-4f404ded1708/Windows2000-KB900725-x86-FIN.EXE|updates/win2ksp4/windows2000-kb900725-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/9/2/a/92a281c1-364e-4cea-b18d-8acf5fd7f360/Windows2000-KB900725-x86-FRA.EXE|updates/win2ksp4/windows2000-kb900725-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/4/4/0/44050f16-2483-4794-b667-b15ed89140fd/Windows2000-KB900725-x86-HEB.EXE|updates/win2ksp4/windows2000-kb900725-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/8/c/2/8c228fd0-1e84-484e-99cd-6aec3f25e264/Windows2000-KB900725-x86-HUN.EXE|updates/win2ksp4/windows2000-kb900725-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/a/6/e/a6e8d687-120a-4b2a-b07e-55564a158cb6/Windows2000-KB900725-x86-ITA.EXE|updates/win2ksp4/windows2000-kb900725-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/6/3/8/6382632c-0490-4aea-8be7-529698d0413e/Windows2000-KB900725-x86-JPN.EXE|updates/win2ksp4/windows2000-kb900725-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/d/5/4/d54e922a-3335-423f-9d37-205f718349ed/Windows2000-KB900725-x86-KOR.EXE|updates/win2ksp4/windows2000-kb900725-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/a/9/4/a94ddb3b-8175-482b-b244-039a6c87f1ee/Windows2000-KB900725-x86-NLD.EXE|updates/win2ksp4/windows2000-kb900725-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/3/4/6/34659817-ad87-4389-804e-bbbc744379a0/Windows2000-KB900725-x86-NOR.EXE|updates/win2ksp4/windows2000-kb900725-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/0/f/e/0feb7ed7-1721-4be0-b123-a1923f5d1c2c/Windows2000-KB900725-x86-PLK.EXE|updates/win2ksp4/windows2000-kb900725-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/2/6/0/26056e4e-8377-4f89-b2e7-348f2571abb5/Windows2000-KB900725-x86-PTB.EXE|updates/win2ksp4/windows2000-kb900725-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/4/1/e/41e3f1a3-7543-407f-8988-84950cce9d35/Windows2000-KB900725-x86-PTG.EXE|updates/win2ksp4/windows2000-kb900725-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/9/4/e/94e6071c-5cdc-4dba-b928-eb27de38ff85/Windows2000-KB900725-x86-RUS.EXE|updates/win2ksp4/windows2000-kb900725-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/e/e/5/ee5a9711-7513-4140-bce3-a282a6cd023f/Windows2000-KB900725-x86-SVE.EXE|updates/win2ksp4/windows2000-kb900725-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/f/a/b/fab7ebc3-a0fa-4b6c-863d-c8d6aa180302/Windows2000-KB900725-x86-TRK.EXE|updates/win2ksp4/windows2000-kb900725-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB900725-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB899589)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=261A7D4D-90FC-4529-9C4A-B630196C6A83>
:: URL|ARA|http://download.microsoft.com/download/0/d/0/0d0582dd-91f7-4c6d-a02c-5f703f6d766e/Windows2000-KB899589-x86-ARA.EXE|updates/win2ksp4/windows2000-kb899589-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/a/6/b/a6bc3009-5df0-4ee0-9b8e-26cb4d2ca690/Windows2000-KB899589-x86-CSY.EXE|updates/win2ksp4/windows2000-kb899589-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/d/b/3/db38f006-2cbe-42eb-af81-7d3e658005a4/Windows2000-KB899589-x86-DAN.EXE|updates/win2ksp4/windows2000-kb899589-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/8/7/d/87d32290-ad3b-4195-b5c8-f81baf29704f/Windows2000-KB899589-x86-DEU.EXE|updates/win2ksp4/windows2000-kb899589-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/7/f/a/7fa4c6c5-692b-4d42-8cf8-2ebf3de280a6/Windows2000-KB899589-x86-ELL.EXE|updates/win2ksp4/windows2000-kb899589-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/a/7/7/a776227b-9483-42d8-b5ec-a3a25366d40e/Windows2000-KB899589-x86-ENU.EXE|updates/win2ksp4/windows2000-kb899589-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/4/3/8/438b1561-9cae-40ca-8af0-0497e25c1308/Windows2000-KB899589-x86-ESN.EXE|updates/win2ksp4/windows2000-kb899589-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/0/e/4/0e4393cf-106e-4b09-80f1-bccc92152d7f/Windows2000-KB899589-x86-FIN.EXE|updates/win2ksp4/windows2000-kb899589-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/b/1/6/b16c1481-1d93-44d3-a2b9-a13e8e2ceacf/Windows2000-KB899589-x86-FRA.EXE|updates/win2ksp4/windows2000-kb899589-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/5/9/9/5999adb8-ed5b-41ea-ac15-49260e798537/Windows2000-KB899589-x86-HEB.EXE|updates/win2ksp4/windows2000-kb899589-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/9/a/3/9a3d52f5-ba40-4389-8f4e-5d97179349c0/Windows2000-KB899589-x86-HUN.EXE|updates/win2ksp4/windows2000-kb899589-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/9/6/7/96709a8c-d6fb-43dd-b5a6-956ee1b875c4/Windows2000-KB899589-x86-ITA.EXE|updates/win2ksp4/windows2000-kb899589-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/7/f/c/7fcd3dec-9b98-4134-a8bd-016bc6d9a08b/Windows2000-KB899589-x86-JPN.EXE|updates/win2ksp4/windows2000-kb899589-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/2/5/d/25d73bed-a9fe-41f7-9845-dc29ef7d918d/Windows2000-KB899589-x86-KOR.EXE|updates/win2ksp4/windows2000-kb899589-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/4/a/1/4a15d7a4-063a-4acf-89d5-f7532d586cca/Windows2000-KB899589-x86-NLD.EXE|updates/win2ksp4/windows2000-kb899589-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/8/f/4/8f4e6ed9-f02c-45d4-a20b-ed87c0bb766a/Windows2000-KB899589-x86-NOR.EXE|updates/win2ksp4/windows2000-kb899589-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/1/e/0/1e04a05d-e1c5-42f2-9cde-a19441f1a0df/Windows2000-KB899589-x86-PLK.EXE|updates/win2ksp4/windows2000-kb899589-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/9/5/b/95bb1313-9b24-41d2-af5e-b270fa72df08/Windows2000-KB899589-x86-PTB.EXE|updates/win2ksp4/windows2000-kb899589-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/e/b/b/ebbc1eb8-f8bf-4882-9352-5bb1169abb0f/Windows2000-KB899589-x86-PTG.EXE|updates/win2ksp4/windows2000-kb899589-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/a/2/e/a2e1a110-edca-4c92-b0da-e1b2ebd5fbcb/Windows2000-KB899589-x86-RUS.EXE|updates/win2ksp4/windows2000-kb899589-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/7/e/1/7e1f576f-8b0e-4527-994f-9c625b3dd271/Windows2000-KB899589-x86-SVE.EXE|updates/win2ksp4/windows2000-kb899589-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/e/a/4/ea4733bf-3e01-40ef-a7a4-95d838c59581/Windows2000-KB899589-x86-TRK.EXE|updates/win2ksp4/windows2000-kb899589-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB899589-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB896358)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=9af346ae-4807-42f4-95e2-8f5fae321102>
:: URL|ARA|http://download.microsoft.com/download/e/9/0/e90be6e4-d969-4041-ac37-0a52206f8d82/Windows2000-KB896358-x86-ARA.EXE|updates/win2ksp4/windows2000-kb896358-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/c/e/e/ceec04e6-25bf-4587-ae4a-8852b9dba094/Windows2000-KB896358-x86-CSY.EXE|updates/win2ksp4/windows2000-kb896358-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/8/b/2/8b293f8b-9c47-4b22-9ad2-3417de6176f2/Windows2000-KB896358-x86-DAN.EXE|updates/win2ksp4/windows2000-kb896358-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/6/e/c/6ecb4813-7f61-4a7e-97db-43a72f7428e1/Windows2000-KB896358-x86-DEU.EXE|updates/win2ksp4/windows2000-kb896358-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/6/d/d/6dd5287d-f5d9-4f3e-a0e6-6d572acd2113/Windows2000-KB896358-x86-ELL.EXE|updates/win2ksp4/windows2000-kb896358-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/f/2/8/f284148a-a991-4ee2-bb2f-12aa0d2e5013/Windows2000-KB896358-x86-ENU.EXE|updates/win2ksp4/windows2000-kb896358-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/c/8/c/c8cf6378-17e8-44e4-bc7b-5f069c134d2d/Windows2000-KB896358-x86-ESN.EXE|updates/win2ksp4/windows2000-kb896358-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/9/7/1/97101b07-23d4-442c-834f-4b5f7c641d37/Windows2000-KB896358-x86-FIN.EXE|updates/win2ksp4/windows2000-kb896358-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/1/8/a/18a8c4ff-9827-4354-b0c5-6d22f8f91ed4/Windows2000-KB896358-x86-FRA.EXE|updates/win2ksp4/windows2000-kb896358-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/e/9/7/e97da1a5-1812-4ab5-9542-260b1df1d377/Windows2000-KB896358-x86-HEB.EXE|updates/win2ksp4/windows2000-kb896358-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/6/7/3/673c0454-d71e-4561-8c68-bfea42efa123/Windows2000-KB896358-x86-HUN.EXE|updates/win2ksp4/windows2000-kb896358-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/9/1/0/910524ba-13f6-4ed6-b90c-02cc5235261e/Windows2000-KB896358-x86-ITA.EXE|updates/win2ksp4/windows2000-kb896358-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/d/9/e/d9e2f417-b5ea-473e-97cf-4bfa313fbbee/Windows2000-KB896358-x86-JPN.EXE|updates/win2ksp4/windows2000-kb896358-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/f/d/6/fd66b5da-6649-49df-bba5-2e1de4e8cac6/Windows2000-KB896358-x86-KOR.EXE|updates/win2ksp4/windows2000-kb896358-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/9/6/2/9625d183-eca9-426c-8fa1-037b3e6b08ae/Windows2000-KB896358-x86-NLD.EXE|updates/win2ksp4/windows2000-kb896358-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/6/3/c/63c77c03-5205-4ec7-b6cb-5c6be79f887c/Windows2000-KB896358-x86-NOR.EXE|updates/win2ksp4/windows2000-kb896358-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/9/3/f/93fba779-cbdd-4d8d-be07-c0fa75bd7d9b/Windows2000-KB896358-x86-PLK.EXE|updates/win2ksp4/windows2000-kb896358-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/9/9/c/99cea8d2-1102-491d-b8d5-cb99c79225e0/Windows2000-KB896358-x86-PTB.EXE|updates/win2ksp4/windows2000-kb896358-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/9/5/a/95a6f5b1-6614-4d98-bdc9-028d6b36a760/Windows2000-KB896358-x86-PTG.EXE|updates/win2ksp4/windows2000-kb896358-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/7/9/f/79f65492-7371-4e7b-8a78-254148199133/Windows2000-KB896358-x86-RUS.EXE|updates/win2ksp4/windows2000-kb896358-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/8/5/7/8572629e-b102-4d31-bf35-a15cf70091e4/Windows2000-KB896358-x86-SVE.EXE|updates/win2ksp4/windows2000-kb896358-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/d/b/0/db029aaa-d213-4c35-bf64-7d5c83450385/Windows2000-KB896358-x86-TRK.EXE|updates/win2ksp4/windows2000-kb896358-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB896358-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB896422)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=1e83f120-01fb-4029-a524-f3ae08f8bb28>
:: URL|ARA|http://download.microsoft.com/download/1/5/2/15291529-8074-423e-8503-5b685ddd21fe/Windows2000-KB896422-x86-ARA.EXE|updates/win2ksp4/windows2000-kb896422-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/d/6/a/d6aa1a64-6814-4ab2-b0ac-0aa0780b7c72/Windows2000-KB896422-x86-CSY.EXE|updates/win2ksp4/windows2000-kb896422-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/9/a/6/9a602e76-431e-4bbf-9cc6-2b12f41a8e58/Windows2000-KB896422-x86-DAN.EXE|updates/win2ksp4/windows2000-kb896422-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/2/7/7/27799ff7-2f95-4588-bf00-b1570697f221/Windows2000-KB896422-x86-DEU.EXE|updates/win2ksp4/windows2000-kb896422-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/9/5/d/95d34a9a-7323-433b-802e-6c511e0063e9/Windows2000-KB896422-x86-ELL.EXE|updates/win2ksp4/windows2000-kb896422-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/c/9/7/c9700b63-06be-475b-b2e6-12f6298a75b5/Windows2000-KB896422-x86-ENU.EXE|updates/win2ksp4/windows2000-kb896422-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/b/5/d/b5d31bc0-b937-4217-a66f-3f7fa9766b6a/Windows2000-KB896422-x86-ESN.EXE|updates/win2ksp4/windows2000-kb896422-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/c/2/3/c235c68f-05f7-40d9-a0ad-580dd06e0f11/Windows2000-KB896422-x86-FIN.EXE|updates/win2ksp4/windows2000-kb896422-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/3/5/d/35d5400a-7acc-40db-bfe9-9a07d228d933/Windows2000-KB896422-x86-FRA.EXE|updates/win2ksp4/windows2000-kb896422-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/2/1/3/2132c665-dd5f-4398-a47a-013773a4f309/Windows2000-KB896422-x86-HEB.EXE|updates/win2ksp4/windows2000-kb896422-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/e/5/3/e53cdbde-fa3e-4d0f-9c12-89c641826f75/Windows2000-KB896422-x86-HUN.EXE|updates/win2ksp4/windows2000-kb896422-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/e/7/a/e7a4bc88-5942-4c74-83bf-d54c4901e790/Windows2000-KB896422-x86-ITA.EXE|updates/win2ksp4/windows2000-kb896422-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/3/f/4/3f4c4510-ea02-434c-9534-60b3bba52ad6/Windows2000-KB896422-x86-JPN.EXE|updates/win2ksp4/windows2000-kb896422-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/8/9/5/895c0613-71bc-4b7a-8638-90b4a86539a4/Windows2000-KB896422-x86-KOR.EXE|updates/win2ksp4/windows2000-kb896422-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/9/a/2/9a2c7469-b707-4fa8-94aa-db49cca2ed5f/Windows2000-KB896422-x86-NLD.EXE|updates/win2ksp4/windows2000-kb896422-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/8/5/d/85de22bc-77a8-4651-b235-1daf9f7510eb/Windows2000-KB896422-x86-NOR.EXE|updates/win2ksp4/windows2000-kb896422-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/6/a/8/6a88efdd-50b0-4592-a5c2-46014b8c55ad/Windows2000-KB896422-x86-PLK.EXE|updates/win2ksp4/windows2000-kb896422-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/2/8/4/2849e477-9bce-4445-9cc1-47774823ad00/Windows2000-KB896422-x86-PTB.EXE|updates/win2ksp4/windows2000-kb896422-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/8/b/0/8b07690c-90b5-49df-843a-d83bfadaf253/Windows2000-KB896422-x86-PTG.EXE|updates/win2ksp4/windows2000-kb896422-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/5/0/c/50c473d0-af17-4f4b-a9af-c2aeee9d519a/Windows2000-KB896422-x86-RUS.EXE|updates/win2ksp4/windows2000-kb896422-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/0/2/f/02f58517-fc9c-4566-be2a-6f2e310a8b9d/Windows2000-KB896422-x86-SVE.EXE|updates/win2ksp4/windows2000-kb896422-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/0/e/e/0ee89521-f3a2-45a4-8826-0dd6ce6432f4/Windows2000-KB896422-x86-TRK.EXE|updates/win2ksp4/windows2000-kb896422-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB896422-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB890046)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=6a7dee96-f693-4c50-896d-2365873245a9>
:: URL|ARA|http://download.microsoft.com/download/8/0/4/804b9b53-ec47-473e-b074-98e55704b410/Windows2000-KB890046-x86-ARA.EXE|updates/win2ksp4/windows2000-kb890046-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/c/9/0/c909b2ac-c6e4-4c20-ba24-3a272da58411/Windows2000-KB890046-x86-CSY.EXE|updates/win2ksp4/windows2000-kb890046-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/c/f/1/cf10b5e3-d67f-4706-af43-29fedfe7706d/Windows2000-KB890046-x86-DAN.EXE|updates/win2ksp4/windows2000-kb890046-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/e/d/2/ed2e7fe2-62c7-4db0-8008-4264e359ad60/Windows2000-KB890046-x86-DEU.EXE|updates/win2ksp4/windows2000-kb890046-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/1/4/f/14f128dc-707e-4eaf-9a81-f3938995b7ec/Windows2000-KB890046-x86-ELL.EXE|updates/win2ksp4/windows2000-kb890046-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/8/0/0/800cc57f-930b-4fa0-826b-83f5af39af2d/Windows2000-KB890046-x86-ENU.EXE|updates/win2ksp4/windows2000-kb890046-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/b/b/4/bb46474b-12b6-422a-88b6-f9ec247fd094/Windows2000-KB890046-x86-ESN.EXE|updates/win2ksp4/windows2000-kb890046-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/3/3/f/33fdbb40-fe5a-40ac-ab35-c1b04270bdcf/Windows2000-KB890046-x86-FIN.EXE|updates/win2ksp4/windows2000-kb890046-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/0/7/3/07366757-a7ff-4599-9acd-850d8f9f5f4a/Windows2000-KB890046-x86-FRA.EXE|updates/win2ksp4/windows2000-kb890046-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/f/a/8/fa8ee4fa-76c1-4fce-8eb4-6fb4af56b381/Windows2000-KB890046-x86-HEB.EXE|updates/win2ksp4/windows2000-kb890046-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/4/a/8/4a82b71c-5566-411e-9deb-f94f8b2476e3/Windows2000-KB890046-x86-HUN.EXE|updates/win2ksp4/windows2000-kb890046-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/9/0/a/90a9fdcb-3786-476c-af3e-83b06c1d71d2/Windows2000-KB890046-x86-ITA.EXE|updates/win2ksp4/windows2000-kb890046-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/a/8/4/a8460fc6-38b1-43c1-8c8c-fd8e67bda7b2/Windows2000-KB890046-x86-JPN.EXE|updates/win2ksp4/windows2000-kb890046-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/8/5/7/85729240-7302-4063-9e32-d5cec80a2e21/Windows2000-KB890046-x86-KOR.EXE|updates/win2ksp4/windows2000-kb890046-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/1/0/7/107a537a-7c7b-4a10-8843-df7196cacdb5/Windows2000-KB890046-x86-NLD.EXE|updates/win2ksp4/windows2000-kb890046-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/7/8/e/78e86bd0-5121-486a-8aa3-fba5c834a00d/Windows2000-KB890046-x86-NOR.EXE|updates/win2ksp4/windows2000-kb890046-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/2/2/b/22b99f16-3d26-425e-ab9a-0cd1a7394586/Windows2000-KB890046-x86-PLK.EXE|updates/win2ksp4/windows2000-kb890046-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/4/c/0/4c09520a-eb23-4dac-90cb-ce4b7a9ccdec/Windows2000-KB890046-x86-PTB.EXE|updates/win2ksp4/windows2000-kb890046-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/b/7/6/b76391c6-3b7a-45e2-8eec-2c526d8099a9/Windows2000-KB890046-x86-PTG.EXE|updates/win2ksp4/windows2000-kb890046-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/4/3/c/43cc55c8-6616-4e65-8369-0cb96523de9f/Windows2000-KB890046-x86-RUS.EXE|updates/win2ksp4/windows2000-kb890046-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/a/f/7/af7c3be6-90ac-4bb5-a557-bb6e761c6577/Windows2000-KB890046-x86-SVE.EXE|updates/win2ksp4/windows2000-kb890046-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/9/8/9/989e8922-64dd-4a07-aa1f-d50f44df8fbb/Windows2000-KB890046-x86-TRK.EXE|updates/win2ksp4/windows2000-kb890046-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB890046-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows Media Player 9 Series (KB885492)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=A52279DC-3B6C-4720-8192-45657EDBB14F>
:: URL|ARA|http://download.microsoft.com/download/b/7/3/b73c1061-2f5c-4e10-985b-0533a981c613/WindowsMedia9-KB885492-x86-ARA.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/5/1/4/514f5240-d669-44e1-b202-fafe3bcb4d0b/WindowsMedia9-KB885492-x86-CSY.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/7/f/b/7fb1dbaa-c2ef-4618-869a-2af4573d3faa/WindowsMedia9-KB885492-x86-DAN.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/4/f/6/4f665b93-4da6-4a24-99b6-00b7b32304ad/WindowsMedia9-KB885492-x86-DEU.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/5/2/7/52708e1b-9466-46e8-a385-71b8e487663a/WindowsMedia9-KB885492-x86-ELL.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/e/d/8/ed8a0a15-2770-45b8-ba8b-a2ff178c2c86/WindowsMedia9-KB885492-x86-ENU.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/b/4/1/b41128ab-bab5-45b8-894d-d2a671311501/WindowsMedia9-KB885492-x86-ESN.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/1/f/e/1fe3468f-5b36-4d4d-8654-915aac789bd8/WindowsMedia9-KB885492-x86-FIN.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/6/5/9/659643c6-f902-44b5-b130-30c355a85030/WindowsMedia9-KB885492-x86-FRA.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/b/1/9/b198da89-eb95-4a5f-9035-1e094ddc5613/WindowsMedia9-KB885492-x86-HEB.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/8/a/d/8ad33527-8009-46f7-beb8-0726dbdacf94/WindowsMedia9-KB885492-x86-HUN.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/8/7/4/874f77e9-ae05-411f-8e54-bf602e65e0cb/WindowsMedia9-KB885492-x86-ITA.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/3/a/3/3a30c27d-2e29-487b-a173-3af16ea70981/WindowsMedia9-KB885492-x86-JPN.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/6/6/5/6651699a-7452-487c-b57f-fe1746e7024c/WindowsMedia9-KB885492-x86-KOR.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/0/c/e/0ce291f6-7b0e-49dc-83cf-a7e00ff16e9b/WindowsMedia9-KB885492-x86-NLD.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/1/a/4/1a404aca-2427-424e-8bfb-d0c2583af964/WindowsMedia9-KB885492-x86-NOR.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/1/d/d/1ddc6ad6-7fc7-4018-bd57-612e3446c2d0/WindowsMedia9-KB885492-x86-PLK.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/9/3/4/934a060e-3f6f-4f01-b1be-4e2d046a03cc/WindowsMedia9-KB885492-x86-PTB.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/d/4/0/d40b5a1c-3b34-44c4-92e2-64efabda1b74/WindowsMedia9-KB885492-x86-PTG.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/2/c/7/2c7bc7a1-2938-4fcf-944d-c4fbacaaaefe/WindowsMedia9-KB885492-x86-RUS.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/2/5/2/252be512-500c-4310-a3a7-e0b3c919a3d3/WindowsMedia9-KB885492-x86-SVE.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/4/3/2/43262c73-731f-4510-80e7-e43931d17e59/WindowsMedia9-KB885492-x86-TRK.exe|updates/mediaplayer9/windowsmedia9-kb885492-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\mediaplayer9\WindowsMedia9-KB885492-x86-%WINLANG%.exe /passive /n /norestart"

if not exist %Z%\updates\journalviewer\%WINLANG%\setup.exe goto nojournalviewer

:: Security Update for Windows Journal Viewer (KB886179)
:: Microsoft Security Bulletin MS04-028
:: "Buffer Overrun in JPEG Processing (GDI+) Could Allow Code Execution (833987)"
:: <http://www.microsoft.com/technet/security/bulletin/MS04-028.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=DBF1EA4E-72BD-4359-9F93-7C232ED2DCD3>
:: No Download found for ARA.
:: No Download found for CSY.
:: No Download found for DAN.
:: URL|DEU|http://download.microsoft.com/download/1/5/4/1544f14d-9223-4fc2-be89-df2d808f33a9/JournalViewer1.5_KB886179_DEU.exe|updates/journalviewer/journalviewer1.5_kb886179_deu.exe
:: No Download found for ELL.
:: URL|ENU|http://download.microsoft.com/download/f/0/a/f0a18b7a-7f60-45be-b4e2-d25905f5bf04/JournalViewer1.5_KB886179_ENU.exe|updates/journalviewer/journalviewer1.5_kb886179_enu.exe
:: No Download found for ESN.
:: No Download found for FIN.
:: URL|FRA|http://download.microsoft.com/download/3/4/2/3426b140-5c57-4c6f-87a1-7ae4a94a93a6/JournalViewer1.5_KB886179_FRA.exe|updates/journalviewer/journalviewer1.5_kb886179_fra.exe
:: No Download found for HEB.
:: No Download found for HUN.
:: No Download found for ITA.
:: URL|JPN|http://download.microsoft.com/download/e/3/a/e3ae3db1-28d7-4678-9721-2b77ceb69e90/JournalViewer1.5_KB886179_JPN.exe|updates/journalviewer/journalviewer1.5_kb886179_jpn.exe
:: URL|KOR|http://download.microsoft.com/download/4/2/0/420d19d4-e028-4991-80b8-10678eb6cb8b/JournalViewer1.5_KB886179_KOR.exe|updates/journalviewer/journalviewer1.5_kb886179_kor.exe
:: No Download found for NLD.
:: No Download found for NOR.
:: No Download found for PLK.
:: No Download found for PTB.
:: No Download found for PTG.
:: No Download found for RUS.
:: No Download found for SVE.
:: No Download found for TRK.
todo.pl ".reboot-on 194 %Z%\updates\journalviewer\JournalViewer1.5_KB886179_%WINLANG%.exe /q /r:n"

:: Microsoft Windows Journal Viewer 1.5
:: <http://www.microsoft.com/downloads/details.aspx?familyid=fad44098-8b73-4e06-96d4-d1eb70eacb44>
:: No Download found for ARA.
:: No Download found for CSY.
:: No Download found for DAN.
:: URL|DEU|http://download.microsoft.com/download/b/4/e/b4e86977-7646-479d-835b-cd79dfe18e00/setup.exe|updates/journalviewer/deu/setup.exe
:: No Download found for ELL.
:: URL|ENU|http://download.microsoft.com/download/4/6/3/463ff4b8-a60a-4569-b3f1-a4c1ec784ff2/setup.exe|updates/journalviewer/enu/setup.exe
:: No Download found for ESN.
:: No Download found for FIN.
:: URL|FRA|http://download.microsoft.com/download/9/0/6/90660e9c-a491-4a82-98ed-9ec6d78ffbe8/setup.exe|updates/journalviewer/fra/setup.exe
:: No Download found for HEB.
:: No Download found for HUN.
:: No Download found for ITA.
:: URL|JPN|http://download.microsoft.com/download/b/5/8/b580e6f0-24a2-45bf-b2bc-c82d30dcb153/setup.exe|updates/journalviewer/jpn/setup.exe
:: URL|KOR|http://download.microsoft.com/download/3/e/4/3e4129e8-0350-48f1-a036-a4c86ccdb02b/setup.exe|updates/journalviewer/kor/setup.exe
:: No Download found for NLD.
:: No Download found for NOR.
:: No Download found for PLK.
:: No Download found for PTB.
:: No Download found for PTG.
:: No Download found for RUS.
:: No Download found for SVE.
:: No Download found for TRK.
todo.pl ".reboot-on 194 %Z%\updates\journalviewer\%WINLANG%\setup.exe /q /c:\"msiexec /l* %SystemDrive%\netinst\logs\journalviewer.txt /i \"\"Microsoft Windows Journal Viewer.msi\"\" /qn\""
:nojournalviewer

:: Security Update for Windows 2000 (KB920670)
:: Microsoft Security Bulletin MS06-050
:: "Vulnerabilities in Microsoft Windows Hyperlink Object Library Could Allow Remote Code Execution (920670)"
:: <http://www.microsoft.com/technet/security/bulletin/ms06-050.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=bfe3f869-08be-4f13-97a1-7274ad44c7fb>
:: URL|ARA|http://download.microsoft.com/download/1/e/5/1e5b20f5-4bff-4d19-8657-003e7edc47be/Windows2000-KB920670-x86-ARA.EXE|updates/win2ksp4/windows2000-kb920670-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/7/a/e/7aeb6089-3178-4da0-8af5-fb8dd199a876/Windows2000-KB920670-x86-CSY.EXE|updates/win2ksp4/windows2000-kb920670-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/c/8/a/c8acdda0-8dcb-4785-800d-ee9fa672ff07/Windows2000-KB920670-x86-DAN.EXE|updates/win2ksp4/windows2000-kb920670-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/8/9/e/89ecad68-8b01-49fc-a69e-3e0e3e9d0e3d/Windows2000-KB920670-x86-DEU.EXE|updates/win2ksp4/windows2000-kb920670-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/4/f/8/4f84ea16-13db-496d-84f9-43d1258c465d/Windows2000-KB920670-x86-ELL.EXE|updates/win2ksp4/windows2000-kb920670-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/2/1/2/212fd127-6a0b-4a52-a0ae-c005b752c90f/Windows2000-KB920670-x86-ENU.EXE|updates/win2ksp4/windows2000-kb920670-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/b/5/e/b5e34e0a-a532-4480-88a8-bc2324881c04/Windows2000-KB920670-x86-ESN.EXE|updates/win2ksp4/windows2000-kb920670-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/a/a/d/aadc3dd7-05fe-4d9b-bb51-ffee8d1cbd01/Windows2000-KB920670-x86-FIN.EXE|updates/win2ksp4/windows2000-kb920670-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/b/0/7/b0702e93-65b5-4f37-8c0b-df5a9d584fce/Windows2000-KB920670-x86-FRA.EXE|updates/win2ksp4/windows2000-kb920670-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/4/1/b/41bead35-04e3-4b87-a5a4-dfd5847d12da/Windows2000-KB920670-x86-HEB.EXE|updates/win2ksp4/windows2000-kb920670-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/f/6/7/f670e9ae-c89a-45b3-9095-04fa69cf72d5/Windows2000-KB920670-x86-HUN.EXE|updates/win2ksp4/windows2000-kb920670-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/4/b/8/4b8b75d5-47eb-4c90-a40a-18d789cd0e99/Windows2000-KB920670-x86-ITA.EXE|updates/win2ksp4/windows2000-kb920670-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/b/f/7/bf788f2c-2dc5-461f-acbd-a6d61a690cc5/Windows2000-KB920670-x86-JPN.EXE|updates/win2ksp4/windows2000-kb920670-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/0/0/9/009d926a-4c8e-47fc-91cd-8c2a3e724e1e/Windows2000-KB920670-x86-KOR.EXE|updates/win2ksp4/windows2000-kb920670-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/c/a/d/cad524bc-2a91-4fda-9925-35d4f337ffff/Windows2000-KB920670-x86-NLD.EXE|updates/win2ksp4/windows2000-kb920670-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/2/6/b/26bb3802-424d-4398-9963-72380834054c/Windows2000-KB920670-x86-NOR.EXE|updates/win2ksp4/windows2000-kb920670-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/d/2/6/d26681df-6cc6-4286-9524-bc0a56c1640d/Windows2000-KB920670-x86-PLK.EXE|updates/win2ksp4/windows2000-kb920670-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/0/7/a/07a0b7f5-6dc2-4e9b-a920-50ca20cba93e/Windows2000-KB920670-x86-PTB.EXE|updates/win2ksp4/windows2000-kb920670-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/1/4/b/14b73342-94b6-4713-9d9d-8e79dfaf4d16/Windows2000-KB920670-x86-PTG.EXE|updates/win2ksp4/windows2000-kb920670-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/8/8/8/88810eb1-ebbd-47d3-b202-9674ef674586/Windows2000-KB920670-x86-RUS.EXE|updates/win2ksp4/windows2000-kb920670-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/3/9/b/39b3e4e1-f640-4a34-905c-2edf0a3b6fb4/Windows2000-KB920670-x86-SVE.EXE|updates/win2ksp4/windows2000-kb920670-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/7/1/c/71c1becd-b5fa-4bb6-b57f-0a173f5c33fb/Windows2000-KB920670-x86-TRK.EXE|updates/win2ksp4/windows2000-kb920670-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB920670-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB920958)
:: Microsoft Security Bulletin MS06-049
:: "Vulnerability in Windows Kernel Could Result in Elevation of Privilege (920958)"
:: <http://www.microsoft.com/technet/security/bulletin/ms06-049.mspx>
:: Security Update for Windows 2000 (KB920958)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=08806182-6a26-4663-91ea-179817350a91>
:: URL|ARA|http://download.microsoft.com/download/8/c/f/8cfb0f5c-8229-442a-8158-8adc6681bbdd/Windows2000-KB920958-v2-x86-ARA.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/7/5/f/75f3aa1f-202a-4110-9fb9-d670910690e3/Windows2000-KB920958-v2-x86-CSY.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/8/6/0/8605f5fc-22a3-4d8f-90ab-eff246c8bcdc/Windows2000-KB920958-v2-x86-DAN.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/c/b/a/cba118e9-9134-4085-b0fa-07c512200f35/Windows2000-KB920958-v2-x86-DEU.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/d/7/d/d7d27049-73e4-46d8-9dca-f6e3d16f4cf2/Windows2000-KB920958-v2-x86-ELL.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/6/1/9/6193a60d-6721-4428-829c-4a32e27e6dab/Windows2000-KB920958-v2-x86-ENU.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/5/6/0/560d2e2f-996e-4e16-a3ff-4b3eda54343a/Windows2000-KB920958-v2-x86-ESN.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/c/6/0/c60382c8-d072-4382-8332-2189b1322bbc/Windows2000-KB920958-v2-x86-FIN.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/2/b/f/2bf20ee3-4f83-4449-80c4-5ef47dad50bb/Windows2000-KB920958-v2-x86-FRA.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/3/2/8/328b4e7f-0cd9-490e-9894-d093c7e2909c/Windows2000-KB920958-v2-x86-HEB.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/0/f/0/0f074e0b-ae8d-4dcb-8eff-59bf6da60170/Windows2000-KB920958-v2-x86-HUN.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/2/9/2/29246888-71a1-4964-bcc6-31809f1a6338/Windows2000-KB920958-v2-x86-ITA.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/6/2/f/62f57769-474e-4e00-8a7c-959f325622e1/Windows2000-KB920958-v2-x86-JPN.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/4/a/2/4a2743e4-e846-42f0-a1cf-1552b1add1de/Windows2000-KB920958-v2-x86-KOR.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/2/2/8/2288697c-e770-4c22-9be4-30c6424de7ae/Windows2000-KB920958-v2-x86-NLD.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/0/1/8/0188c218-2ba5-4f00-954f-7328149d5e06/Windows2000-KB920958-v2-x86-NOR.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/f/b/a/fbade05b-192e-471c-bb7e-64c8c64f8ca8/Windows2000-KB920958-v2-x86-PLK.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/c/f/1/cf100813-5260-4b93-9b27-67dd6a0236d7/Windows2000-KB920958-v2-x86-PTB.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/b/5/7/b5774a39-cdd0-48d2-a29c-b16fbe3ff7ad/Windows2000-KB920958-v2-x86-PTG.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/6/7/0/670c107a-4f63-4d9d-b770-e89714c3e7a2/Windows2000-KB920958-v2-x86-RUS.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/7/9/d/79d0792c-092e-4a11-ac06-f0b720f2b96f/Windows2000-KB920958-v2-x86-SVE.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/1/f/c/1fcbf669-3716-439b-85eb-4e977899ea70/Windows2000-KB920958-v2-x86-TRK.EXE|updates/win2ksp4/windows2000-kb920958-v2-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB920958-v2-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB921398)
:: Microsoft Security Bulletin MS06-045
:: "Vulnerability in Windows Explorer Could Allow Remote Code Execution (921398)"
:: <http://www.microsoft.com/technet/security/bulletin/ms06-045.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=38cee83e-b17a-4c08-90ce-fb836b9615ad>
:: URL|ARA|http://download.microsoft.com/download/e/9/6/e967948b-7c54-42e0-93a0-6ee28ee66140/Windows2000-KB921398-x86-ARA.EXE|updates/win2ksp4/windows2000-kb921398-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/c/d/d/cdd87285-c515-4610-b777-38a93d82ab52/Windows2000-KB921398-x86-CSY.EXE|updates/win2ksp4/windows2000-kb921398-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/d/4/c/d4cab59b-69b3-4a2a-b7bd-abe1da62f878/Windows2000-KB921398-x86-DAN.EXE|updates/win2ksp4/windows2000-kb921398-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/e/3/a/e3a7bc35-7bc1-4e92-9417-f7cb5b3fc927/Windows2000-KB921398-x86-DEU.EXE|updates/win2ksp4/windows2000-kb921398-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/0/b/c/0bc2b7f6-f6f9-4447-9c7a-7f64c7466cdb/Windows2000-KB921398-x86-ELL.EXE|updates/win2ksp4/windows2000-kb921398-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/2/3/6/236323d3-fd81-43a4-a42f-31fe74705c55/Windows2000-KB921398-x86-ENU.EXE|updates/win2ksp4/windows2000-kb921398-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/d/b/f/dbf0084f-1939-4525-9bf9-468cbef72a1d/Windows2000-KB921398-x86-ESN.EXE|updates/win2ksp4/windows2000-kb921398-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/a/1/6/a16db879-0042-43ed-b7bb-5e281a728242/Windows2000-KB921398-x86-FIN.EXE|updates/win2ksp4/windows2000-kb921398-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/0/5/4/05436db7-eabb-4cde-ac73-885e1baf087a/Windows2000-KB921398-x86-FRA.EXE|updates/win2ksp4/windows2000-kb921398-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/d/1/4/d14d8ca4-e6c5-446f-a737-549bc14db5af/Windows2000-KB921398-x86-HEB.EXE|updates/win2ksp4/windows2000-kb921398-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/6/1/d/61d310f6-829b-4b96-80cc-778bd41369c5/Windows2000-KB921398-x86-HUN.EXE|updates/win2ksp4/windows2000-kb921398-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/c/4/c/c4c15440-6a74-4293-a73e-10112001a9c1/Windows2000-KB921398-x86-ITA.EXE|updates/win2ksp4/windows2000-kb921398-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/9/5/4/954cab28-05ec-492e-b780-dd5db52b55ce/Windows2000-KB921398-x86-JPN.EXE|updates/win2ksp4/windows2000-kb921398-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/0/5/2/0526eca6-a673-4be1-86d9-db4189816097/Windows2000-KB921398-x86-KOR.EXE|updates/win2ksp4/windows2000-kb921398-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/d/3/f/d3fa2893-ec78-4bd1-bf8c-e3dfe1863279/Windows2000-KB921398-x86-NLD.EXE|updates/win2ksp4/windows2000-kb921398-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/f/e/1/fe1e0032-8daf-4278-bf3d-3a8ca02c6cb9/Windows2000-KB921398-x86-NOR.EXE|updates/win2ksp4/windows2000-kb921398-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/7/f/f/7ff87773-5b02-4c47-86b1-aab946fb51cb/Windows2000-KB921398-x86-PLK.EXE|updates/win2ksp4/windows2000-kb921398-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/9/6/3/9632255a-dd5b-46e7-9832-6156afc30394/Windows2000-KB921398-x86-PTB.EXE|updates/win2ksp4/windows2000-kb921398-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/6/a/8/6a8791d5-9c89-4354-8a71-55069d585e06/Windows2000-KB921398-x86-PTG.EXE|updates/win2ksp4/windows2000-kb921398-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/9/c/c/9cc9a932-db92-43ed-b5be-065516bc1008/Windows2000-KB921398-x86-RUS.EXE|updates/win2ksp4/windows2000-kb921398-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/b/1/9/b198de9f-c64d-4703-9004-4248310e96d1/Windows2000-KB921398-x86-SVE.EXE|updates/win2ksp4/windows2000-kb921398-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/2/9/4/294c428f-e0c2-451d-a50f-92ae11a63501/Windows2000-KB921398-x86-TRK.EXE|updates/win2ksp4/windows2000-kb921398-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB921398-x86-%WINLANG%.EXE /passive /n /norestart"

:: Critical Update for Windows Media Player (All Versions) for Windows 2000, Windows XP, and Windows Server 2003 (KB828026)
:: <http://support.microsoft.com/?kbid=828026>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=af9cf65e-0c55-452e-a0fa-3aa165e667c1>
:: URL|ARA|http://download.microsoft.com/download/6/8/2/68236e90-fce9-42b5-ab44-f85e48a3b61a/WindowsMedia-Q828026-x86-ARA.exe|updates/mediaplayer9/windowsmedia-q828026-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/d/8/e/d8e83d12-754c-4c78-ab60-efc2828a64a7/WindowsMedia-Q828026-x86-CSY.exe|updates/mediaplayer9/windowsmedia-q828026-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/f/a/e/faefa94d-fb32-4f05-9964-2572b97d84f5/WindowsMedia-Q828026-x86-DAN.exe|updates/mediaplayer9/windowsmedia-q828026-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/5/1/a/51ad420e-55b4-479c-bc70-e25771d59300/WindowsMedia-Q828026-x86-DEU.exe|updates/mediaplayer9/windowsmedia-q828026-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/3/6/7/367c8b14-4041-407a-acd7-7c22f6099a7d/WindowsMedia-Q828026-x86-ELL.exe|updates/mediaplayer9/windowsmedia-q828026-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/c/e/0/ce005267-09e9-423b-a360-7db7825b4b36/WindowsMedia-Q828026-x86-ENU.exe|updates/mediaplayer9/windowsmedia-q828026-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/f/2/9/f29f0949-4609-4e4f-91b6-9aacbf6bd78b/WindowsMedia-Q828026-x86-ESN.exe|updates/mediaplayer9/windowsmedia-q828026-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/0/7/d/07d96b65-53a0-422f-bbb3-610cfa2556c0/WindowsMedia-Q828026-x86-FIN.exe|updates/mediaplayer9/windowsmedia-q828026-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/1/e/c/1eca869e-f23e-4a6c-ae7c-605c01f00c0f/WindowsMedia-Q828026-x86-FRA.exe|updates/mediaplayer9/windowsmedia-q828026-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/e/9/e/e9ed3a5c-8bba-4a4f-b3f9-24f3f3a00510/WindowsMedia-Q828026-x86-HEB.exe|updates/mediaplayer9/windowsmedia-q828026-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/d/0/9/d094064f-795e-499a-8d6d-c966454ffdbb/WindowsMedia-Q828026-x86-HUN.exe|updates/mediaplayer9/windowsmedia-q828026-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/c/8/8/c88a8e9f-0c69-4641-9fff-6548df56ea83/WindowsMedia-Q828026-x86-ITA.exe|updates/mediaplayer9/windowsmedia-q828026-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/1/8/9/1890af3b-0dc4-4007-9c5f-f1165945006d/WindowsMedia-Q828026-x86-JPN.exe|updates/mediaplayer9/windowsmedia-q828026-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/0/5/6/05641b1e-caea-4e5e-ac02-c62b8f3f2bf1/WindowsMedia-KB828026-x86-KOR.exe|updates/mediaplayer9/windowsmedia-kb828026-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/1/c/8/1c8145ac-0b4d-4568-87d1-0c399ce14b01/WindowsMedia-Q828026-x86-NLD.exe|updates/mediaplayer9/windowsmedia-q828026-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/2/6/8/26852adb-3718-4e90-ae5a-847712ed09e6/WindowsMedia-Q828026-x86-NOR.exe|updates/mediaplayer9/windowsmedia-q828026-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/a/1/0/a10151ce-358b-4389-8305-5402cde516f7/WindowsMedia-Q828026-x86-PLK.exe|updates/mediaplayer9/windowsmedia-q828026-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/3/3/8/3387a244-d5bf-414b-b405-600d31431742/WindowsMedia-Q828026-x86-PTB.exe|updates/mediaplayer9/windowsmedia-q828026-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/e/0/5/e054e721-07e2-4fdc-bd05-2c0472154748/WindowsMedia-Q828026-x86-PTG.exe|updates/mediaplayer9/windowsmedia-q828026-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/1/e/4/1e4af859-cccb-4e40-a10b-5a761ace2592/WindowsMedia-Q828026-x86-RUS.exe|updates/mediaplayer9/windowsmedia-q828026-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/e/f/3/ef3fb4f2-2f48-4a98-861d-e9baa2d39003/WindowsMedia-Q828026-x86-SVE.exe|updates/mediaplayer9/windowsmedia-q828026-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/d/d/e/dde477ca-6d62-4c87-a98d-91c22cc97c5c/WindowsMedia-Q828026-x86-TRK.exe|updates/mediaplayer9/windowsmedia-q828026-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\mediaplayer9\WindowsMedia-Q828026-x86-%WINLANG%.exe /passive /n /norestart"

:: Flaw In Windows Media Player May Allow Media Library Access
:: <http://support.microsoft.com/?kbid=819639>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=36814221-8194-4492-bb29-94db3d4cb682>
:: URL|ARA|http://download.microsoft.com/download/f/3/0/f301a632-6f63-4f0c-9aa3-5c2442c35ffd/WindowsMedia9-KB819639-x86-ARA.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/6/0/d/60df6a97-4b9b-452e-b068-18c974f7a207/WindowsMedia9-KB819639-x86-CSY.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/9/1/d/91d317fd-b463-4c0b-9139-5a7e42883cde/WindowsMedia9-KB819639-x86-DAN.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/1/1/6/1165cb4f-0016-4afd-9854-929d2b8c6c17/WindowsMedia9-KB819639-x86-DEU.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/4/e/d/4edcc9b1-46fa-4106-8be1-ee00e60245db/WindowsMedia9-KB819639-x86-ELL.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/6/6/9/6692c11a-e001-4706-bf86-c37a7111d9de/WindowsMedia9-KB819639-x86-ENU.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/6/a/8/6a8e305f-c8f1-4d50-842d-6af81ee301f5/WindowsMedia9-KB819639-x86-ESN.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/2/7/7/27789ab6-2f88-43a6-8b2e-1cae8bb41793/WindowsMedia9-KB819639-x86-FIN.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/1/8/a/18a4d567-9c61-4bf6-bdd1-5ffbdff8aff0/WindowsMedia9-KB819639-x86-FRA.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/d/0/a/d0afff40-4bfd-49e4-9681-0e6bed8df042/WindowsMedia9-KB819639-x86-HEB.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/a/6/1/a61c9c0b-b391-423d-84d9-af9def8116ef/WindowsMedia9-KB819639-x86-HUN.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/e/8/8/e88b672a-6186-4caf-923f-f34a3e69b95e/WindowsMedia9-KB819639-x86-ITA.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/5/4/0/540f9efd-6078-4409-a007-73e14d055b63/WindowsMedia9-KB819639-x86-JPN.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/8/7/5/87506c24-a324-4b32-89ac-0f62789d12da/WindowsMedia9-KB819639-x86-KOR.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/2/0/c/20ccf973-faec-438a-8e16-469f689472be/WindowsMedia9-KB819639-x86-NLD.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/7/6/a/76aac9a5-7633-4511-8284-e71a1afe03b0/WindowsMedia9-KB819639-x86-NOR.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/f/1/9/f1936b67-bc95-4a31-a9b8-44ea175c5af5/WindowsMedia9-KB819639-x86-PLK.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/6/5/b/65b3748d-c052-4c2d-96e8-3114065a745f/WindowsMedia9-KB819639-x86-PTB.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/3/c/c/3cc9a047-4afe-4d8c-b4fc-46fa27aecb4d/WindowsMedia9-KB819639-x86-PTG.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/f/b/8/fb8874ba-b8a9-4084-ba42-ac9587f7b913/WindowsMedia9-KB819639-x86-RUS.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/8/3/a/83abc015-7b06-4610-9ac1-57de2ad2a64e/WindowsMedia9-KB819639-x86-SVE.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/4/5/5/455b7ff4-c4fc-44f4-8745-178fbe14c31d/WindowsMedia9-KB819639-x86-TRK.exe|updates/mediaplayer9/windowsmedia9-kb819639-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\mediaplayer9\WindowsMedia9-KB819639-x86-%WINLANG%.exe /q /r:n"

:: Windows Media Player 9 Series for Windows 98 Second Edition, Me, and 2000
:: <http://www.microsoft.com/windows/windowsmedia/download/default.asp>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=e0175119-9a5b-44c3-b1de-9b2a9aa6cff6>
:: URL|ARA|http://download.microsoft.com/download/2/9/4/2940d633-6604-4bc1-8f01-101e848c72f2/mpsetup.exe|packages/mediaplayer9/ara/mpsetup.exe
:: URL|CSY|http://download.microsoft.com/download/c/3/e/c3e0cad2-7918-4c64-832b-64514c04fc9d/MPsetup.exe|packages/mediaplayer9/csy/mpsetup.exe
:: URL|DAN|http://download.microsoft.com/download/f/6/c/f6c8e812-fd12-481c-87a8-1b7cdba78dbe/MPsetup.exe|packages/mediaplayer9/dan/mpsetup.exe
:: URL|DEU|http://download.microsoft.com/download/9/5/9/9595fce3-cd2c-49f7-97fd-afd4e05577b1/mpsetup.exe|packages/mediaplayer9/deu/mpsetup.exe
:: URL|ELL|http://download.microsoft.com/download/A/A/4/AA4A7E32-F56F-424E-83F2-5905A54C8118/MPsetup.exe|packages/mediaplayer9/ell/mpsetup.exe
:: URL|ENU|http://download.microsoft.com/download/1/b/c/1bc0b1a3-c839-4b36-8f3c-19847ba09299/MPSetup.exe|packages/mediaplayer9/enu/mpsetup.exe
:: URL|ESN|http://download.microsoft.com/download/6/1/b/61bf3125-375d-45c2-8105-3f8c878b235e/MPSetup.exe|packages/mediaplayer9/esn/mpsetup.exe
:: URL|FIN|http://download.microsoft.com/download/9/8/a/98a557b3-f96e-480d-84f0-50c8df758629/MPsetup.exe|packages/mediaplayer9/fin/mpsetup.exe
:: URL|FRA|http://download.microsoft.com/download/d/e/7/de79b359-770c-4f4d-9168-c460cafa2597/MPSetup.exe|packages/mediaplayer9/fra/mpsetup.exe
:: URL|HEB|http://download.microsoft.com/download/c/4/4/c4406e29-13d8-44ea-8a8f-dcbd44f477c0/mpsetup.exe|packages/mediaplayer9/heb/mpsetup.exe
:: URL|HUN|http://download.microsoft.com/download/e/7/7/e77f97a8-eff5-4212-9b71-68ffef6739e4/MPsetup.exe|packages/mediaplayer9/hun/mpsetup.exe
:: URL|ITA|http://download.microsoft.com/download/b/8/2/b827efd9-d7cd-4033-b63c-6b4e40041b4e/MPSetup.exe|packages/mediaplayer9/ita/mpsetup.exe
:: URL|JPN|http://download.microsoft.com/download/a/c/3/ac32a740-f67c-43b4-b333-30bc3688732f/mpsetup.exe|packages/mediaplayer9/jpn/mpsetup.exe
:: URL|KOR|http://download.microsoft.com/download/9/0/8/9087A7A7-1307-469D-98AC-816715D17CA4/mpsetup.exe|packages/mediaplayer9/kor/mpsetup.exe
:: URL|NLD|http://download.microsoft.com/download/9/2/0/920b7fce-b581-4ea4-bd6f-2034f55be270/MPSetup.exe|packages/mediaplayer9/nld/mpsetup.exe
:: URL|NOR|http://download.microsoft.com/download/a/6/1/a61d6152-bd3c-4d63-a0c8-bd3b0b6cb60a/MPsetup.exe|packages/mediaplayer9/nor/mpsetup.exe
:: URL|PLK|http://download.microsoft.com/download/9/6/3/9637c7fd-fc8f-48e8-a7fc-c3c16b74d8d9/MPsetup.exe|packages/mediaplayer9/plk/mpsetup.exe
:: URL|PTB|http://download.microsoft.com/download/5/0/c/50c80ed6-7d1e-4516-a29e-78a0ba3549c9/MPSetup.exe|packages/mediaplayer9/ptb/mpsetup.exe
:: URL|PTG|http://download.microsoft.com/download/F/8/0/F803C552-DC49-464A-8946-130C6DF7B5F2/MPsetup.exe|packages/mediaplayer9/ptg/mpsetup.exe
:: URL|RUS|http://download.microsoft.com/download/d/b/e/dbe3a1da-48a3-4aaa-8ef3-efac2b3066a4/MPsetup.exe|packages/mediaplayer9/rus/mpsetup.exe
:: URL|SVE|http://download.microsoft.com/download/1/6/c/16c7bf39-0f6a-4d06-8fd0-9d0dd0ca5b1a/MPSetup.exe|packages/mediaplayer9/sve/mpsetup.exe
:: URL|TRK|http://download.microsoft.com/download/e/a/0/ea09f0a9-901d-499b-868d-0ebef90cc329/MPsetup.exe|packages/mediaplayer9/trk/mpsetup.exe
todo.pl ".reboot-on 194 %Z%\packages\mediaplayer9\%WINLANG%\MPSetup.EXE /Q /R:N /C:\"setup_wm.exe /DisallowSystemRestore /NoPID /SetWMPAsDefault /Q /R:N\""

:: DirectX 9.0c Redistributable for Software Developers - Multilingual
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=9226a611-62fe-4f61-aba1-914185249413>
:: (Requires .NET to be installed first for managed DX)
:: URL|ALL|http://download.microsoft.com/download/8/1/e/81ed90eb-dd87-4a23-aedc-298a9603b4e4/directx_9c_redist.exe|updates/directx9/directx_9c_redist.exe
:: Here we extract the installer to %TEMP%, run it, and delete it.
todo.pl "rmdir /s /q \"%TEMP%\dx9c\""
todo.pl ".reboot-on 1 \"%TEMP%\dx9c\dxsetup.exe\" /silent /installmanageddx"
todo.pl "%Z%\updates\directx9\directx_9c_redist.exe /q /c /t:\"%TEMP%\dx9c\""

:: .NET Framework Version 2.0 Language Pack
:: <http://www.microsoft.com/downloads/details.aspx?familyid=39C8B63B-F64B-4B68-A774-B64ED0C32AE7>
:: URL|ARA|http://download.microsoft.com/download/f/8/5/f85a7726-d456-4e28-b687-f068f908266d/langpack.exe|updates/common/ara/dotnet_20_langpack.exe
:: URL|CSY|http://download.microsoft.com/download/e/e/9/ee99aa30-2e1f-4db8-b670-4ff086b7f775/langpack.exe|updates/common/csy/dotnet_20_langpack.exe
:: URL|DAN|http://download.microsoft.com/download/2/d/d/2dd1f5c4-4375-4975-9caa-648c023e1324/langpack.exe|updates/common/dan/dotnet_20_langpack.exe
:: URL|DEU|http://download.microsoft.com/download/2/9/7/29768238-56c3-4ea6-abba-4c5246f2bc81/langpack.exe|updates/common/deu/dotnet_20_langpack.exe
:: URL|ELL|http://download.microsoft.com/download/c/b/1/cb1e7a61-c199-461c-b7bc-1bfb9fc550d2/langpack.exe|updates/common/ell/dotnet_20_langpack.exe
:: No Language Pack needed for ENU.
:: URL|ESN|http://download.microsoft.com/download/e/a/a/eaaf696f-3bd4-4e05-a471-d488b29ee52b/langpack.exe|updates/common/esn/dotnet_20_langpack.exe
:: URL|FIN|http://download.microsoft.com/download/6/8/9/689f899f-957a-4494-b167-fe07de469fd2/langpack.exe|updates/common/fin/dotnet_20_langpack.exe
:: URL|FRA|http://download.microsoft.com/download/9/9/5/995002e9-b8b9-4794-8d09-6eaa8f8b2806/langpack.exe|updates/common/fra/dotnet_20_langpack.exe
:: URL|HEB|http://download.microsoft.com/download/0/2/4/024a2a12-2468-431d-b758-83f5c981e656/langpack.exe|updates/common/heb/dotnet_20_langpack.exe
:: URL|HUN|http://download.microsoft.com/download/a/5/d/a5d68ee1-e4d7-44b4-b7ff-6521e0e1bd7e/langpack.exe|updates/common/hun/dotnet_20_langpack.exe
:: URL|ITA|http://download.microsoft.com/download/d/7/7/d7712375-6a01-435d-878d-b2b7ff348e30/langpack.exe|updates/common/ita/dotnet_20_langpack.exe
:: URL|JPN|http://download.microsoft.com/download/5/9/4/594a8f51-ba02-44ea-ba45-f8bebb19a47d/langpack.exe|updates/common/jpn/dotnet_20_langpack.exe
:: URL|KOR|http://download.microsoft.com/download/f/2/9/f293d0f9-d815-48b4-bc03-07d5bfae279f/langpack.exe|updates/common/kor/dotnet_20_langpack.exe
:: URL|NLD|http://download.microsoft.com/download/8/6/f/86f9563d-3a12-4a99-a4f9-522a29b8abe9/langpack.exe|updates/common/nld/dotnet_20_langpack.exe
:: URL|NOR|http://download.microsoft.com/download/0/f/a/0faa74d8-7d06-4811-9e69-d02526d5a042/langpack.exe|updates/common/nor/dotnet_20_langpack.exe
:: URL|PLK|http://download.microsoft.com/download/a/2/d/a2d01fc7-8c40-43d8-aeb4-0ac6181e652c/langpack.exe|updates/common/plk/dotnet_20_langpack.exe
:: URL|PTB|http://download.microsoft.com/download/d/a/4/da4ad9d7-f0d3-4f28-866b-2bbf8636881b/langpack.exe|updates/common/ptb/dotnet_20_langpack.exe
:: URL|PTG|http://download.microsoft.com/download/8/a/b/8ab19777-11c5-44b6-822d-f8331b371f40/langpack.exe|updates/common/ptg/dotnet_20_langpack.exe
:: URL|RUS|http://download.microsoft.com/download/a/b/b/abbb30f4-5942-4d39-85f9-8c8b285dfc1f/langpack.exe|updates/common/rus/dotnet_20_langpack.exe
:: URL|SVE|http://download.microsoft.com/download/b/b/7/bb78a372-4c94-43e7-8657-308da34d00b5/langpack.exe|updates/common/sve/dotnet_20_langpack.exe
:: URL|TRK|http://download.microsoft.com/download/7/e/3/7e32373e-8594-4379-aff2-caa78c14ed62/langpack.exe|updates/common/trk/dotnet_20_langpack.exe
if not exist %Z%\updates\common\%WINLANG%\dotnet_20_langpack.exe goto nolangpack20
todo.pl ".reboot-on 194 %Z%\updates\common\%WINLANG%\dotnet_20_langpack.exe /q /c:\"install /q\""
:nolangpack20

:: NDP 2.0 ASP.Net Security Update (KB917283)
:: <http://www.microsoft.com/technet/security/bulletin/MS06-033.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=56A1777B-9758-489F-8BE8-5177AAF488D1>
:: URL|ALL|http://download.microsoft.com/download/1/8/5/185ebe2d-6dda-4300-bda5-64f527f3367d/NDP20-KB917283-X86.exe|updates/common/ndp20-kb917283-x86.exe
todo.pl ".reboot-on 194 %Z%\updates\common\ndp20-kb917283-x86.exe /passive /q /norestart"

:: Microsoft .NET Framework Version 2.0 Redistributable Package (x86)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=0856EACB-4362-4B0D-8EDD-AAB15C5E04F5>
:: URL|ALL|http://download.microsoft.com/download/5/6/7/567758a3-759e-473e-bf8f-52154438565a/dotnetfx.exe|updates/common/dotnetfx_20.exe
todo.pl ".reboot-on 194 %Z%\updates\common\dotnetfx_20.exe /q /c:\"install /q\""

if not exist %Z%\updates\common\%WINLANG%\dotnet_langpack.exe goto nolangpack
:: Microsoft .NET Framework Version 1.1 Language Pack
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=04DBAF2E-61ED-43F4-8D2A-CCB2BAB7B8EB>
:: No Download found for ARA.
:: URL|CSY|http://download.microsoft.com/download/f/1/0/f10e6152-13dd-4c52-ae6d-4417dd42d4e1/langpack.exe|updates/common/csy/langpack.exe
:: URL|DAN|http://download.microsoft.com/download/f/4/7/f474c96e-0631-4cbb-b49b-67206b4058db/langpack.exe|updates/common/dan/langpack.exe
:: URL|DEU|http://download.microsoft.com/download/6/8/2/6821e687-526a-4ef8-9a67-9a402ec5ac9e/langpack.exe|updates/common/deu/langpack.exe
:: URL|ELL|http://download.microsoft.com/download/a/0/9/a099cf43-8d33-4e3f-ac95-2096c9ee73ef/langpack.exe|updates/common/ell/langpack.exe
:: No Download found for ENU.
:: URL|ESN|http://download.microsoft.com/download/2/a/3/2a33623b-d870-46e5-8703-3d61413b559f/langpack.exe|updates/common/esn/langpack.exe
:: URL|FIN|http://download.microsoft.com/download/f/8/c/f8c44b9d-f4ac-4d53-a6fb-c6fbf6778f0c/langpack.exe|updates/common/fin/langpack.exe
:: URL|FRA|http://download.microsoft.com/download/3/a/0/3a064c0b-63c7-41ed-ab8f-b91af59d542d/langpack.exe|updates/common/fra/langpack.exe
:: No Download found for HEB.
:: URL|HUN|http://download.microsoft.com/download/5/2/a/52ad0a9f-2628-4091-a0bb-8f139462479b/langpack.exe|updates/common/hun/langpack.exe
:: URL|ITA|http://download.microsoft.com/download/1/f/d/1fdd7c2a-093d-431c-ac2c-374b65a078e6/langpack.exe|updates/common/ita/langpack.exe
:: URL|JPN|http://download.microsoft.com/download/7/3/e/73ec6013-6db6-4789-857b-73dc0a831d64/langpack.exe|updates/common/jpn/langpack.exe
:: URL|KOR|http://download.microsoft.com/download/e/c/8/ec86c0f9-78c8-4253-82d8-edebe5f536a0/langpack.exe|updates/common/kor/langpack.exe
:: URL|NLD|http://download.microsoft.com/download/f/8/b/f8b5fd44-6cc5-4bed-8b22-f30542c92234/langpack.exe|updates/common/nld/langpack.exe
:: URL|NOR|http://download.microsoft.com/download/0/1/e/01e5090f-01f0-49be-86ba-e16bebf79617/langpack.exe|updates/common/nor/langpack.exe
:: URL|PLK|http://download.microsoft.com/download/4/9/c/49c17289-dfd6-4eca-87a1-a2fe5e580774/langpack.exe|updates/common/plk/langpack.exe
:: URL|PTB|http://download.microsoft.com/download/1/9/2/192321a4-d91b-4e27-ac8d-5a988de0c7cc/langpack.exe|updates/common/ptb/langpack.exe
:: URL|PTG|http://download.microsoft.com/download/3/4/c/34c258b7-3538-4756-bd68-ab51cd4a9d5c/langpack.exe|updates/common/ptg/langpack.exe
:: URL|RUS|http://download.microsoft.com/download/5/e/8/5e85e1c3-6fa7-49a4-a69c-c015c5c6eab6/langpack.exe|updates/common/rus/langpack.exe
:: URL|SVE|http://download.microsoft.com/download/c/2/4/c24b6815-46b9-482b-b1c9-772d43ec4f7d/langpack.exe|updates/common/sve/langpack.exe
:: URL|TRK|http://download.microsoft.com/download/c/1/e/c1ed0c8f-789a-4a57-ad27-7b0a42af6348/langpack.exe|updates/common/trk/langpack.exe
todo.pl ".reboot-on 194 %Z%\updates\common\%WINLANG%\langpack.exe /q /c:\"inst /q\""
:nolangpack

:: ASP.NET Security Update for Microsoft .NET Framework 1.1 Service Pack 1
:: Microsoft Security Bulletin MS05-004
:: "ASP.NET Path Validation Vulnerability (887219)"
:: <http://www.microsoft.com/technet/security/bulletin/ms05-004.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=8EC6FB8A-29EB-49CF-9DBC-1A0DC2273FF9>
:: No Download found for ARA.
:: URL|CSY|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/csy/ndp1.1sp1-kb886903-x86.exe
:: URL|DAN|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/dan/ndp1.1sp1-kb886903-x86.exe
:: URL|DEU|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/deu/ndp1.1sp1-kb886903-x86.exe
:: URL|ELL|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/ell/ndp1.1sp1-kb886903-x86.exe
:: URL|ENU|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/enu/ndp1.1sp1-kb886903-x86.exe
:: URL|ESN|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/esn/ndp1.1sp1-kb886903-x86.exe
:: URL|FIN|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/fin/ndp1.1sp1-kb886903-x86.exe
:: URL|FRA|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/fra/ndp1.1sp1-kb886903-x86.exe
:: No Download found for HEB.
:: URL|HUN|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/hun/ndp1.1sp1-kb886903-x86.exe
:: URL|ITA|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/ita/ndp1.1sp1-kb886903-x86.exe
:: URL|JPN|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/jpn/ndp1.1sp1-kb886903-x86.exe
:: URL|KOR|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/kor/ndp1.1sp1-kb886903-x86.exe
:: URL|NLD|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/nld/ndp1.1sp1-kb886903-x86.exe
:: URL|NOR|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/nor/ndp1.1sp1-kb886903-x86.exe
:: URL|PLK|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/plk/ndp1.1sp1-kb886903-x86.exe
:: URL|PTB|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/ptb/ndp1.1sp1-kb886903-x86.exe
:: URL|PTG|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/ptg/ndp1.1sp1-kb886903-x86.exe
:: URL|RUS|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/rus/ndp1.1sp1-kb886903-x86.exe
:: URL|SVE|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/sve/ndp1.1sp1-kb886903-x86.exe
:: URL|TRK|http://download.microsoft.com/download/e/1/4/e14c0c02-591b-4696-8552-eb710c26a3cd/NDP1.1sp1-KB886903-X86.exe|updates/common/trk/ndp1.1sp1-kb886903-x86.exe
todo.pl ".reboot-on 194 %Z%\updates\common\%WINLANG%\NDP1.1sp1-KB886903-X86.exe /q /i"

:: Microsoft .NET Framework 1.1 Service Pack 1
:: <http://support.microsoft.com/?kbid=867460>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=a8f5654f-088e-40b2-bbdb-a83353618b38>
:: URL|ALL|http://download.microsoft.com/download/8/b/4/8b4addd8-e957-4dea-bdb8-c4e00af5b94b/NDP1.1sp1-KB867460-X86.exe|updates/common/ndp1.1sp1-kb867460-x86.exe
todo.pl ".reboot-on 194 %Z%\updates\common\NDP1.1sp1-KB867460-X86.exe /q /i"

:: Microsoft .NET Framework Version 1.1 Redistributable Package
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=262D25E3-F589-4842-8157-034D1E7CF3A3>
:: No Download found for ARA.
:: URL|CSY|http://download.microsoft.com/download/2/a/2/2a224db0-2e6d-4961-99ed-6f377555b1ef/dotnetfx.exe|updates/common/csy/dotnetfx.exe
:: URL|DAN|http://download.microsoft.com/download/e/7/5/e755a559-025d-4282-95ae-d14a8d0b1929/dotnetfx.exe|updates/common/dan/dotnetfx.exe
:: URL|DEU|http://download.microsoft.com/download/4/f/3/4f3ac857-e063-45d0-9835-83894f20e808/dotnetfx.exe|updates/common/deu/dotnetfx.exe
:: URL|ELL|http://download.microsoft.com/download/5/9/8/598fb686-cd09-45cd-8b13-2a0fd814e4cc/dotnetfx.exe|updates/common/ell/dotnetfx.exe
:: URL|ENU|http://download.microsoft.com/download/a/a/c/aac39226-8825-44ce-90e3-bf8203e74006/dotnetfx.exe|updates/common/enu/dotnetfx.exe
:: URL|ESN|http://download.microsoft.com/download/8/f/0/8f023ff4-2dc1-4f10-9618-333f5b9f8040/dotnetfx.exe|updates/common/esn/dotnetfx.exe
:: URL|FIN|http://download.microsoft.com/download/d/a/6/da6b472c-157c-429a-98f6-6eb87fa36fd3/dotnetfx.exe|updates/common/fin/dotnetfx.exe
:: URL|FRA|http://download.microsoft.com/download/e/d/a/eda9d4ea-8ec9-4431-8efa-75391fb91421/dotnetfx.exe|updates/common/fra/dotnetfx.exe
:: No Download found for HEB.
:: URL|HUN|http://download.microsoft.com/download/8/2/0/82093ba7-c9a4-457d-864d-bbeb1cd884d4/dotnetfx.exe|updates/common/hun/dotnetfx.exe
:: URL|ITA|http://download.microsoft.com/download/1/f/a/1fa816d7-a8d6-4f15-b682-b96239e68ab7/dotnetfx.exe|updates/common/ita/dotnetfx.exe
:: URL|JPN|http://download.microsoft.com/download/5/b/5/5b510096-5b68-4e3f-8f9e-56fb7a80ca81/dotnetfx.exe|updates/common/jpn/dotnetfx.exe
:: URL|KOR|http://download.microsoft.com/download/d/2/d/d2db6a60-6fb1-4015-ae45-2fb84ec30faa/dotnetfx.exe|updates/common/kor/dotnetfx.exe
:: URL|NLD|http://download.microsoft.com/download/4/6/b/46b519cb-bdd2-4701-b962-9ffaa323f40b/dotnetfx.exe|updates/common/nld/dotnetfx.exe
:: URL|NOR|http://download.microsoft.com/download/b/6/6/b663aaf1-ef27-4119-8cf1-fa23888cf6a7/dotnetfx.exe|updates/common/nor/dotnetfx.exe
:: URL|PLK|http://download.microsoft.com/download/c/9/f/c9f672f3-c14b-4cff-9671-d419842d792d/dotnetfx.exe|updates/common/plk/dotnetfx.exe
:: URL|PTB|http://download.microsoft.com/download/8/c/f/8cf55d0c-235e-4062-933c-64ffdf7e7043/dotnetfx.exe|updates/common/ptb/dotnetfx.exe
:: URL|PTG|http://download.microsoft.com/download/1/2/0/1206b231-b961-40ca-9ac2-e4ab7e92ca9b/dotnetfx.exe|updates/common/ptg/dotnetfx.exe
:: URL|RUS|http://download.microsoft.com/download/0/8/6/086e7824-ddad-45c0-b765-721e5e28e4c5/dotnetfx.exe|updates/common/rus/dotnetfx.exe
:: URL|SVE|http://download.microsoft.com/download/3/0/0/300b9c1c-9a26-4334-b273-8c0064ba5f2b/dotnetfx.exe|updates/common/sve/dotnetfx.exe
:: URL|TRK|http://download.microsoft.com/download/a/f/7/af738ebf-dc15-4c61-a20d-1c29306cd9bc/dotnetfx.exe|updates/common/trk/dotnetfx.exe
todo.pl ".reboot-on 194 %Z%\updates\common\%WINLANG%\dotnetfx.exe /q /c:\"install /q\""

:: Recommended Updates

:: Security Update for Windows 2000 (KB917537)
:: <http://www.microsoft.com/technet/security/bulletin/MS06-034.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=c917d6da-da2d-402c-a870-1de3cbd21ebf>
:: URL|ARA|http://download.microsoft.com/download/9/b/0/9b004230-3461-4ad8-856b-a7584818d591/Windows2000-KB917537-x86-ARA.EXE|updates/win2ksp4/windows2000-kb917537-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/f/8/e/f8e85208-021e-409e-8387-c4b7268fab2a/Windows2000-KB917537-x86-CSY.EXE|updates/win2ksp4/windows2000-kb917537-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/8/5/f/85f02cb4-d244-4aff-96df-6b977695aef2/Windows2000-KB917537-x86-DAN.EXE|updates/win2ksp4/windows2000-kb917537-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/2/5/8/25879d99-2423-4e85-83dd-d365b896182f/Windows2000-KB917537-x86-DEU.EXE|updates/win2ksp4/windows2000-kb917537-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/d/9/b/d9be28ed-47f3-4fdf-8a03-095fca071f48/Windows2000-KB917537-x86-ELL.EXE|updates/win2ksp4/windows2000-kb917537-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/0/4/8/0488144f-dc64-4acb-94bc-298a23fe1bc5/Windows2000-KB917537-x86-ENU.EXE|updates/win2ksp4/windows2000-kb917537-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/9/1/e/91e313a1-c01f-4fbd-81e4-cc915aa0ba1b/Windows2000-KB917537-x86-ESN.EXE|updates/win2ksp4/windows2000-kb917537-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/9/6/9/969e4a23-6dcd-4fe5-b433-b3148278a8fb/Windows2000-KB917537-x86-FIN.EXE|updates/win2ksp4/windows2000-kb917537-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/b/1/1/b114d831-d103-4e9d-b2ae-b7f38e33d188/Windows2000-KB917537-x86-FRA.EXE|updates/win2ksp4/windows2000-kb917537-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/e/c/d/ecd40d43-1895-431a-a738-5ea8b5c9607b/Windows2000-KB917537-x86-HEB.EXE|updates/win2ksp4/windows2000-kb917537-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/f/7/a/f7ace7a9-5e41-4382-8f25-f8eda272486b/Windows2000-KB917537-x86-HUN.EXE|updates/win2ksp4/windows2000-kb917537-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/5/2/0/520e2f2c-f233-44e9-9119-9f6b790a427d/Windows2000-KB917537-x86-ITA.EXE|updates/win2ksp4/windows2000-kb917537-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/2/0/e/20e15d25-0ca1-46f8-a57e-718a91716b3e/Windows2000-KB917537-x86-JPN.EXE|updates/win2ksp4/windows2000-kb917537-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/a/4/0/a40ffd8b-70b3-4619-8540-e3680ec05267/Windows2000-KB917537-x86-KOR.EXE|updates/win2ksp4/windows2000-kb917537-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/3/0/5/305a8ce5-80dc-4a46-b74b-1736c689efef/Windows2000-KB917537-x86-NLD.EXE|updates/win2ksp4/windows2000-kb917537-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/e/8/8/e88a64ec-89ec-405c-b169-891c90334a1d/Windows2000-KB917537-x86-NOR.EXE|updates/win2ksp4/windows2000-kb917537-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/4/d/9/4d968b75-d7b9-4c04-8243-d15cfef756d6/Windows2000-KB917537-x86-PLK.EXE|updates/win2ksp4/windows2000-kb917537-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/c/5/7/c5783e95-fe8c-495e-b471-807101f7672f/Windows2000-KB917537-x86-PTB.EXE|updates/win2ksp4/windows2000-kb917537-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/1/0/2/102a3e61-f355-4735-9a89-52b957642131/Windows2000-KB917537-x86-PTG.EXE|updates/win2ksp4/windows2000-kb917537-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/d/1/f/d1fed7b6-bc2c-47ab-ad91-c6e09d079ccf/Windows2000-KB917537-x86-RUS.EXE|updates/win2ksp4/windows2000-kb917537-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/1/e/c/1ecc8601-a061-47e9-acd3-189fcb48880b/Windows2000-KB917537-x86-SVE.EXE|updates/win2ksp4/windows2000-kb917537-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/c/b/e/cbe92ad1-f3f2-4f4e-b393-6e9012169d48/Windows2000-KB917537-x86-TRK.EXE|updates/win2ksp4/windows2000-kb917537-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB917537-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB917736)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=5089d956-7d8d-4241-9ca2-107ce4f8c093>
:: URL|ARA|http://download.microsoft.com/download/8/c/6/8c63dac8-fbef-49db-a535-c9021b0f8363/Windows2000-KB917736-x86-ARA.EXE|updates/win2ksp4/windows2000-kb917736-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/5/f/6/5f6eab11-9aba-486d-8ff3-0aa87a6a8afa/Windows2000-KB917736-x86-CSY.EXE|updates/win2ksp4/windows2000-kb917736-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/7/1/2/712cff25-f310-4fdb-855a-b2f7f565b87a/Windows2000-KB917736-x86-DAN.EXE|updates/win2ksp4/windows2000-kb917736-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/9/2/b/92bcae2b-bd80-40ee-86fa-b0de8c33c545/Windows2000-KB917736-x86-DEU.EXE|updates/win2ksp4/windows2000-kb917736-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/c/3/3/c33edc30-dac0-4aa5-b46c-5ab694d0c53b/Windows2000-KB917736-x86-ELL.EXE|updates/win2ksp4/windows2000-kb917736-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/d/5/5/d5515a42-6bdd-4859-a0d2-423d760ef3a6/Windows2000-KB917736-x86-ENU.EXE|updates/win2ksp4/windows2000-kb917736-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/5/3/0/530e2d46-a471-456f-8917-c0852fd1e627/Windows2000-KB917736-x86-ESN.EXE|updates/win2ksp4/windows2000-kb917736-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/6/5/c/65c0860b-c609-4a05-ba70-ed91ec9236a3/Windows2000-KB917736-x86-FIN.EXE|updates/win2ksp4/windows2000-kb917736-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/5/5/c/55ccd1a5-366d-47b0-a85f-4b01ec299ba6/Windows2000-KB917736-x86-FRA.EXE|updates/win2ksp4/windows2000-kb917736-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/b/a/9/ba9f71e0-6790-43dd-b765-93948b432991/Windows2000-KB917736-x86-HEB.EXE|updates/win2ksp4/windows2000-kb917736-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/a/7/8/a78b85d5-ce47-4f2b-a820-9b3114fae66c/Windows2000-KB917736-x86-HUN.EXE|updates/win2ksp4/windows2000-kb917736-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/3/6/b/36b0647f-d177-4a6a-a0aa-6b06549cfda8/Windows2000-KB917736-x86-ITA.EXE|updates/win2ksp4/windows2000-kb917736-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/a/3/2/a324bb13-0061-4040-9027-d105a76b19f1/Windows2000-KB917736-x86-JPN.EXE|updates/win2ksp4/windows2000-kb917736-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/e/e/c/eec9f8e2-40f0-4bdf-b440-f1805f29425f/Windows2000-KB917736-x86-KOR.EXE|updates/win2ksp4/windows2000-kb917736-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/9/f/f/9ff11253-3668-4196-9eaf-2fc81ee1eb65/Windows2000-KB917736-x86-NLD.EXE|updates/win2ksp4/windows2000-kb917736-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/0/5/3/05329456-36b6-4b62-b3fc-1e58eb48121e/Windows2000-KB917736-x86-NOR.EXE|updates/win2ksp4/windows2000-kb917736-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/a/c/5/ac53339d-bc89-4ee8-9a3e-c8b23114e85a/Windows2000-KB917736-x86-PLK.EXE|updates/win2ksp4/windows2000-kb917736-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/1/f/e/1fe9ad5f-145b-42a3-bbd6-95ea56b5a01d/Windows2000-KB917736-x86-PTB.EXE|updates/win2ksp4/windows2000-kb917736-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/c/6/c/c6c9d01b-a875-468d-9f60-d40c608aa738/Windows2000-KB917736-x86-PTG.EXE|updates/win2ksp4/windows2000-kb917736-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/b/2/a/b2a65783-a72f-4be0-ab53-c5fc3b88d320/Windows2000-KB917736-x86-RUS.EXE|updates/win2ksp4/windows2000-kb917736-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/7/4/b/74b0a35a-58f4-4009-a8a4-d6040f630701/Windows2000-KB917736-x86-SVE.EXE|updates/win2ksp4/windows2000-kb917736-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/a/2/6/a26e9ff2-fe3b-4f23-8281-04081971847c/Windows2000-KB917736-x86-TRK.EXE|updates/win2ksp4/windows2000-kb917736-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB917736-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB917953)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=305e208c-d75c-471b-9e57-30d01e320ad1>
:: URL|ARA|http://download.microsoft.com/download/0/0/7/007d3c9b-5558-4d1d-a653-f344cff81fe6/Windows2000-KB917953-x86-ARA.EXE|updates/win2ksp4/windows2000-kb917953-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/b/4/4/b442d822-b8b6-49be-88aa-94fe1f586c3d/Windows2000-KB917953-x86-CSY.EXE|updates/win2ksp4/windows2000-kb917953-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/e/7/f/e7f83c76-b5b8-473c-a8cb-a9a9397a7b49/Windows2000-KB917953-x86-DAN.EXE|updates/win2ksp4/windows2000-kb917953-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/f/a/b/fab5af7a-9ab6-4b6a-9fb2-b6d44d1a8f93/Windows2000-KB917953-x86-DEU.EXE|updates/win2ksp4/windows2000-kb917953-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/e/0/0/e009a3d9-9c2e-43a8-aff8-285501d421c1/Windows2000-KB917953-x86-ELL.EXE|updates/win2ksp4/windows2000-kb917953-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/7/4/9/749e48cf-3cef-4261-9d0f-138b75ab8fb6/Windows2000-KB917953-x86-ENU.EXE|updates/win2ksp4/windows2000-kb917953-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/a/a/8/aa899199-cea1-4b38-89a7-07c4e50917c4/Windows2000-KB917953-x86-ESN.EXE|updates/win2ksp4/windows2000-kb917953-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/a/a/7/aa7e49a6-8902-4cce-82b6-012e2f940812/Windows2000-KB917953-x86-FIN.EXE|updates/win2ksp4/windows2000-kb917953-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/9/0/9/90907a7c-d11d-4b8e-b2bb-4f642cfddc39/Windows2000-KB917953-x86-FRA.EXE|updates/win2ksp4/windows2000-kb917953-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/b/f/8/bf872ae9-4a9e-447e-8c81-24c6daa93079/Windows2000-KB917953-x86-HEB.EXE|updates/win2ksp4/windows2000-kb917953-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/6/b/7/6b75e87c-7380-46db-9564-8359392be5d0/Windows2000-KB917953-x86-HUN.EXE|updates/win2ksp4/windows2000-kb917953-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/b/a/9/ba9895bb-60c6-47cb-b177-bbf4257150d9/Windows2000-KB917953-x86-ITA.EXE|updates/win2ksp4/windows2000-kb917953-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/e/e/9/ee98cdc5-b233-4aa2-bf7d-5a340c1bd4b8/Windows2000-KB917953-x86-JPN.EXE|updates/win2ksp4/windows2000-kb917953-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/f/3/7/f37d51c5-50a9-4562-ab35-a464ce30f779/Windows2000-KB917953-x86-KOR.EXE|updates/win2ksp4/windows2000-kb917953-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/c/5/4/c5462868-262a-4222-aaa7-fbd000569ca8/Windows2000-KB917953-x86-NLD.EXE|updates/win2ksp4/windows2000-kb917953-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/9/3/e/93eb0432-13e3-4f2d-8d73-a5d4eea05865/Windows2000-KB917953-x86-NOR.EXE|updates/win2ksp4/windows2000-kb917953-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/8/9/7/8977048a-3cf0-4627-ac74-c2cc8b1e4617/Windows2000-KB917953-x86-PLK.EXE|updates/win2ksp4/windows2000-kb917953-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/f/5/a/f5ac8fb3-555b-4c03-bd0d-02a54ee5a254/Windows2000-KB917953-x86-PTB.EXE|updates/win2ksp4/windows2000-kb917953-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/6/a/7/6a72b6fa-10ba-4bbd-98eb-accbe1c6e930/Windows2000-KB917953-x86-PTG.EXE|updates/win2ksp4/windows2000-kb917953-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/8/2/7/8273734b-899e-4cfc-a4f2-b4c7b5a89d42/Windows2000-KB917953-x86-RUS.EXE|updates/win2ksp4/windows2000-kb917953-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/d/8/0/d80e782f-424f-45a2-8fd3-1778cdefe0f6/Windows2000-KB917953-x86-SVE.EXE|updates/win2ksp4/windows2000-kb917953-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/5/c/d/5cdb1e55-11e7-48b8-a6c9-662a1cf432aa/Windows2000-KB917953-x86-TRK.EXE|updates/win2ksp4/windows2000-kb917953-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB917953-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB914389)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=6ec86784-6b12-410b-8068-028c58ed5df7>
:: URL|ARA|http://download.microsoft.com/download/1/6/0/1604466b-145d-4fc5-85f3-e45e75de7a95/Windows2000-KB914389-x86-ARA.EXE|updates/win2ksp4/windows2000-kb914389-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/0/f/d/0fd0012c-b749-4d14-8800-3e5dd753934b/Windows2000-KB914389-x86-CSY.EXE|updates/win2ksp4/windows2000-kb914389-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/f/1/f/f1fa79c5-3a94-45e2-98f4-f6a00fb4312f/Windows2000-KB914389-x86-DAN.EXE|updates/win2ksp4/windows2000-kb914389-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/9/e/6/9e603daf-d707-4f6b-973b-14f00641556b/Windows2000-KB914389-x86-DEU.EXE|updates/win2ksp4/windows2000-kb914389-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/d/c/0/dc0f132c-b075-48e3-80f5-01320ece8984/Windows2000-KB914389-x86-ELL.EXE|updates/win2ksp4/windows2000-kb914389-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/b/9/1/b9138093-8b79-424b-a1b4-a22357711484/Windows2000-KB914389-x86-ENU.EXE|updates/win2ksp4/windows2000-kb914389-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/9/8/5/985889e9-971f-48a2-b4f7-f8ef99743574/Windows2000-KB914389-x86-ESN.EXE|updates/win2ksp4/windows2000-kb914389-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/3/f/c/3fc250d4-ef50-45ab-8a07-46eee75b6e42/Windows2000-KB914389-x86-FIN.EXE|updates/win2ksp4/windows2000-kb914389-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/a/b/d/abdf1a1e-8278-48f1-83eb-05ecc73f0cdc/Windows2000-KB914389-x86-FRA.EXE|updates/win2ksp4/windows2000-kb914389-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/8/c/a/8caa10cc-b939-4dd3-b49b-ef68c20f82c3/Windows2000-KB914389-x86-HEB.EXE|updates/win2ksp4/windows2000-kb914389-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/c/c/b/ccbdf639-0fbb-4809-9e71-0b61846f38aa/Windows2000-KB914389-x86-HUN.EXE|updates/win2ksp4/windows2000-kb914389-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/8/c/4/8c46e4a8-1ac8-4371-92c8-da4b59e1d20d/Windows2000-KB914389-x86-ITA.EXE|updates/win2ksp4/windows2000-kb914389-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/a/7/d/a7d3be34-54b7-46ed-890c-b3fefbb25a77/Windows2000-KB914389-x86-JPN.EXE|updates/win2ksp4/windows2000-kb914389-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/3/6/1/361358a4-d7f3-4c75-89cb-c19518d0bb3d/Windows2000-KB914389-x86-KOR.EXE|updates/win2ksp4/windows2000-kb914389-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/4/b/e/4becf60b-d583-4ec8-a58b-9957c01806dd/Windows2000-KB914389-x86-NLD.EXE|updates/win2ksp4/windows2000-kb914389-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/1/1/8/11814b08-5233-419d-a1b5-cb421f01006e/Windows2000-KB914389-x86-NOR.EXE|updates/win2ksp4/windows2000-kb914389-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/9/b/f/9bf4d6d4-b963-41b4-b238-f1fe43c09198/Windows2000-KB914389-x86-PLK.EXE|updates/win2ksp4/windows2000-kb914389-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/1/2/7/1275835a-09fa-40e9-b71e-05dfa10fd579/Windows2000-KB914389-x86-PTB.EXE|updates/win2ksp4/windows2000-kb914389-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/3/4/c/34c8b4da-9221-442a-a992-ab291c433b2e/Windows2000-KB914389-x86-PTG.EXE|updates/win2ksp4/windows2000-kb914389-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/f/3/2/f3263f79-0bf4-4e36-9636-f7cb13d02cca/Windows2000-KB914389-x86-RUS.EXE|updates/win2ksp4/windows2000-kb914389-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/1/8/f/18f9992b-7957-4ab3-af1e-c98c5b5d1e9c/Windows2000-KB914389-x86-SVE.EXE|updates/win2ksp4/windows2000-kb914389-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/7/3/5/73557dbb-1118-4a62-851c-52f1a53f53f4/Windows2000-KB914389-x86-TRK.EXE|updates/win2ksp4/windows2000-kb914389-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB914389-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB908523)
:: Microsoft Security Bulletin MS05-055
:: <http://www.microsoft.com/technet/security/Bulletin/MS05-055.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=3832FF23-6B04-4CA2-80B9-D344B4CC98EA>
:: URL|ARA|http://download.microsoft.com/download/f/5/4/f540f767-575e-496d-b5f8-67eb1008d46b/Windows2000-KB908523-x86-ARA.EXE|updates/win2ksp4/windows2000-kb908523-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/8/b/9/8b933b61-1f37-487f-8169-7a872370eebb/Windows2000-KB908523-x86-CSY.EXE|updates/win2ksp4/windows2000-kb908523-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/4/6/f/46f2a69b-7935-4d1a-9f2e-68b301a1f4dd/Windows2000-KB908523-x86-DAN.EXE|updates/win2ksp4/windows2000-kb908523-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/5/7/4/5743e054-9b8a-41be-b4d7-6b33993410c4/Windows2000-KB908523-x86-DEU.EXE|updates/win2ksp4/windows2000-kb908523-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/3/b/8/3b8fd26d-e335-404b-b882-732593f8f23c/Windows2000-KB908523-x86-ELL.EXE|updates/win2ksp4/windows2000-kb908523-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/f/4/7/f47496e7-95f2-4b05-a5cb-e11ccba8f402/Windows2000-KB908523-x86-ENU.EXE|updates/win2ksp4/windows2000-kb908523-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/2/5/5/255abebe-3b0f-4198-b923-79aa38eb9bdb/Windows2000-KB908523-x86-ESN.EXE|updates/win2ksp4/windows2000-kb908523-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/c/c/2/cc27b08a-b318-4c8d-93ac-604dda42e610/Windows2000-KB908523-x86-FIN.EXE|updates/win2ksp4/windows2000-kb908523-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/0/5/6/0561682c-8aa9-4291-9083-f8c3aa19d052/Windows2000-KB908523-x86-FRA.EXE|updates/win2ksp4/windows2000-kb908523-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/d/e/3/de3c09c9-1059-4096-8796-7e5c9c57da62/Windows2000-KB908523-x86-HEB.EXE|updates/win2ksp4/windows2000-kb908523-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/f/1/d/f1dc50a8-8810-4ab4-a6e6-167c9c0e3614/Windows2000-KB908523-x86-HUN.EXE|updates/win2ksp4/windows2000-kb908523-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/6/b/5/6b527f22-3a27-4e77-9c7f-ab813c43714d/Windows2000-KB908523-x86-ITA.EXE|updates/win2ksp4/windows2000-kb908523-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/d/3/1/d3157acc-b76c-4a77-a61e-efce3c4e7dd9/Windows2000-KB908523-x86-JPN.EXE|updates/win2ksp4/windows2000-kb908523-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/5/f/6/5f683c0e-50c8-4c0b-ae29-642d207a869a/Windows2000-KB908523-x86-KOR.EXE|updates/win2ksp4/windows2000-kb908523-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/0/7/2/072a7d16-df41-4cbf-a5e2-a56d4cdd2e98/Windows2000-KB908523-x86-NLD.EXE|updates/win2ksp4/windows2000-kb908523-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/7/b/7/7b74d868-59a4-4240-8612-22aeaef36194/Windows2000-KB908523-x86-NOR.EXE|updates/win2ksp4/windows2000-kb908523-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/f/1/a/f1a2a668-14c7-44f5-868f-fd8efd74d149/Windows2000-KB908523-x86-PLK.EXE|updates/win2ksp4/windows2000-kb908523-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/e/a/0/ea05db4c-1230-4c80-a4aa-28e051024792/Windows2000-KB908523-x86-PTB.EXE|updates/win2ksp4/windows2000-kb908523-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/d/9/d/d9d1822f-a1b0-4235-8854-f65ed6b241e0/Windows2000-KB908523-x86-PTG.EXE|updates/win2ksp4/windows2000-kb908523-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/3/3/b/33b5d836-591b-4107-849b-acac6cdc14d7/Windows2000-KB908523-x86-RUS.EXE|updates/win2ksp4/windows2000-kb908523-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/3/7/0/370b146a-3e89-47ab-9b01-ffe27c559a98/Windows2000-KB908523-x86-SVE.EXE|updates/win2ksp4/windows2000-kb908523-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/7/0/e/70e54e6b-6d7c-4cfc-9e60-9ffa3e21cdad/Windows2000-KB908523-x86-TRK.EXE|updates/win2ksp4/windows2000-kb908523-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB908523-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Internet Explorer 6 Service Pack 1 for Windows 2000 Service Pack 4 (KB905495)
:: Microsoft Security Bulletin MS05-044
:: <http://www.microsoft.com/technet/security/Bulletin/MS05-044.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=FCEA60E5-9EA8-4216-BA4D-C85054892DBB>
:: URL|ARA|http://download.microsoft.com/download/4/c/2/4c2ed253-d146-49e5-be3e-a44db05520b9/IE6.0sp1-KB905495-Windows2000-x86-ARA.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/0/5/b/05b98c8d-8727-4713-a215-437052bcbe85/IE6.0sp1-KB905495-Windows2000-x86-CSY.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/f/2/6/f26d8adf-9be9-4b13-82dc-d55c0a01a3ef/IE6.0sp1-KB905495-Windows2000-x86-DAN.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/5/c/9/5c99ec8e-d985-4565-9ed7-59836b44abdc/IE6.0sp1-KB905495-Windows2000-x86-DEU.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/7/f/2/7f2bb9f1-c8ca-4eca-b1ea-a337caeb0d82/IE6.0sp1-KB905495-Windows2000-x86-ELL.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/2/6/7/2670f435-2255-4a87-9183-1b28a51c7595/IE6.0sp1-KB905495-Windows2000-x86-ENU.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/a/5/3/a5386a00-0fd3-4ad2-8398-21393a878a34/IE6.0sp1-KB905495-Windows2000-x86-ESN.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/c/a/5/ca5ac295-5332-4995-a55f-eedc17cebd19/IE6.0sp1-KB905495-Windows2000-x86-FIN.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/d/b/4/db4c7349-564d-4dd1-b9d3-2e2a98c6847b/IE6.0sp1-KB905495-Windows2000-x86-FRA.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/2/e/8/2e81c57b-c389-4169-a3d1-a3c0eb94ebaa/IE6.0sp1-KB905495-Windows2000-x86-HEB.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/7/8/7/78774133-5a9d-438d-a232-bbd0109ccfce/IE6.0sp1-KB905495-Windows2000-x86-HUN.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/1/f/b/1fbaac30-97bb-418e-961e-b78dc15aa214/IE6.0sp1-KB905495-Windows2000-x86-ITA.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/f/3/5/f3547c8c-3725-4443-94c4-872620b9158a/IE6.0sp1-KB905495-Windows2000-x86-JPN.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/3/8/e/38e9daa3-a678-49e7-8902-9d101a61b2ac/IE6.0sp1-KB905495-Windows2000-x86-KOR.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/b/1/a/b1a60bff-c72b-4f59-947a-536e165b98e0/IE6.0sp1-KB905495-Windows2000-x86-NLD.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/0/1/b/01bbb376-37fc-40e9-97b7-3efd468e3142/IE6.0sp1-KB905495-Windows2000-x86-NOR.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/6/d/d/6dd086a1-a326-4dcc-bcfd-7aedbd4fc089/IE6.0sp1-KB905495-Windows2000-x86-PLK.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/d/a/b/dabd462d-78f2-4b26-98de-8c4c2ad50c0d/IE6.0sp1-KB905495-Windows2000-x86-PTB.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/b/3/e/b3eac32f-4b49-47b5-a7a4-20223c284f9d/IE6.0sp1-KB905495-Windows2000-x86-PTG.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/9/8/c/98cf9b39-fdf1-486a-b489-3b8141387430/IE6.0sp1-KB905495-Windows2000-x86-RUS.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/0/3/9/0395d663-4f96-43f5-a13d-f379c47b264a/IE6.0sp1-KB905495-Windows2000-x86-SVE.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/5/1/e/51eb018a-41da-4f41-bb47-8e4cc4758e7c/IE6.0sp1-KB905495-Windows2000-x86-TRK.exe|updates/win2ksp4/ie6.0sp1-kb905495-windows2000-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\IE6.0sp1-KB905495-Windows2000-x86-%WINLANG%.exe /passive /n /norestart"

:: Windows 2000 Patch: Driver Installation Program Does Not Install Device Drivers
:: <http://support.microsoft.com?kbid=822831>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=7c896e82-4b50-44c8-a634-3227c0e71293>
:: URL|ARA|http://download.microsoft.com/download/c/3/0/c306bce1-bacb-482d-a9bd-a2be701035f6/Windows2000-KB822831-x86-ARA.exe|updates/win2ksp4/windows2000-kb822831-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/1/5/e/15eae77f-5ea4-4a88-a3b3-69c0f46bbc6e/Windows2000-KB822831-x86-CSY.exe|updates/win2ksp4/windows2000-kb822831-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/6/9/3/693bc091-09d9-4720-9ca6-18ee3809107d/Windows2000-KB822831-x86-DAN.exe|updates/win2ksp4/windows2000-kb822831-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/6/a/e/6ae3475b-bb50-40fe-b90f-68e9fd081913/Windows2000-KB822831-x86-DEU.exe|updates/win2ksp4/windows2000-kb822831-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/e/c/9/ec92707e-c8d7-4126-8785-6b30ae0042c4/Windows2000-KB822831-x86-ELL.exe|updates/win2ksp4/windows2000-kb822831-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/5/8/2/58270784-ecc7-4724-a526-283da3a54d55/Windows2000-KB822831-x86-ENU.exe|updates/win2ksp4/windows2000-kb822831-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/7/1/4/71417b24-8f07-4595-8ab4-caa415a66097/Windows2000-KB822831-x86-ESN.exe|updates/win2ksp4/windows2000-kb822831-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/9/3/0/930d2dc2-1d5a-40bd-aa8f-d43869327135/Windows2000-KB822831-x86-FIN.exe|updates/win2ksp4/windows2000-kb822831-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/5/1/e/51ed81bf-5fc4-4ba2-b238-2ea9c9001b5d/Windows2000-KB822831-x86-FRA.exe|updates/win2ksp4/windows2000-kb822831-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/5/a/4/5a417c8f-231e-4656-973c-43940f639fa0/Windows2000-KB822831-x86-HEB.exe|updates/win2ksp4/windows2000-kb822831-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/d/7/9/d79415ee-5a63-4217-a990-19a80a086d1f/Windows2000-KB822831-x86-HUN.exe|updates/win2ksp4/windows2000-kb822831-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/b/7/5/b75c78c8-c825-4ed7-b519-ca0d6a749fee/Windows2000-KB822831-x86-ITA.exe|updates/win2ksp4/windows2000-kb822831-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/f/e/7/fe7454f5-d7e2-4ae6-8b81-a44c1cea7955/Windows2000-KB822831-x86-JPN.exe|updates/win2ksp4/windows2000-kb822831-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/4/0/e/40ecf02c-68b6-4607-9c77-2442619b7b29/Windows2000-KB822831-x86-KOR.exe|updates/win2ksp4/windows2000-kb822831-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/5/d/a/5da7cbed-8ee9-4c11-a680-84754ac2e8ce/Windows2000-KB822831-x86-NLD.exe|updates/win2ksp4/windows2000-kb822831-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/a/9/4/a94e59f2-9522-4f1d-9b0f-2952a06e9e2e/Windows2000-KB822831-x86-NOR.exe|updates/win2ksp4/windows2000-kb822831-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/0/0/8/0082722e-c872-4f08-b929-91139e347ac5/Windows2000-KB822831-x86-PLK.exe|updates/win2ksp4/windows2000-kb822831-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/5/7/3/573b55bc-b28d-44af-906e-f9be6e280b50/Windows2000-KB822831-x86-PTB.exe|updates/win2ksp4/windows2000-kb822831-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/2/6/b/26b86859-75f9-41a6-bef9-be22ed17e82e/Windows2000-KB822831-x86-PTG.exe|updates/win2ksp4/windows2000-kb822831-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/d/d/8/dd83b42b-f28f-456c-8480-1678bed97fe7/Windows2000-KB822831-x86-RUS.exe|updates/win2ksp4/windows2000-kb822831-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/c/c/e/cce5e881-757b-43b6-920a-c7961758a651/Windows2000-KB822831-x86-SVE.exe|updates/win2ksp4/windows2000-kb822831-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/a/f/5/af515d34-697d-41e2-98f3-c43d06172d5b/Windows2000-KB822831-x86-TRK.exe|updates/win2ksp4/windows2000-kb822831-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB822831-x86-%WINLANG%.EXE /u /n /z"

:: Update for Microsoft Windows 2000: KB820888
:: <http://support.microsoft.com/?kbid=820888>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=3b31ce88-15b1-4f90-a0ee-190fd57a5e54>
:: URL|ARA|http://download.microsoft.com/download/2/7/e/27e3048d-410d-444c-9c5f-19a3eb5ac2a7/Windows2000-KB820888-x86-ARA.exe|updates/win2ksp4/windows2000-kb820888-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/8/1/9/819e99cc-3908-46f9-92a9-ceef1f923c17/Windows2000-KB820888-x86-CSY.exe|updates/win2ksp4/windows2000-kb820888-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/3/f/c/3fc8bffb-63d8-4b41-8fc4-7879b8847854/Windows2000-KB820888-x86-DAN.exe|updates/win2ksp4/windows2000-kb820888-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/1/4/2/1429bf05-f630-452e-85c3-0161af0e5fc8/Windows2000-KB820888-x86-DEU.exe|updates/win2ksp4/windows2000-kb820888-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/b/9/1/b91ceabc-aa28-46dc-8c25-a746230c28f5/Windows2000-KB820888-x86-ELL.exe|updates/win2ksp4/windows2000-kb820888-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/4/e/9/4e9aaee8-960b-40b4-aece-0244e705a93c/Windows2000-KB820888-x86-ENU.exe|updates/win2ksp4/windows2000-kb820888-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/f/f/c/ffc8c5ae-758a-47c1-8d2c-2f6dd108410b/Windows2000-KB820888-x86-ESN.exe|updates/win2ksp4/windows2000-kb820888-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/f/6/2/f6228296-ce41-43ea-a6e6-50b1d633828d/Windows2000-KB820888-x86-FIN.exe|updates/win2ksp4/windows2000-kb820888-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/b/1/5/b156ae49-2601-4d47-b6dd-a070d3cbbc40/Windows2000-KB820888-x86-FRA.exe|updates/win2ksp4/windows2000-kb820888-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/b/3/3/b3399ca2-809d-422f-9110-ce5ab19e4d9c/Windows2000-KB820888-x86-HEB.exe|updates/win2ksp4/windows2000-kb820888-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/6/3/e/63e3e8fc-7c7a-4994-b708-fce3fb18bc5b/Windows2000-KB820888-x86-HUN.exe|updates/win2ksp4/windows2000-kb820888-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/3/f/b/3fb96e72-2568-499f-af5b-a2c2f9774289/Windows2000-KB820888-x86-ITA.exe|updates/win2ksp4/windows2000-kb820888-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/e/a/e/eae7559b-d61c-40b2-b408-204b88b1889b/Windows2000-KB820888-x86-JPN.exe|updates/win2ksp4/windows2000-kb820888-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/c/4/f/c4fb065e-66f5-45fa-ad00-024eb8a430e3/Windows2000-KB820888-x86-KOR.exe|updates/win2ksp4/windows2000-kb820888-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/e/c/7/ec79815d-eaeb-4ef2-8ea0-c97eebcd007f/Windows2000-KB820888-x86-NLD.exe|updates/win2ksp4/windows2000-kb820888-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/6/4/b/64b399f8-e763-449a-9f48-5bb5bead6c6a/Windows2000-KB820888-x86-NOR.exe|updates/win2ksp4/windows2000-kb820888-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/2/f/f/2ffab709-9617-4b11-8a3d-b695c57c8de5/Windows2000-KB820888-x86-PLK.exe|updates/win2ksp4/windows2000-kb820888-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/a/a/6/aa64c0a0-f63b-436b-8dfa-dfb8083c2f2e/Windows2000-KB820888-x86-PTB.exe|updates/win2ksp4/windows2000-kb820888-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/0/2/c/02ca3702-aa3e-47c9-8f00-b2e2cd7ce806/Windows2000-KB820888-x86-PTG.exe|updates/win2ksp4/windows2000-kb820888-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/a/4/e/a4eac753-7220-4254-ab33-1a1c479cbef7/Windows2000-KB820888-x86-RUS.exe|updates/win2ksp4/windows2000-kb820888-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/f/c/1/fc1535cc-e836-41dc-a80b-5dfe684a9214/Windows2000-KB820888-x86-SVE.exe|updates/win2ksp4/windows2000-kb820888-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/c/2/a/c2aa4df7-4c54-44d7-b932-5a6d98c64ecc/Windows2000-KB820888-x86-TRK.exe|updates/win2ksp4/windows2000-kb820888-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB820888-x86-%WINLANG%.EXE /u /n /z"

:: Recommended update 818043
:: "L2TP/IPSec NAT-T Update for Windows XP and Windows 2000"
:: <http://support.microsoft.com/?id=818043>
:: (download only available from Windows Catalog)
:: NOTE: You must rename this to use the three-letter language
:: abbreviation instead of two.  For example, for English you would
:: rename Q818043_W2K_SP5_x86_EN.EXE to Q818043_W2K_SP5_x86_ENU.EXE.
:: URL|DEU|http://download.windowsupdate.com/msdownload/update/v3-19990518/cabpool/Q818043_W2K_SP5_x86_DE_9584dab3e08c5d20b25ea2203a1e907.EXE|updates/win2ksp4/q818043_w2k_sp5_x86_deu.exe
:: URL|ENU|http://download.windowsupdate.com/msdownload/update/v3-19990518/cabpool/Q818043_W2K_SP5_x86_EN_8771f25008d3c5f8c7aa577b615f619.EXE|updates/win2ksp4/q818043_w2k_sp5_x86_enu.exe
:: URL|ESN|http://download.windowsupdate.com/msdownload/update/v3-19990518/cabpool/Q818043_W2K_SP5_x86_ES_36a0fa7df3738134855777dd336a39f.EXE|updates/win2ksp4/q818043_w2k_sp5_x86_esn.exe
:: URL|FRA|http://download.windowsupdate.com/msdownload/update/v3-19990518/cabpool/Q818043_W2K_SP5_x86_FR_fffa439f823b860dc5d9e21fbdfdd08.exe|updates/win2ksp4/q818043_w2k_sp5_x86_fra.exe
:: URL|ITA|http://download.windowsupdate.com/msdownload/update/v3-19990518/cabpool/Q818043_W2K_SP5_x86_IT_900656263a1af37318a0eac242723a0.EXE|updates/win2ksp4/q818043_w2k_sp5_x86_ita.exe
:: URL|NLD|http://download.windowsupdate.com/msdownload/update/v3-19990518/cabpool/Q818043_W2K_SP5_x86_NL_76c1935b6dbb692948d396a40a9eeb7.EXE|updates/win2ksp4/q818043_w2k_sp5_x86_nld.exe
:: URL|RUS|http://download.windowsupdate.com/msdownload/update/v3-19990518/cabpool/Q818043_W2K_SP5_x86_RU_a50762f281543495e7daca4e477f7a5.EXE|updates/win2ksp4/q818043_w2k_sp5_x86_rus.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Q818043_W2K_SP5_x86_%WINLANG%.EXE /u /n /z"

:: Critical Updates

:: Security Update for Windows 2000 (KB932168)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=49dc470b-64e2-47ec-be90-622b407c7751>
:: URL|ARA|http://download.microsoft.com/download/2/d/b/2db127c9-3368-4378-99ff-f5245c366662/Windows2000-KB932168-x86-ARA.EXE|updates/win2ksp4/windows2000-kb932168-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/7/d/7/7d730ae2-c5fc-4d94-ba17-b1b9bd8ec585/Windows2000-KB932168-x86-CSY.EXE|updates/win2ksp4/windows2000-kb932168-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/6/9/6/69613a42-d4d6-4475-bb0b-e38ac9bb425d/Windows2000-KB932168-x86-DAN.EXE|updates/win2ksp4/windows2000-kb932168-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/b/7/9/b797145a-6865-4fe0-8f36-790ac16d6159/Windows2000-KB932168-x86-DEU.EXE|updates/win2ksp4/windows2000-kb932168-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/5/0/c/50cb4f4a-df25-4f72-9dc8-f2066e308546/Windows2000-KB932168-x86-ELL.EXE|updates/win2ksp4/windows2000-kb932168-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/f/c/c/fccc6bf5-75eb-4dbb-abdd-d9915e2ba7c3/Windows2000-KB932168-x86-ENU.EXE|updates/win2ksp4/windows2000-kb932168-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/7/6/e/76ead594-0f98-4b66-90b2-a69081915df2/Windows2000-KB932168-x86-ESN.EXE|updates/win2ksp4/windows2000-kb932168-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/2/6/3/263e19b6-32a6-4bec-b203-39b7966ab7d2/Windows2000-KB932168-x86-FIN.EXE|updates/win2ksp4/windows2000-kb932168-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/1/a/5/1a5a7700-5892-4d72-ac99-c19c1861bb41/Windows2000-KB932168-x86-FRA.EXE|updates/win2ksp4/windows2000-kb932168-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/f/3/9/f39a477c-8652-4911-a920-fc05710f66f1/Windows2000-KB932168-x86-HEB.EXE|updates/win2ksp4/windows2000-kb932168-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/b/8/5/b8509401-50a0-44e5-a622-336a1e44c180/Windows2000-KB932168-x86-HUN.EXE|updates/win2ksp4/windows2000-kb932168-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/c/9/6/c96a1c6c-7165-4709-9793-7e164fb0bf6a/Windows2000-KB932168-x86-ITA.EXE|updates/win2ksp4/windows2000-kb932168-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/7/4/6/746f6426-894c-4aa3-b8b5-2ee4eb6357b2/Windows2000-KB932168-x86-JPN.EXE|updates/win2ksp4/windows2000-kb932168-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/c/2/9/c297ac91-3691-4829-83e2-f3c7844da820/Windows2000-KB932168-x86-KOR.EXE|updates/win2ksp4/windows2000-kb932168-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/d/0/e/d0e413d7-3c01-4b07-a53d-acf41fa07d25/Windows2000-KB932168-x86-NLD.EXE|updates/win2ksp4/windows2000-kb932168-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/6/f/b/6fb9edf5-8244-47ba-a2ee-91578f4fb19a/Windows2000-KB932168-x86-NOR.EXE|updates/win2ksp4/windows2000-kb932168-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/8/b/0/8b091263-7947-4157-95de-614d7ddabe6f/Windows2000-KB932168-x86-PLK.EXE|updates/win2ksp4/windows2000-kb932168-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/d/5/0/d5074f56-4295-4b20-83e8-dbd67fbb48bb/Windows2000-KB932168-x86-PTB.EXE|updates/win2ksp4/windows2000-kb932168-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/4/e/a/4eabf930-2df1-4414-9d54-3f17a1931bd9/Windows2000-KB932168-x86-PTG.EXE|updates/win2ksp4/windows2000-kb932168-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/9/6/a/96a8d266-ea09-43f4-88b8-4cef2ba33898/Windows2000-KB932168-x86-RUS.EXE|updates/win2ksp4/windows2000-kb932168-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/4/7/a/47a5a505-f371-4d8f-8ac3-71c32356a358/Windows2000-KB932168-x86-SVE.EXE|updates/win2ksp4/windows2000-kb932168-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/8/6/b/86bcb7c8-d3c5-4118-8b2a-bc8a8bea7a3e/Windows2000-KB932168-x86-TRK.EXE|updates/win2ksp4/windows2000-kb932168-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB932168-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB931784)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=b3599afb-7673-4ef6-a2b1-d77e39fd782c>
:: URL|ARA|http://download.microsoft.com/download/8/a/7/8a7a9d5a-5132-44d2-9db0-ba874f784020/Windows2000-KB931784-x86-ARA.EXE|updates/win2ksp4/windows2000-kb931784-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/1/0/a/10a8bf34-bd9c-4af6-8275-df377f0e414c/Windows2000-KB931784-x86-CSY.EXE|updates/win2ksp4/windows2000-kb931784-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/2/e/5/2e521322-e9c8-47c0-ba9e-52e4e532e19f/Windows2000-KB931784-x86-DAN.EXE|updates/win2ksp4/windows2000-kb931784-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/e/d/7/ed7e45f4-e46d-4448-96d5-67ba49695adc/Windows2000-KB931784-x86-DEU.EXE|updates/win2ksp4/windows2000-kb931784-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/f/9/0/f9023f25-7b36-4fa0-a2a4-c37c688d8c7a/Windows2000-KB931784-x86-ELL.EXE|updates/win2ksp4/windows2000-kb931784-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/6/2/0/62000463-2b27-435a-a80c-7e93566ee71e/Windows2000-KB931784-x86-ENU.EXE|updates/win2ksp4/windows2000-kb931784-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/3/0/d/30dca9ae-ac27-4c4a-a193-8f0821948623/Windows2000-KB931784-x86-ESN.EXE|updates/win2ksp4/windows2000-kb931784-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/9/6/5/9654d6a3-24d2-48fa-a15d-26d536190793/Windows2000-KB931784-x86-FIN.EXE|updates/win2ksp4/windows2000-kb931784-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/d/9/2/d929dcc7-eac1-470e-b8a9-7cef2b3a6ea4/Windows2000-KB931784-x86-FRA.EXE|updates/win2ksp4/windows2000-kb931784-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/3/d/9/3d93de79-ea38-4e73-9457-17e96960024d/Windows2000-KB931784-x86-HEB.EXE|updates/win2ksp4/windows2000-kb931784-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/f/6/6/f664e130-ca0a-40eb-a43d-b5bc798afc5b/Windows2000-KB931784-x86-HUN.EXE|updates/win2ksp4/windows2000-kb931784-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/f/4/0/f409c3a6-3e70-4167-b8ed-439263370fd5/Windows2000-KB931784-x86-ITA.EXE|updates/win2ksp4/windows2000-kb931784-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/5/2/0/52079a87-3342-4104-be70-02404bbd1d06/Windows2000-KB931784-x86-JPN.EXE|updates/win2ksp4/windows2000-kb931784-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/f/5/3/f53ea3e4-ac6f-4d06-9de8-3b641caff87e/Windows2000-KB931784-x86-KOR.EXE|updates/win2ksp4/windows2000-kb931784-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/b/e/c/bec9d5d2-f891-4c8c-83f9-55f63ba24539/Windows2000-KB931784-x86-NLD.EXE|updates/win2ksp4/windows2000-kb931784-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/b/8/2/b82ce358-a99b-40f1-8995-96a8ef7534bf/Windows2000-KB931784-x86-NOR.EXE|updates/win2ksp4/windows2000-kb931784-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/b/a/6/ba6bc339-6b52-4fd9-81e6-c427d6163bb8/Windows2000-KB931784-x86-PLK.EXE|updates/win2ksp4/windows2000-kb931784-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/9/f/3/9f3d125a-798c-44bd-98d6-01e3f1aced50/Windows2000-KB931784-x86-PTB.EXE|updates/win2ksp4/windows2000-kb931784-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/8/3/1/8311daa1-85bb-4ab6-bf57-ade042047080/Windows2000-KB931784-x86-PTG.EXE|updates/win2ksp4/windows2000-kb931784-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/4/c/2/4c235794-8bc7-4459-82de-26b554d7a671/Windows2000-KB931784-x86-RUS.EXE|updates/win2ksp4/windows2000-kb931784-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/1/4/8/148127c9-4304-49c3-9523-0f51aa76887b/Windows2000-KB931784-x86-SVE.EXE|updates/win2ksp4/windows2000-kb931784-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/d/a/3/da35b657-9097-4fea-a2a8-2ba63e8d142c/Windows2000-KB931784-x86-TRK.EXE|updates/win2ksp4/windows2000-kb931784-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB931784-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB930178)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=909e3b63-4d11-4fe6-849f-1ce960eb62cd>
:: URL|ARA|http://download.microsoft.com/download/f/6/d/f6d23f2d-d121-4801-ad72-c922b2733dae/Windows2000-KB930178-x86-ARA.EXE|updates/win2ksp4/windows2000-kb930178-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/0/1/3/013aab41-13f0-477c-8efe-96f0eb4d5952/Windows2000-KB930178-x86-CSY.EXE|updates/win2ksp4/windows2000-kb930178-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/0/4/0/0402624a-8fec-4a20-98dc-7f663a99204c/Windows2000-KB930178-x86-DAN.EXE|updates/win2ksp4/windows2000-kb930178-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/5/9/0/590af41b-564f-4b5b-a310-aa4c38924054/Windows2000-KB930178-x86-DEU.EXE|updates/win2ksp4/windows2000-kb930178-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/1/e/3/1e3cdcae-c5d7-44a8-a819-fa7774e0c49a/Windows2000-KB930178-x86-ELL.EXE|updates/win2ksp4/windows2000-kb930178-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/3/b/c/3bc7f298-6d57-4429-902c-b723c7cb13ee/Windows2000-KB930178-x86-ENU.EXE|updates/win2ksp4/windows2000-kb930178-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/5/6/f/56f7d44d-e472-4ce2-970e-b42cf793cb40/Windows2000-KB930178-x86-ESN.EXE|updates/win2ksp4/windows2000-kb930178-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/b/a/7/ba71c42e-2af6-47a5-9b34-b5bcf75dc81d/Windows2000-KB930178-x86-FIN.EXE|updates/win2ksp4/windows2000-kb930178-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/7/0/d/70d241ca-1c0e-4e8a-84dc-b0b85b466da8/Windows2000-KB930178-x86-FRA.EXE|updates/win2ksp4/windows2000-kb930178-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/4/f/e/4feb1313-fdb1-43f6-bed5-a2951192f1a7/Windows2000-KB930178-x86-HEB.EXE|updates/win2ksp4/windows2000-kb930178-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/8/4/7/847f4a82-3e4b-4356-80ab-67e6c3d5d19d/Windows2000-KB930178-x86-HUN.EXE|updates/win2ksp4/windows2000-kb930178-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/5/0/4/504c381f-dfe2-4e19-b4c5-eb35384317f6/Windows2000-KB930178-x86-ITA.EXE|updates/win2ksp4/windows2000-kb930178-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/8/e/b/8ebdabcc-edca-4aae-ad98-468dbe1e1208/Windows2000-KB930178-x86-JPN.EXE|updates/win2ksp4/windows2000-kb930178-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/e/5/3/e539b75e-e527-48d3-9ba7-46e447384b4f/Windows2000-KB930178-x86-KOR.EXE|updates/win2ksp4/windows2000-kb930178-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/5/e/3/5e34a7f6-4e82-46ea-8ef0-53edad44aed2/Windows2000-KB930178-x86-NLD.EXE|updates/win2ksp4/windows2000-kb930178-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/1/a/8/1a842e67-c65a-4608-a9e9-aee8a1c61068/Windows2000-KB930178-x86-NOR.EXE|updates/win2ksp4/windows2000-kb930178-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/5/1/d/51dd568d-03f9-462d-9987-fc578bd0227d/Windows2000-KB930178-x86-PLK.EXE|updates/win2ksp4/windows2000-kb930178-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/9/b/3/9b33cde3-f5bb-46ad-b9e1-028288519018/Windows2000-KB930178-x86-PTB.EXE|updates/win2ksp4/windows2000-kb930178-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/c/1/d/c1dfd0e2-aea0-44e0-8539-f8006fe61aa1/Windows2000-KB930178-x86-PTG.EXE|updates/win2ksp4/windows2000-kb930178-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/c/2/b/c2b3451d-3cc6-4f54-80bd-7ee5b26c7007/Windows2000-KB930178-x86-RUS.EXE|updates/win2ksp4/windows2000-kb930178-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/d/c/e/dce8a29f-9cc0-4405-839e-2403e2df492c/Windows2000-KB930178-x86-SVE.EXE|updates/win2ksp4/windows2000-kb930178-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/e/8/2/e82c3ad6-64e4-474b-b379-b365b9e50a13/Windows2000-KB930178-x86-TRK.EXE|updates/win2ksp4/windows2000-kb930178-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB930178-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB925902)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=92F20599-3E7B-4217-91E6-FDCFB4C56856>
:: URL|ARA|http://download.microsoft.com/download/2/7/e/27ed949f-b883-4719-97ec-5b5056845cf6/Windows2000-KB925902-x86-ARA.EXE|updates/win2ksp4/windows2000-kb925902-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/f/8/4/f8470412-fa35-421d-a8c3-1d613b333c32/Windows2000-KB925902-x86-CSY.EXE|updates/win2ksp4/windows2000-kb925902-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/3/f/1/3f1aae3c-db66-4547-b305-0f192ce66c6c/Windows2000-KB925902-x86-DAN.EXE|updates/win2ksp4/windows2000-kb925902-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/a/4/a/a4a39a16-73a1-4db8-8cb7-1860da420f41/Windows2000-KB925902-x86-DEU.EXE|updates/win2ksp4/windows2000-kb925902-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/1/7/c/17c27e80-e9b2-4aa5-966d-3ea7249f7097/Windows2000-KB925902-x86-ELL.EXE|updates/win2ksp4/windows2000-kb925902-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/3/e/1/3e17bdd4-2808-4e6b-982c-01e3b2bbe7ec/Windows2000-KB925902-x86-ENU.EXE|updates/win2ksp4/windows2000-kb925902-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/3/0/b/30b8cfa2-baa4-452c-9081-82a773bcfa3f/Windows2000-KB925902-x86-ESN.EXE|updates/win2ksp4/windows2000-kb925902-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/a/3/2/a32f943b-1a0a-41ec-8a3c-854bd0eba26b/Windows2000-KB925902-x86-FIN.EXE|updates/win2ksp4/windows2000-kb925902-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/f/4/b/f4ba7a53-98a8-4142-af4e-6a24891251eb/Windows2000-KB925902-x86-FRA.EXE|updates/win2ksp4/windows2000-kb925902-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/d/3/7/d373e55a-2f88-4b1c-a10a-d65c7bab66ca/Windows2000-KB925902-x86-HEB.EXE|updates/win2ksp4/windows2000-kb925902-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/3/d/6/3d60e83f-ff93-4948-a0c4-e556686d7bf4/Windows2000-KB925902-x86-HUN.EXE|updates/win2ksp4/windows2000-kb925902-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/a/9/e/a9e751b9-da86-4f29-b571-ced8d0629275/Windows2000-KB925902-x86-ITA.EXE|updates/win2ksp4/windows2000-kb925902-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/c/c/6/cc6c7a25-6bed-46c0-8b53-91137d9776af/Windows2000-KB925902-x86-JPN.EXE|updates/win2ksp4/windows2000-kb925902-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/7/8/6/78667201-630a-4211-9333-26ddad3b4238/Windows2000-KB925902-x86-KOR.EXE|updates/win2ksp4/windows2000-kb925902-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/3/2/3/32391c39-c1c7-4826-a475-6f7a15c66775/Windows2000-KB925902-x86-NLD.EXE|updates/win2ksp4/windows2000-kb925902-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/e/9/f/e9f6ba30-434f-40e6-8cc5-bdff4a1d0fa0/Windows2000-KB925902-x86-NOR.EXE|updates/win2ksp4/windows2000-kb925902-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/b/9/b/b9bf08ad-667a-41c5-b748-008b48bd01ee/Windows2000-KB925902-x86-PLK.EXE|updates/win2ksp4/windows2000-kb925902-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/3/2/5/32597361-3d3b-4cad-87f2-40504e641c32/Windows2000-KB925902-x86-PTB.EXE|updates/win2ksp4/windows2000-kb925902-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/4/e/6/4e6ddad7-5687-4cfa-bd64-431759136e5b/Windows2000-KB925902-x86-PTG.EXE|updates/win2ksp4/windows2000-kb925902-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/b/c/c/bcc39a7f-efe8-49c2-af9c-563bfdff879f/Windows2000-KB925902-x86-RUS.EXE|updates/win2ksp4/windows2000-kb925902-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/7/e/2/7e256d68-b885-4a4f-bac5-62b7fd5b9e92/Windows2000-KB925902-x86-SVE.EXE|updates/win2ksp4/windows2000-kb925902-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/d/c/b/dcbc19ac-cc70-4342-b141-3897bc603d81/Windows2000-KB925902-x86-TRK.EXE|updates/win2ksp4/windows2000-kb925902-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB925902-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB924270)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=3ad5c57d-d3f6-46a1-8dee-3e16d0977f80>
:: URL|ARA|http://download.microsoft.com/download/c/8/8/c88042e7-5f25-4bb2-9510-3ae48a557a5b/Windows2000-KB924270-x86-ARA.EXE|updates/win2ksp4/windows2000-kb924270-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/1/4/4/144d924f-126c-46db-b3cf-3a90c0eddcea/Windows2000-KB924270-x86-CSY.EXE|updates/win2ksp4/windows2000-kb924270-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/8/2/1/82169e6a-91eb-4fb2-9ce0-2934d48c8582/Windows2000-KB924270-x86-DAN.EXE|updates/win2ksp4/windows2000-kb924270-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/d/1/3/d1351808-da4b-4c18-a8cf-85fcdef03d38/Windows2000-KB924270-x86-DEU.EXE|updates/win2ksp4/windows2000-kb924270-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/9/5/c/95cff84f-ae57-47c4-bbc2-1a436158f093/Windows2000-KB924270-x86-ELL.EXE|updates/win2ksp4/windows2000-kb924270-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/e/2/7/e272bf85-2592-4bcf-bb43-4974bc4fc276/Windows2000-KB924270-x86-ENU.EXE|updates/win2ksp4/windows2000-kb924270-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/a/1/a/a1ae8cf6-b24f-4d93-a183-140284316e92/Windows2000-KB924270-x86-ESN.EXE|updates/win2ksp4/windows2000-kb924270-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/2/a/0/2a03e58e-b72b-4492-9547-d79d2b96fba3/Windows2000-KB924270-x86-FIN.EXE|updates/win2ksp4/windows2000-kb924270-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/b/e/1/be110a4d-9e26-4d9e-951d-34d6a7587294/Windows2000-KB924270-x86-FRA.EXE|updates/win2ksp4/windows2000-kb924270-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/0/a/0/0a08c784-c640-4a08-bed3-140e7c93d12e/Windows2000-KB924270-x86-HEB.EXE|updates/win2ksp4/windows2000-kb924270-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/4/4/1/441b7934-d69b-470f-8ee4-e44cdc4a7d4f/Windows2000-KB924270-x86-HUN.EXE|updates/win2ksp4/windows2000-kb924270-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/4/4/4/44411c87-3a97-409a-ae6e-260902511bc0/Windows2000-KB924270-x86-ITA.EXE|updates/win2ksp4/windows2000-kb924270-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/8/1/6/81622882-d0b1-4955-b370-890e8ba9e11c/Windows2000-KB924270-x86-JPN.EXE|updates/win2ksp4/windows2000-kb924270-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/1/b/e/1be724d3-3cdc-44ba-83c1-656be2ce785b/Windows2000-KB924270-x86-KOR.EXE|updates/win2ksp4/windows2000-kb924270-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/6/c/a/6caaca94-b339-41d9-942f-1164e0528c7e/Windows2000-KB924270-x86-NLD.EXE|updates/win2ksp4/windows2000-kb924270-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/a/7/9/a793cdab-0cfd-402d-ace2-91276586923e/Windows2000-KB924270-x86-NOR.EXE|updates/win2ksp4/windows2000-kb924270-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/a/6/1/a617373d-8a33-4b9d-bbb9-728b5407321d/Windows2000-KB924270-x86-PLK.EXE|updates/win2ksp4/windows2000-kb924270-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/5/1/f/51f022ab-4351-4ee0-8b75-c67723feaa12/Windows2000-KB924270-x86-PTB.EXE|updates/win2ksp4/windows2000-kb924270-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/9/9/2/99215282-c755-449e-af28-e56e379cbae3/Windows2000-KB924270-x86-PTG.EXE|updates/win2ksp4/windows2000-kb924270-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/6/4/8/648871c7-cc39-40a0-a688-d7f4e0d4e67d/Windows2000-KB924270-x86-RUS.EXE|updates/win2ksp4/windows2000-kb924270-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/7/e/3/7e3b5e99-7ba7-4671-8620-ba64a59ff983/Windows2000-KB924270-x86-SVE.EXE|updates/win2ksp4/windows2000-kb924270-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/9/f/1/9f18d6ed-3d26-4f58-af15-31a00513731e/Windows2000-KB924270-x86-TRK.EXE|updates/win2ksp4/windows2000-kb924270-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB924270-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB923980)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=3cf0b0d1-ff07-40ac-a6ac-44dc4a54f91e>
:: URL|ARA|http://download.microsoft.com/download/2/1/e/21e1586e-42d7-4e7a-af31-b09d3281d99d/Windows2000-KB923980-x86-ARA.EXE|updates/win2ksp4/windows2000-kb923980-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/c/c/3/cc310a85-71c2-4ba8-8d25-c9ab4fbec824/Windows2000-KB923980-x86-CSY.EXE|updates/win2ksp4/windows2000-kb923980-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/c/6/e/c6e5f31f-e7a7-4b0f-bebb-8230cb247ae3/Windows2000-KB923980-x86-DAN.EXE|updates/win2ksp4/windows2000-kb923980-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/c/b/8/cb82ca9f-ff22-4a75-98f1-1cbef03b9053/Windows2000-KB923980-x86-DEU.EXE|updates/win2ksp4/windows2000-kb923980-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/1/7/4/1749e003-4632-461c-8d7f-5b013fed12e9/Windows2000-KB923980-x86-ELL.EXE|updates/win2ksp4/windows2000-kb923980-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/1/3/9/139ee8ea-668d-449a-8beb-7f29307d2323/Windows2000-KB923980-x86-ENU.EXE|updates/win2ksp4/windows2000-kb923980-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/1/b/1/1b1156cc-479d-4200-a6e9-02c93467326f/Windows2000-KB923980-x86-ESN.EXE|updates/win2ksp4/windows2000-kb923980-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/f/4/5/f45a9ec6-fa3a-4b28-8230-1d0fe942afbe/Windows2000-KB923980-x86-FIN.EXE|updates/win2ksp4/windows2000-kb923980-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/9/e/6/9e6f831e-c557-42ef-9e92-6a7d405bdf42/Windows2000-KB923980-x86-FRA.EXE|updates/win2ksp4/windows2000-kb923980-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/0/e/d/0ed18e50-68b1-408e-8f8e-1633d726492b/Windows2000-KB923980-x86-HEB.EXE|updates/win2ksp4/windows2000-kb923980-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/9/1/f/91fa8548-c821-460e-bfd7-e15da7f60c8d/Windows2000-KB923980-x86-HUN.EXE|updates/win2ksp4/windows2000-kb923980-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/3/0/8/3083c285-9f49-4fa7-b87f-2addbd104225/Windows2000-KB923980-x86-ITA.EXE|updates/win2ksp4/windows2000-kb923980-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/b/1/4/b146491e-15c7-4f33-80cb-f351fdbbd16c/Windows2000-KB923980-x86-JPN.EXE|updates/win2ksp4/windows2000-kb923980-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/b/d/e/bde322ac-98f0-4937-af3d-927a568b588b/Windows2000-KB923980-x86-KOR.EXE|updates/win2ksp4/windows2000-kb923980-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/0/3/0/030a35be-1025-454a-8472-8ef3cb3dbee4/Windows2000-KB923980-x86-NLD.EXE|updates/win2ksp4/windows2000-kb923980-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/3/5/3/353758e9-eed1-404c-9122-aa71fdbb2d54/Windows2000-KB923980-x86-NOR.EXE|updates/win2ksp4/windows2000-kb923980-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/4/a/a/4aa55e18-35c0-4399-9762-e4f6ff322db6/Windows2000-KB923980-x86-PLK.EXE|updates/win2ksp4/windows2000-kb923980-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/0/1/a/01a4aec4-63f7-4cde-8417-ba5f074a720a/Windows2000-KB923980-x86-PTB.EXE|updates/win2ksp4/windows2000-kb923980-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/a/5/5/a555198a-c354-401c-8919-0c15aa634041/Windows2000-KB923980-x86-PTG.EXE|updates/win2ksp4/windows2000-kb923980-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/8/2/b/82b51836-1ebd-413e-9cdf-f982c2baece5/Windows2000-KB923980-x86-RUS.EXE|updates/win2ksp4/windows2000-kb923980-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/9/3/0/9306a547-52f1-4d47-b06f-d62fcfe60a4a/Windows2000-KB923980-x86-SVE.EXE|updates/win2ksp4/windows2000-kb923980-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/7/6/2/762418e6-d5d3-49df-bef6-619ce1a8c29d/Windows2000-KB923980-x86-TRK.EXE|updates/win2ksp4/windows2000-kb923980-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB923980-x86-%WINLANG%.EXE /passive /n /norestart"

:: Cumulative Update for Internet Explorer 6 SP1 (KB922760)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=C65C8EE7-F78D-4D52-A20C-1F896E0DC0A8>
:: URL|ARA|http://download.microsoft.com/download/4/c/2/4c20ad7b-1258-4ef5-9d6b-3b775bc7a7bc/IE6.0sp1-KB922760-Windows2000-x86-ARA.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/6/b/a/6bad039d-bd76-4ac7-ba2f-d6c61d03c5f7/IE6.0sp1-KB922760-Windows2000-x86-CSY.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/9/3/a/93afc94f-c60a-4ea7-b684-487a8861f6ba/IE6.0sp1-KB922760-Windows2000-x86-DAN.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/3/e/6/3e65d8dc-4c14-43e0-95d7-183025945eb5/IE6.0sp1-KB922760-Windows2000-x86-DEU.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/7/3/8/738db774-5840-43f3-afe0-aabf34ae264c/IE6.0sp1-KB922760-Windows2000-x86-ELL.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/4/1/7/417ba29a-1906-4346-9c83-3e841e4068e4/IE6.0sp1-KB922760-Windows2000-x86-ENU.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/8/d/5/8d508a52-d186-47e9-bab3-ed2f7b0f2106/IE6.0sp1-KB922760-Windows2000-x86-ESN.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/a/a/4/aa403ca4-440b-4fbf-a0ac-ba633409919c/IE6.0sp1-KB922760-Windows2000-x86-FIN.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/1/a/2/1a25d7eb-bd9d-4760-934e-85de3a6b570d/IE6.0sp1-KB922760-Windows2000-x86-FRA.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/0/5/4/054137ad-d20c-419e-a6f3-fda7a981bd01/IE6.0sp1-KB922760-Windows2000-x86-HEB.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/d/a/d/dad93f49-7f1d-48bd-b996-c19b97550ff9/IE6.0sp1-KB922760-Windows2000-x86-HUN.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/b/6/e/b6edbbb6-3fce-4e1d-b954-558bf0543074/IE6.0sp1-KB922760-Windows2000-x86-ITA.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/2/7/8/2784ae93-6868-46f6-abc4-d11f82df29df/IE6.0sp1-KB922760-Windows2000-x86-JPN.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/0/3/b/03b73690-dbee-408f-8fb2-f89772b93cfa/IE6.0sp1-KB922760-Windows2000-x86-KOR.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/c/9/7/c97cfc2c-73e6-470f-bc73-7e116a124be9/IE6.0sp1-KB922760-Windows2000-x86-NLD.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/f/a/b/fab3ad08-577b-45f1-b1b8-e035a6f5908a/IE6.0sp1-KB922760-Windows2000-x86-NOR.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/d/3/f/d3f70829-06ce-46f6-a52d-2eea133a8913/IE6.0sp1-KB922760-Windows2000-x86-PLK.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/5/7/d/57d68712-711d-4553-a28e-356a118c205e/IE6.0sp1-KB922760-Windows2000-x86-PTB.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/2/7/a/27a3850c-0bfe-474b-98a4-51d984a182a1/IE6.0sp1-KB922760-Windows2000-x86-PTG.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/3/7/9/3792d82c-6472-4308-af96-8dc68ab2e626/IE6.0sp1-KB922760-Windows2000-x86-RUS.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/1/9/b/19b00b23-3368-4bf0-adcc-b7e035b855c7/IE6.0sp1-KB922760-Windows2000-x86-SVE.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/2/3/e/23e36597-543f-4a0f-9e8f-685ed3a82703/IE6.0sp1-KB922760-Windows2000-x86-TRK.exe|updates/win2ksp4/ie6.0sp1-kb922760-windows2000-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\IE6.0sp1-KB922760-Windows2000-x86-%WINLANG%.exe /passive /n /norestart"

:: Security Update for Windows 2000 (KB920213)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=c72ceec8-3e4d-4281-8183-11b724693217>
:: URL|ARA|http://download.microsoft.com/download/e/6/7/e67edccb-92c8-4fae-b048-7deadcdfb739/Windows2000-KB920213-x86-ARA.EXE|updates/win2ksp4/windows2000-kb920213-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/5/2/5/525f7e44-7287-4375-abd4-a3850946f78a/Windows2000-KB920213-x86-CSY.EXE|updates/win2ksp4/windows2000-kb920213-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/a/2/3/a2336677-342a-43d1-bc52-b4b50dca6bee/Windows2000-KB920213-x86-DAN.EXE|updates/win2ksp4/windows2000-kb920213-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/3/2/3/3238a371-4b81-4c5e-a8ee-c86f7ed9dfa6/Windows2000-KB920213-x86-DEU.EXE|updates/win2ksp4/windows2000-kb920213-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/b/c/9/bc9acdf2-6d46-4d04-a09f-4250e220fdba/Windows2000-KB920213-x86-ELL.EXE|updates/win2ksp4/windows2000-kb920213-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/e/5/1/e5128d1b-0912-4f3f-98bf-404f51d5b8d5/Windows2000-KB920213-x86-ENU.EXE|updates/win2ksp4/windows2000-kb920213-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/3/7/c/37c2c284-4e04-47e1-8b0d-cf48eb8c4faf/Windows2000-KB920213-x86-ESN.EXE|updates/win2ksp4/windows2000-kb920213-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/f/6/0/f6070c60-f118-46da-9b03-bf09fdc0987d/Windows2000-KB920213-x86-FIN.EXE|updates/win2ksp4/windows2000-kb920213-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/6/e/9/6e948083-5c75-46c7-b401-f5ed5f4856bb/Windows2000-KB920213-x86-FRA.EXE|updates/win2ksp4/windows2000-kb920213-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/a/b/c/abc72886-20ef-4405-b9fb-76aa6ec21c31/Windows2000-KB920213-x86-HEB.EXE|updates/win2ksp4/windows2000-kb920213-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/0/d/1/0d17d714-8372-4348-93a2-aa83429ddf45/Windows2000-KB920213-x86-HUN.EXE|updates/win2ksp4/windows2000-kb920213-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/6/b/5/6b51417e-13ae-472b-8d2c-5f4960138913/Windows2000-KB920213-x86-ITA.EXE|updates/win2ksp4/windows2000-kb920213-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/6/7/5/6753567c-15fd-4814-bd77-89f63502ae76/Windows2000-KB920213-x86-JPN.EXE|updates/win2ksp4/windows2000-kb920213-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/2/4/3/243414b9-919f-42dd-aea3-409d7caa21d7/Windows2000-KB920213-x86-KOR.EXE|updates/win2ksp4/windows2000-kb920213-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/a/7/3/a7303014-7821-463f-908b-f89b7397001d/Windows2000-KB920213-x86-NLD.EXE|updates/win2ksp4/windows2000-kb920213-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/4/1/b/41b86e70-761b-46e8-bda8-9b19d05f9345/Windows2000-KB920213-x86-NOR.EXE|updates/win2ksp4/windows2000-kb920213-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/b/a/8/ba84427f-f74d-4d0e-a88a-1c0099d9d8a0/Windows2000-KB920213-x86-PLK.EXE|updates/win2ksp4/windows2000-kb920213-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/4/4/5/445988f8-8e0a-4da0-9fdf-eab5d3acbf25/Windows2000-KB920213-x86-PTB.EXE|updates/win2ksp4/windows2000-kb920213-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/d/0/8/d0826177-801a-445d-9322-94cc64462408/Windows2000-KB920213-x86-PTG.EXE|updates/win2ksp4/windows2000-kb920213-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/a/3/a/a3ad62ba-3e09-44b7-bf9e-387996391928/Windows2000-KB920213-x86-RUS.EXE|updates/win2ksp4/windows2000-kb920213-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/7/a/5/7a590458-5fc1-4cd1-8929-9a8fba64b42c/Windows2000-KB920213-x86-SVE.EXE|updates/win2ksp4/windows2000-kb920213-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/6/3/f/63f5515a-fd04-4115-b07a-b1d03d059269/Windows2000-KB920213-x86-TRK.EXE|updates/win2ksp4/windows2000-kb920213-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB920213-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Internet Explorer 6 Service Pack 1 for Windows 2000 Service Pack 4 (KB925486)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=EA7DE30F-D765-4E5B-BFD4-64F3FED578FF>
:: URL|ARA|http://download.microsoft.com/download/0/8/2/0821ce56-7e1d-4fec-bbb6-c0d185aac87a/IE6.0sp1-KB925486-Windows2000-x86-ARA.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/a/f/d/afdc52c0-4bb9-4cdf-b51f-dfff8f44c117/IE6.0sp1-KB925486-Windows2000-x86-CSY.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/0/9/8/09881088-4969-4e2a-ad87-09154bc3e89c/IE6.0sp1-KB925486-Windows2000-x86-DAN.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/b/6/c/b6c4454d-2c26-4016-bfde-c4e103541339/IE6.0sp1-KB925486-Windows2000-x86-DEU.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/e/7/0/e70c8849-92bd-4b2d-bec1-6726243e181f/IE6.0sp1-KB925486-Windows2000-x86-ELL.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/3/b/2/3b28cc6e-8217-464f-b888-f938f83a6837/IE6.0sp1-KB925486-Windows2000-x86-ENU.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/3/1/4/314e88d1-3cc1-4715-8307-a1626bd715a4/IE6.0sp1-KB925486-Windows2000-x86-ESN.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/b/f/9/bf9550b8-20a2-4d0c-9d07-923a8ba55509/IE6.0sp1-KB925486-Windows2000-x86-FIN.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/a/c/c/accb6ba3-2087-4848-8f9a-79026b971500/IE6.0sp1-KB925486-Windows2000-x86-FRA.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/0/3/9/0398505b-370a-415a-9d2d-1ec161c88c1e/IE6.0sp1-KB925486-Windows2000-x86-HEB.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/9/6/1/961ee18f-edd4-4e39-adbc-2cb96efbdd08/IE6.0sp1-KB925486-Windows2000-x86-HUN.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/0/9/d/09d55037-0a92-4e15-865d-7f60c67490f8/IE6.0sp1-KB925486-Windows2000-x86-ITA.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/0/9/f/09fd516a-fa89-4482-b0ce-8c0a8f7a2062/IE6.0sp1-KB925486-Windows2000-x86-JPN.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/9/2/2/9226ee29-4dfa-4474-a360-400960ad65a5/IE6.0sp1-KB925486-Windows2000-x86-KOR.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/8/f/e/8fecbf15-a175-422a-9843-7d9761abebe5/IE6.0sp1-KB925486-Windows2000-x86-NLD.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/9/e/1/9e1af608-071a-4c2b-9c16-65300646b713/IE6.0sp1-KB925486-Windows2000-x86-NOR.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/1/9/2/192806d3-c457-47d9-ae50-c39416d65976/IE6.0sp1-KB925486-Windows2000-x86-PLK.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/f/d/6/fd65f92a-1434-4f90-885e-52e6ee836c7e/IE6.0sp1-KB925486-Windows2000-x86-PTB.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/5/5/4/554cbd66-59ca-4497-a54f-ade81d8b9256/IE6.0sp1-KB925486-Windows2000-x86-PTG.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/2/f/e/2fe8dbc2-5d1f-40b6-a969-32a3d02c3ae9/IE6.0sp1-KB925486-Windows2000-x86-RUS.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/3/a/d/3addab0d-0bf6-458b-9b8b-b048aae713be/IE6.0sp1-KB925486-Windows2000-x86-SVE.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/7/a/c/7acefbcd-87e9-4859-a936-df3b2a2d121e/IE6.0sp1-KB925486-Windows2000-x86-TRK.exe|updates/win2ksp4/ie6.0sp1-kb925486-windows2000-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\IE6.0sp1-KB925486-Windows2000-x86-%WINLANG%.exe /passive /n /norestart"

:: Security Update for Windows 2000 (KB924191)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=f9d16d74-1785-4c33-b1fc-df5258dd1089>
:: URL|ARA|http://download.microsoft.com/download/2/7/b/27b55231-fa16-43e8-9643-ea6100deccc5/Windows2000-KB924191-v2-x86-ARA.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/d/4/4/d441e4a0-66b3-4c4f-876b-2b62077654cc/Windows2000-KB924191-v2-x86-CSY.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/1/e/b/1eb52bdf-52a4-4184-aa7d-9e146677af94/Windows2000-KB924191-v2-x86-DAN.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/6/5/7/6576adb4-c52f-45fb-aeee-744601d59973/Windows2000-KB924191-v2-x86-DEU.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/5/7/0/5708f311-9ce9-4b47-a64c-663cd4cc56ad/Windows2000-KB924191-v2-x86-ELL.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/b/2/5/b25b9b9d-96a9-47c3-819a-4cbe191b2bfc/Windows2000-KB924191-v2-x86-ENU.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/b/8/f/b8f62485-0826-4e0c-b420-ae0548c9b79e/Windows2000-KB924191-v2-x86-ESN.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/0/d/3/0d3b8fd7-d946-43db-8eb7-a736a8fe6f21/Windows2000-KB924191-v2-x86-FIN.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/c/f/c/cfcd1af3-668e-4283-8931-d4072c033b01/Windows2000-KB924191-v2-x86-FRA.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/2/0/9/2093b6fa-c539-4b1c-b917-4a43637e138b/Windows2000-KB924191-v2-x86-HEB.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/c/4/2/c4293dae-dfca-4b63-bdc1-7d8009d006ad/Windows2000-KB924191-v2-x86-HUN.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/2/6/7/267a5c59-77cf-4e1a-8db7-420aba4559ad/Windows2000-KB924191-v2-x86-ITA.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/3/5/5/3557cb33-39f8-4df9-a4ab-fcd2332028b7/Windows2000-KB924191-v2-x86-JPN.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/d/b/8/db810944-ca03-40a3-bb5f-4a68bd63d3be/Windows2000-KB924191-v2-x86-KOR.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/5/1/f/51fd2244-40da-4b7a-8fe6-e7c6e6609782/Windows2000-KB924191-v2-x86-NLD.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/5/6/b/56b4626f-d406-4ba4-9760-a3b2dcdb2518/Windows2000-KB924191-v2-x86-NOR.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/b/c/9/bc9f941b-bb5d-40fd-bc66-ba8818e8f6b6/Windows2000-KB924191-v2-x86-PLK.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/8/f/e/8fe6b6bd-c0e9-41b5-9812-5d0dc1839f44/Windows2000-KB924191-v2-x86-PTB.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/e/5/2/e5288b7b-6eb8-4768-8342-764546a15e45/Windows2000-KB924191-v2-x86-PTG.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/2/b/a/2bad485c-468f-44c0-811f-705a2d83ba07/Windows2000-KB924191-v2-x86-RUS.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/9/3/3/933c4945-d08d-430b-bbef-5a520808dbbe/Windows2000-KB924191-v2-x86-SVE.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/3/b/4/3b4de337-a793-4775-bc43-5f142b20c06f/Windows2000-KB924191-v2-x86-TRK.EXE|updates/win2ksp4/windows2000-kb924191-v2-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB924191-v2-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB923414)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=2998105d-6796-4e60-8c9c-e8241385f2a9>
:: URL|ARA|http://download.microsoft.com/download/0/e/9/0e98c3dd-9971-4854-8ef0-46d93cb94b72/Windows2000-KB923414-x86-ARA.EXE|updates/win2ksp4/windows2000-kb923414-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/1/c/0/1c09fc2c-c153-42c8-aa61-f64975f1fa3e/Windows2000-KB923414-x86-CSY.EXE|updates/win2ksp4/windows2000-kb923414-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/4/d/c/4dc38592-c7db-4752-90b4-66119d3e99cf/Windows2000-KB923414-x86-DAN.EXE|updates/win2ksp4/windows2000-kb923414-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/8/0/a/80a42938-f4ff-444a-9f72-660017f3ce74/Windows2000-KB923414-x86-DEU.EXE|updates/win2ksp4/windows2000-kb923414-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/7/c/5/7c5381b5-0233-4311-a7a6-e3107d8affae/Windows2000-KB923414-x86-ELL.EXE|updates/win2ksp4/windows2000-kb923414-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/9/a/c/9ac4f629-5860-401c-b0c6-87d1428dfe5f/Windows2000-KB923414-x86-ENU.EXE|updates/win2ksp4/windows2000-kb923414-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/0/a/9/0a977d42-972d-4759-af3a-9f01d15182e7/Windows2000-KB923414-x86-ESN.EXE|updates/win2ksp4/windows2000-kb923414-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/0/7/c/07c029a6-dd6e-4aac-b4f4-f5db701087bc/Windows2000-KB923414-x86-FIN.EXE|updates/win2ksp4/windows2000-kb923414-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/9/6/0/960f9e9d-0d7c-4acc-9dc3-e25c909563cd/Windows2000-KB923414-x86-FRA.EXE|updates/win2ksp4/windows2000-kb923414-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/9/e/2/9e21ed36-6eb0-4731-8a45-40dc28954b7b/Windows2000-KB923414-x86-HEB.EXE|updates/win2ksp4/windows2000-kb923414-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/d/4/1/d41c5d92-554d-440f-a714-c2c724388619/Windows2000-KB923414-x86-HUN.EXE|updates/win2ksp4/windows2000-kb923414-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/1/0/4/104c83d0-f996-4aca-9281-6c101d9194c8/Windows2000-KB923414-x86-ITA.EXE|updates/win2ksp4/windows2000-kb923414-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/0/b/c/0bc35ecf-21da-4161-873a-8962319af234/Windows2000-KB923414-x86-JPN.EXE|updates/win2ksp4/windows2000-kb923414-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/5/b/c/5bc97dc8-d08c-47bb-a46a-2b546464ff79/Windows2000-KB923414-x86-KOR.EXE|updates/win2ksp4/windows2000-kb923414-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/b/4/f/b4fa3b67-25cf-49ac-8d19-00346a3bfbec/Windows2000-KB923414-x86-NLD.EXE|updates/win2ksp4/windows2000-kb923414-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/6/e/c/6ec8debe-91ec-42ad-a683-be7773ba5e3a/Windows2000-KB923414-x86-NOR.EXE|updates/win2ksp4/windows2000-kb923414-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/c/d/7/cd740030-156e-4c18-baac-7b4560fec01e/Windows2000-KB923414-x86-PLK.EXE|updates/win2ksp4/windows2000-kb923414-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/7/2/a/72ad27e7-d181-44c8-962b-5ff71e1637d2/Windows2000-KB923414-x86-PTB.EXE|updates/win2ksp4/windows2000-kb923414-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/4/4/8/448dcf75-3a93-46c6-9873-77de84c915f9/Windows2000-KB923414-x86-PTG.EXE|updates/win2ksp4/windows2000-kb923414-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/5/4/6/54622c33-cb21-4b34-a007-b0a2b3b795bd/Windows2000-KB923414-x86-RUS.EXE|updates/win2ksp4/windows2000-kb923414-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/0/c/a/0ca4134a-6d10-4b7d-acd9-34dd19d213ed/Windows2000-KB923414-x86-SVE.EXE|updates/win2ksp4/windows2000-kb923414-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/2/3/0/230f09e2-df6f-41a4-9707-f0e0a8e2ac0f/Windows2000-KB923414-x86-TRK.EXE|updates/win2ksp4/windows2000-kb923414-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB923414-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB923191)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=756f53a7-28dc-422a-a691-c1bbfcbf3d0c>
:: URL|ARA|http://download.microsoft.com/download/3/7/7/3779d32a-a3eb-4d54-b209-ef5b484f2ca0/Windows2000-KB923191-x86-ARA.EXE|updates/win2ksp4/windows2000-kb923191-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/3/c/9/3c9d9880-f711-4017-b614-67c1e43ea1f0/Windows2000-KB923191-x86-CSY.EXE|updates/win2ksp4/windows2000-kb923191-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/c/a/9/ca9238a0-5cd3-4531-83fd-678e0b6ae580/Windows2000-KB923191-x86-DAN.EXE|updates/win2ksp4/windows2000-kb923191-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/e/2/7/e27bfdf2-099b-4e74-afe7-9e57b70a68ba/Windows2000-KB923191-x86-DEU.EXE|updates/win2ksp4/windows2000-kb923191-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/7/0/0/7006df5f-4e29-4f0c-87b6-4e73bbde6008/Windows2000-KB923191-x86-ELL.EXE|updates/win2ksp4/windows2000-kb923191-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/8/7/a/87aab50e-8239-4b88-89a6-280135b64915/Windows2000-KB923191-x86-ENU.EXE|updates/win2ksp4/windows2000-kb923191-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/6/e/a/6ea7c3ce-580f-4935-ac95-636bfc79ba69/Windows2000-KB923191-x86-ESN.EXE|updates/win2ksp4/windows2000-kb923191-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/c/a/b/caba0826-cd36-4094-a199-887a0ad6f359/Windows2000-KB923191-x86-FIN.EXE|updates/win2ksp4/windows2000-kb923191-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/0/f/1/0f1e9cef-c171-4bf8-82f0-59d120b5bf86/Windows2000-KB923191-x86-FRA.EXE|updates/win2ksp4/windows2000-kb923191-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/c/e/7/ce7bca33-235a-453d-ac29-7e8a53d3c037/Windows2000-KB923191-x86-HEB.EXE|updates/win2ksp4/windows2000-kb923191-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/7/2/f/72fb49a8-6612-4799-8538-f1b93c435420/Windows2000-KB923191-x86-HUN.EXE|updates/win2ksp4/windows2000-kb923191-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/5/7/6/5767369e-2918-4a9c-be27-807144194f90/Windows2000-KB923191-x86-ITA.EXE|updates/win2ksp4/windows2000-kb923191-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/a/1/6/a16f07c1-fe66-4bc0-9355-a1ef8805df86/Windows2000-KB923191-x86-JPN.EXE|updates/win2ksp4/windows2000-kb923191-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/0/c/c/0cc6c720-d891-44b0-ba64-1d120d659d05/Windows2000-KB923191-x86-KOR.EXE|updates/win2ksp4/windows2000-kb923191-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/d/6/5/d65036d5-d792-4cb1-8cf4-aabf0a9a7176/Windows2000-KB923191-x86-NLD.EXE|updates/win2ksp4/windows2000-kb923191-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/6/7/3/6737a326-eee9-4a93-b1a5-72b185852720/Windows2000-KB923191-x86-NOR.EXE|updates/win2ksp4/windows2000-kb923191-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/e/3/2/e324b7a8-3465-4c7f-b3e2-53187627e098/Windows2000-KB923191-x86-PLK.EXE|updates/win2ksp4/windows2000-kb923191-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/3/1/b/31b2fcc1-d6fc-4d67-bc1b-f1bcf3edda23/Windows2000-KB923191-x86-PTB.EXE|updates/win2ksp4/windows2000-kb923191-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/5/6/8/56858f5f-0e01-4073-857e-4dbf5f213045/Windows2000-KB923191-x86-PTG.EXE|updates/win2ksp4/windows2000-kb923191-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/c/2/6/c265e698-e438-43e9-890c-7a01beb33dd4/Windows2000-KB923191-x86-RUS.EXE|updates/win2ksp4/windows2000-kb923191-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/d/3/2/d3218f9f-f7eb-4376-8745-aad0fd38dc42/Windows2000-KB923191-x86-SVE.EXE|updates/win2ksp4/windows2000-kb923191-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/6/d/d/6dde9dea-5f55-4a01-b50c-a09d9f9471d1/Windows2000-KB923191-x86-TRK.EXE|updates/win2ksp4/windows2000-kb923191-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB923191-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB917422)
:: Microsoft Security Bulletin MS06-051
:: "Vulnerability in Windows Kernel Could Result in Remote Code Execution (917422)"
:: <http://www.microsoft.com/technet/security/bulletin/ms06-051.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=83e0c6fb-a542-463a-88fd-dc388605a8ae>
:: URL|ARA|http://download.microsoft.com/download/c/7/c/c7c6d0a2-e798-4ef5-b2eb-9716d76fecc2/Windows2000-KB917422-x86-ARA.EXE|updates/win2ksp4/windows2000-kb917422-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/1/8/1/18171540-c5b3-47a1-a80e-d494c8019e54/Windows2000-KB917422-x86-CSY.EXE|updates/win2ksp4/windows2000-kb917422-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/4/3/a/43aeb087-8856-4d1c-b9ea-2fef04993e72/Windows2000-KB917422-x86-DAN.EXE|updates/win2ksp4/windows2000-kb917422-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/0/f/1/0f10d3b5-8f2b-4d16-9f10-203059babd2f/Windows2000-KB917422-x86-DEU.EXE|updates/win2ksp4/windows2000-kb917422-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/8/7/f/87ff912b-088c-4eb0-8aaf-3001f5415c69/Windows2000-KB917422-x86-ELL.EXE|updates/win2ksp4/windows2000-kb917422-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/f/c/6/fc685667-9d27-4e6a-82af-2772e69bd5c6/Windows2000-KB917422-x86-ENU.EXE|updates/win2ksp4/windows2000-kb917422-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/9/d/6/9d665f06-46ac-41dc-96de-019a9c8ef47c/Windows2000-KB917422-x86-ESN.EXE|updates/win2ksp4/windows2000-kb917422-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/9/6/9/969e8974-1b12-4ea8-92d9-31384643d34e/Windows2000-KB917422-x86-FIN.EXE|updates/win2ksp4/windows2000-kb917422-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/1/0/1/101be29a-e619-45c8-bbc3-b83b843326e7/Windows2000-KB917422-x86-FRA.EXE|updates/win2ksp4/windows2000-kb917422-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/2/e/0/2e09519c-6e4b-4f73-9934-da5f0010536c/Windows2000-KB917422-x86-HEB.EXE|updates/win2ksp4/windows2000-kb917422-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/6/6/3/663f4d35-47ea-40c1-ad20-da12c7adbede/Windows2000-KB917422-x86-HUN.EXE|updates/win2ksp4/windows2000-kb917422-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/b/6/f/b6fed0ac-e8d7-4d31-a92e-bc6334dfc5a7/Windows2000-KB917422-x86-ITA.EXE|updates/win2ksp4/windows2000-kb917422-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/a/4/f/a4f6832a-6d9e-4fac-8f9e-6b292b263dc2/Windows2000-KB917422-x86-JPN.EXE|updates/win2ksp4/windows2000-kb917422-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/a/a/f/aafcd50f-86b9-47b3-8fce-3ab511239d82/Windows2000-KB917422-x86-KOR.EXE|updates/win2ksp4/windows2000-kb917422-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/2/8/a/28ad681f-c150-46e3-90e3-76f474749a0a/Windows2000-KB917422-x86-NLD.EXE|updates/win2ksp4/windows2000-kb917422-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/3/e/c/3ecb3064-5bb6-4a9c-ba2a-790d4013a935/Windows2000-KB917422-x86-NOR.EXE|updates/win2ksp4/windows2000-kb917422-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/3/8/1/381f696d-8293-48af-970e-38d841c16ff2/Windows2000-KB917422-x86-PLK.EXE|updates/win2ksp4/windows2000-kb917422-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/2/3/a/23a44f0c-3a37-4312-8af8-36938ae62c0c/Windows2000-KB917422-x86-PTB.EXE|updates/win2ksp4/windows2000-kb917422-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/4/b/2/4b218645-dac5-4c21-aceb-59b3e08dc1bd/Windows2000-KB917422-x86-PTG.EXE|updates/win2ksp4/windows2000-kb917422-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/3/0/2/302006b7-412a-4d93-8c55-2282096a755a/Windows2000-KB917422-x86-RUS.EXE|updates/win2ksp4/windows2000-kb917422-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/6/e/a/6eac4c42-918f-440e-bb15-4f49343afa0a/Windows2000-KB917422-x86-SVE.EXE|updates/win2ksp4/windows2000-kb917422-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/f/7/9/f796192a-1482-4fcb-b1ff-dd9de31d2823/Windows2000-KB917422-x86-TRK.EXE|updates/win2ksp4/windows2000-kb917422-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB917422-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB922616)
:: Microsoft Security Bulletin MS06-046
:: "Vulnerability in HTML Help Could Allow Remote Code Execution (922616)"
:: <http://www.microsoft.com/technet/security/bulletin/ms06-046.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=34ebe5d3-40c9-41dc-aaff-64608d3ac7b1>
:: URL|ARA|http://download.microsoft.com/download/e/2/5/e254353b-f89f-416f-a8c2-31bbd100f378/Windows2000-KB922616-x86-ARA.EXE|updates/win2ksp4/windows2000-kb922616-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/0/4/4/044c4f51-495d-4aec-9ec5-fedebc311359/Windows2000-KB922616-x86-CSY.EXE|updates/win2ksp4/windows2000-kb922616-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/b/f/5/bf59003c-80a3-42a3-919f-a1e382336c75/Windows2000-KB922616-x86-DAN.EXE|updates/win2ksp4/windows2000-kb922616-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/d/f/2/df2a4181-ce1d-46e1-b54e-2aff158e4317/Windows2000-KB922616-x86-DEU.EXE|updates/win2ksp4/windows2000-kb922616-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/3/c/7/3c74ed51-a582-46b3-be14-39a2685c138f/Windows2000-KB922616-x86-ELL.EXE|updates/win2ksp4/windows2000-kb922616-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/0/b/5/0b544759-bafd-4756-95be-9192db941b19/Windows2000-KB922616-x86-ENU.EXE|updates/win2ksp4/windows2000-kb922616-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/5/2/b/52b73d16-8ad3-4cb3-afcb-60e72c00ea2e/Windows2000-KB922616-x86-ESN.EXE|updates/win2ksp4/windows2000-kb922616-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/5/b/0/5b08c974-2d83-4d8f-9d09-9f0172a01250/Windows2000-KB922616-x86-FIN.EXE|updates/win2ksp4/windows2000-kb922616-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/3/0/a/30a26616-b660-4d85-bad6-ead7d8eba20b/Windows2000-KB922616-x86-FRA.EXE|updates/win2ksp4/windows2000-kb922616-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/6/e/9/6e92f094-1be1-4a2b-beba-efd2691a4036/Windows2000-KB922616-x86-HEB.EXE|updates/win2ksp4/windows2000-kb922616-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/6/d/f/6df9353c-5573-488a-9bb4-532b2e6f7de2/Windows2000-KB922616-x86-HUN.EXE|updates/win2ksp4/windows2000-kb922616-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/5/a/9/5a9038ff-76bf-44c3-8aa1-816c484b2a52/Windows2000-KB922616-x86-ITA.EXE|updates/win2ksp4/windows2000-kb922616-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/f/6/3/f631b983-2d2a-47ba-bd75-bcbb77279754/Windows2000-KB922616-x86-JPN.EXE|updates/win2ksp4/windows2000-kb922616-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/6/d/b/6db6d9be-d666-4677-8192-25f886621567/Windows2000-KB922616-x86-KOR.EXE|updates/win2ksp4/windows2000-kb922616-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/3/5/f/35f8c061-af7b-444a-b671-44ffcd1def38/Windows2000-KB922616-x86-NLD.EXE|updates/win2ksp4/windows2000-kb922616-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/d/8/8/d88b807b-e70f-47bb-9f69-1e0269c68eeb/Windows2000-KB922616-x86-NOR.EXE|updates/win2ksp4/windows2000-kb922616-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/4/9/3/49322871-2612-4464-a873-a27005f3cf7b/Windows2000-KB922616-x86-PLK.EXE|updates/win2ksp4/windows2000-kb922616-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/6/4/7/647d93f0-cdb8-46b5-bbe5-f9d2b61843e9/Windows2000-KB922616-x86-PTB.EXE|updates/win2ksp4/windows2000-kb922616-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/8/3/3/833910fa-0e3b-414c-af0c-c2ea0a5244bf/Windows2000-KB922616-x86-PTG.EXE|updates/win2ksp4/windows2000-kb922616-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/5/e/1/5e1fe77f-d2b8-4bde-9e54-431d16bdb314/Windows2000-KB922616-x86-RUS.EXE|updates/win2ksp4/windows2000-kb922616-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/8/d/c/8dce6c46-150e-4e04-809d-e892518c174d/Windows2000-KB922616-x86-SVE.EXE|updates/win2ksp4/windows2000-kb922616-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/c/8/1/c81c4ab1-e8cc-4a84-8be3-7877b43f7544/Windows2000-KB922616-x86-TRK.EXE|updates/win2ksp4/windows2000-kb922616-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB922616-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB917008)
:: Microsoft Security Bulletin MS06-044
:: "Vulnerability in Microsoft Management Console Could Allow Remote Code Execution (917008)"
:: <http://www.microsoft.com/technet/security/bulletin/ms06-044.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=87fe4c18-21dc-4d83-a1d8-503b92fdba2b>
:: URL|ARA|http://download.microsoft.com/download/e/5/9/e5937d24-573f-4b56-b60d-80a0ac8dc96b/Windows2000-KB917008-x86-ARA.EXE|updates/win2ksp4/windows2000-kb917008-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/e/a/e/eae7c8f2-4ee1-49be-b0d4-bb3433419f99/Windows2000-KB917008-x86-CSY.EXE|updates/win2ksp4/windows2000-kb917008-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/0/e/c/0ec6b24b-4da0-4f62-9e05-0747b1fe7aed/Windows2000-KB917008-x86-DAN.EXE|updates/win2ksp4/windows2000-kb917008-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/7/e/2/7e2ccc7b-3773-4866-b437-45a4c32f1f23/Windows2000-KB917008-x86-DEU.EXE|updates/win2ksp4/windows2000-kb917008-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/4/7/d/47d25925-7cff-4dba-b70f-0cff2c7a5b30/Windows2000-KB917008-x86-ELL.EXE|updates/win2ksp4/windows2000-kb917008-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/d/1/5/d1555c27-be62-4a61-946d-5d2b70a52211/Windows2000-KB917008-x86-ENU.EXE|updates/win2ksp4/windows2000-kb917008-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/2/e/2/2e297330-a569-48c8-9287-ec30c38b19fe/Windows2000-KB917008-x86-ESN.EXE|updates/win2ksp4/windows2000-kb917008-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/c/1/8/c1803036-6ced-4cdb-b5b3-7958d6bf2636/Windows2000-KB917008-x86-FIN.EXE|updates/win2ksp4/windows2000-kb917008-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/a/6/0/a60d6aca-3369-47b5-8eee-262d4d3504de/Windows2000-KB917008-x86-FRA.EXE|updates/win2ksp4/windows2000-kb917008-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/f/7/a/f7a85895-11f4-4251-b68b-2afc9536e539/Windows2000-KB917008-x86-HEB.EXE|updates/win2ksp4/windows2000-kb917008-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/c/8/3/c834483b-87fe-4b7a-93e5-cd8c9f178397/Windows2000-KB917008-x86-HUN.EXE|updates/win2ksp4/windows2000-kb917008-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/3/7/b/37b894d6-3fe0-40f8-9b36-b7d665566032/Windows2000-KB917008-x86-ITA.EXE|updates/win2ksp4/windows2000-kb917008-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/8/0/9/809056f1-ac4c-4499-afce-76e8820920e3/Windows2000-KB917008-x86-JPN.EXE|updates/win2ksp4/windows2000-kb917008-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/0/d/b/0db21bdd-6ab0-4ec8-83e5-a5f9b5d9b1e5/Windows2000-KB917008-x86-KOR.EXE|updates/win2ksp4/windows2000-kb917008-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/c/b/7/cb7c0129-200f-4aba-9cd3-35cb76cf56d6/Windows2000-KB917008-x86-NLD.EXE|updates/win2ksp4/windows2000-kb917008-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/f/6/6/f66e5288-ef6a-4ee1-a6c1-43bb8e78b571/Windows2000-KB917008-x86-NOR.EXE|updates/win2ksp4/windows2000-kb917008-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/5/2/3/523e522c-23f7-46fd-a3a4-87c2f9b87da9/Windows2000-KB917008-x86-PLK.EXE|updates/win2ksp4/windows2000-kb917008-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/7/d/4/7d46dffd-68b7-4324-a192-0a712a97b0a3/Windows2000-KB917008-x86-PTB.EXE|updates/win2ksp4/windows2000-kb917008-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/9/d/9/9d9fabc4-ef25-407f-8b08-d7b0d2fa4443/Windows2000-KB917008-x86-PTG.EXE|updates/win2ksp4/windows2000-kb917008-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/1/1/f/11f985e3-2f16-40fb-a7ba-8aa5391f25ad/Windows2000-KB917008-x86-RUS.EXE|updates/win2ksp4/windows2000-kb917008-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/1/1/d/11dbac14-e853-4f1e-a4e9-b6197af76154/Windows2000-KB917008-x86-SVE.EXE|updates/win2ksp4/windows2000-kb917008-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/2/b/9/2b945abb-21e1-4a4f-b427-f142c831e275/Windows2000-KB917008-x86-TRK.EXE|updates/win2ksp4/windows2000-kb917008-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB917008-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB920683)
:: Microsoft Security Bulletin MS06-041
:: "Vulnerabilities in DNS Resolution Could Allow Remote Code Execution (920683)"
:: <http://www.microsoft.com/technet/security/bulletin/ms06-041.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=144408a7-3011-458a-bc79-49b1658aa25d>
:: URL|ARA|http://download.microsoft.com/download/a/2/7/a2788c48-fa8b-41af-94bd-88b8961322f9/Windows2000-KB920683-x86-ARA.EXE|updates/win2ksp4/windows2000-kb920683-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/3/e/c/3ec3fcbf-85db-47ca-aefc-4dc423850965/Windows2000-KB920683-x86-CSY.EXE|updates/win2ksp4/windows2000-kb920683-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/f/e/6/fe6faa6e-b0fe-45b1-a1da-524a1e63ff5f/Windows2000-KB920683-x86-DAN.EXE|updates/win2ksp4/windows2000-kb920683-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/f/6/3/f636236a-1d89-4d11-9c0d-3f305f97f185/Windows2000-KB920683-x86-DEU.EXE|updates/win2ksp4/windows2000-kb920683-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/e/a/b/eaba4f5f-a1b0-4df2-9fc8-4a114334619a/Windows2000-KB920683-x86-ELL.EXE|updates/win2ksp4/windows2000-kb920683-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/b/4/7/b472d553-f4d1-42a5-baf9-d58bd713e492/Windows2000-KB920683-x86-ENU.EXE|updates/win2ksp4/windows2000-kb920683-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/8/0/4/8049fd37-5702-401f-8916-cfd15cd87c42/Windows2000-KB920683-x86-ESN.EXE|updates/win2ksp4/windows2000-kb920683-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/5/2/0/520328ba-01ad-4dfa-a644-8295d45bd7f1/Windows2000-KB920683-x86-FIN.EXE|updates/win2ksp4/windows2000-kb920683-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/a/8/e/a8e85a37-3334-4ff0-adad-42213b55a03a/Windows2000-KB920683-x86-FRA.EXE|updates/win2ksp4/windows2000-kb920683-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/1/7/1/1716c0e1-49ca-4212-a3ab-85f609a8c0c3/Windows2000-KB920683-x86-HEB.EXE|updates/win2ksp4/windows2000-kb920683-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/a/4/4/a44d2ca3-f495-4b59-a727-efe58ce18ba3/Windows2000-KB920683-x86-HUN.EXE|updates/win2ksp4/windows2000-kb920683-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/0/8/5/085c99d0-04da-4071-b319-8c7a28ad66e3/Windows2000-KB920683-x86-ITA.EXE|updates/win2ksp4/windows2000-kb920683-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/5/8/e/58e8413f-c696-4e96-82f2-896137442b3c/Windows2000-KB920683-x86-JPN.EXE|updates/win2ksp4/windows2000-kb920683-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/9/e/6/9e619ccc-bf96-4c91-bf5d-e320238ae480/Windows2000-KB920683-x86-KOR.EXE|updates/win2ksp4/windows2000-kb920683-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/e/9/8/e98c12a0-5a4b-47d1-b57e-46b9ca0b2df9/Windows2000-KB920683-x86-NLD.EXE|updates/win2ksp4/windows2000-kb920683-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/c/f/e/cfecd372-0d5d-4da6-95cc-f9d114273a33/Windows2000-KB920683-x86-NOR.EXE|updates/win2ksp4/windows2000-kb920683-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/b/8/7/b87bc60a-f414-44fd-b956-de2a59019c6a/Windows2000-KB920683-x86-PLK.EXE|updates/win2ksp4/windows2000-kb920683-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/6/9/4/69453e8d-5fb6-4b72-8786-36feb47de5c0/Windows2000-KB920683-x86-PTB.EXE|updates/win2ksp4/windows2000-kb920683-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/5/2/5/52520ff4-35cd-410c-9b4e-3ed2c18cd149/Windows2000-KB920683-x86-PTG.EXE|updates/win2ksp4/windows2000-kb920683-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/2/3/d/23dd1934-3bc3-4ebd-9ba6-4df4e2dad5a6/Windows2000-KB920683-x86-RUS.EXE|updates/win2ksp4/windows2000-kb920683-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/d/a/2/da27a49e-af14-4ae6-80b7-31096b747f49/Windows2000-KB920683-x86-SVE.EXE|updates/win2ksp4/windows2000-kb920683-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/2/6/b/26b817d7-f006-494f-8710-1b20aa560f60/Windows2000-KB920683-x86-TRK.EXE|updates/win2ksp4/windows2000-kb920683-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB920683-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB921883)
:: Microsoft Security Bulletin MS06-040
:: "Vulnerability in Server Service Could Allow Remote Code Execution (921883)"
:: <http://www.microsoft.com/technet/security/bulletin/ms06-040.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=3b61153d-359f-4441-a448-24062cb2387c>
:: URL|ARA|http://download.microsoft.com/download/a/e/d/aed0b84d-058f-4fbe-8171-dc7730bb6f8b/Windows2000-KB921883-x86-ARA.EXE|updates/win2ksp4/windows2000-kb921883-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/5/c/5/5c5c6159-f2a8-4441-8c2c-065c366e8567/Windows2000-KB921883-x86-CSY.EXE|updates/win2ksp4/windows2000-kb921883-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/1/b/1/1b1e5571-6ae9-44b0-ace9-eb0eb1523c95/Windows2000-KB921883-x86-DAN.EXE|updates/win2ksp4/windows2000-kb921883-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/6/b/c/6bcc6ffc-40c9-4e63-81ca-4fc734137b42/Windows2000-KB921883-x86-DEU.EXE|updates/win2ksp4/windows2000-kb921883-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/3/5/9/35923f17-fb6f-4946-b413-9d3dd2259b7a/Windows2000-KB921883-x86-ELL.EXE|updates/win2ksp4/windows2000-kb921883-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/9/0/b/90b8dbba-09c1-4b27-b0c4-0cc13706823a/Windows2000-KB921883-x86-ENU.EXE|updates/win2ksp4/windows2000-kb921883-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/b/2/f/b2f1a836-fad8-4c66-be96-003a3bb18a77/Windows2000-KB921883-x86-ESN.EXE|updates/win2ksp4/windows2000-kb921883-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/b/8/c/b8c161dc-3a57-4dc1-a86f-7ee71e4f37d1/Windows2000-KB921883-x86-FIN.EXE|updates/win2ksp4/windows2000-kb921883-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/d/c/d/dcd721b7-aed9-482f-94bb-0a21e388134e/Windows2000-KB921883-x86-FRA.EXE|updates/win2ksp4/windows2000-kb921883-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/d/5/b/d5b16030-85a6-4eff-8d5e-1d3e204a1162/Windows2000-KB921883-x86-HEB.EXE|updates/win2ksp4/windows2000-kb921883-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/0/8/8/0881b1d9-040f-4299-9181-5d530c61cd92/Windows2000-KB921883-x86-HUN.EXE|updates/win2ksp4/windows2000-kb921883-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/7/d/2/7d2fe0c5-bb97-487c-97b9-d8322a9f8b69/Windows2000-KB921883-x86-ITA.EXE|updates/win2ksp4/windows2000-kb921883-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/7/d/f/7df0d800-ce52-4653-9540-d6ae02b2e7c7/Windows2000-KB921883-x86-JPN.EXE|updates/win2ksp4/windows2000-kb921883-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/6/a/6/6a61bb3d-c4cc-4c23-8402-44c3b0c22483/Windows2000-KB921883-x86-KOR.EXE|updates/win2ksp4/windows2000-kb921883-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/5/4/2/542ae05e-f5cf-474c-bef5-ba9212429002/Windows2000-KB921883-x86-NLD.EXE|updates/win2ksp4/windows2000-kb921883-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/6/7/5/67558728-1260-4c97-958a-7670e975c46f/Windows2000-KB921883-x86-NOR.EXE|updates/win2ksp4/windows2000-kb921883-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/6/9/8/698ea881-6f82-482a-8313-e28db69a04d6/Windows2000-KB921883-x86-PLK.EXE|updates/win2ksp4/windows2000-kb921883-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/b/1/f/b1f974cf-d0b8-4875-b953-9c4423e62841/Windows2000-KB921883-x86-PTB.EXE|updates/win2ksp4/windows2000-kb921883-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/2/c/6/2c60c43f-3c70-49c9-8bd9-37929c007ff7/Windows2000-KB921883-x86-PTG.EXE|updates/win2ksp4/windows2000-kb921883-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/9/f/0/9f06d3f3-87d0-445d-8a41-d2ffef9a40ba/Windows2000-KB921883-x86-RUS.EXE|updates/win2ksp4/windows2000-kb921883-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/6/e/b/6eb6de44-ac38-4799-aa6b-a14d84de3f33/Windows2000-KB921883-x86-SVE.EXE|updates/win2ksp4/windows2000-kb921883-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/2/b/2/2b209479-320f-472c-80d6-5b77706f75b8/Windows2000-KB921883-x86-TRK.EXE|updates/win2ksp4/windows2000-kb921883-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB921883-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB914388)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=7a04fae4-6914-4ffa-b0ec-61b912d47873>
:: <http://www.microsoft.com/technet/security/bulletin/MS06-036.mspx>
:: URL|ARA|http://download.microsoft.com/download/e/3/c/e3c8501c-897c-4922-93bf-3c17c5be3838/Windows2000-KB914388-x86-ARA.EXE|updates/win2ksp4/windows2000-kb914388-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/9/a/3/9a368cf1-5bd4-4bc3-b356-92a84fe2ea96/Windows2000-KB914388-x86-CSY.EXE|updates/win2ksp4/windows2000-kb914388-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/4/e/a/4eaff1ac-aced-4db1-b02f-764859595395/Windows2000-KB914388-x86-DAN.EXE|updates/win2ksp4/windows2000-kb914388-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/8/f/3/8f3eb2f7-76c6-4d82-a337-5337838c971d/Windows2000-KB914388-x86-DEU.EXE|updates/win2ksp4/windows2000-kb914388-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/9/1/5/915338dd-5b8c-49cc-8978-c77f3eb5082f/Windows2000-KB914388-x86-ELL.EXE|updates/win2ksp4/windows2000-kb914388-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/c/5/c/c5c7e8a7-9ad1-4cb8-9fbf-6eb96af1c390/Windows2000-KB914388-x86-ENU.EXE|updates/win2ksp4/windows2000-kb914388-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/2/5/e/25e38fb9-ecdf-4e2e-b2d5-a233edfe3bd8/Windows2000-KB914388-x86-ESN.EXE|updates/win2ksp4/windows2000-kb914388-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/a/3/b/a3bc6f4f-c629-46dd-b878-3451f1c166db/Windows2000-KB914388-x86-FIN.EXE|updates/win2ksp4/windows2000-kb914388-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/b/4/5/b457815f-d827-4642-b170-a305cb3e9829/Windows2000-KB914388-x86-FRA.EXE|updates/win2ksp4/windows2000-kb914388-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/f/9/4/f94211b0-10a9-4e18-8641-b5866f1045db/Windows2000-KB914388-x86-HEB.EXE|updates/win2ksp4/windows2000-kb914388-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/a/c/3/ac3b8751-11c2-467e-a31f-2f2b615ffc8e/Windows2000-KB914388-x86-HUN.EXE|updates/win2ksp4/windows2000-kb914388-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/4/d/5/4d560356-4535-43a2-bf79-a5f32762cb46/Windows2000-KB914388-x86-ITA.EXE|updates/win2ksp4/windows2000-kb914388-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/0/4/8/0488afb7-0d36-4b24-bf90-debb1ed6539f/Windows2000-KB914388-x86-JPN.EXE|updates/win2ksp4/windows2000-kb914388-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/3/d/5/3d5bec79-8a48-403f-a743-ac068dfc12b5/Windows2000-KB914388-x86-KOR.EXE|updates/win2ksp4/windows2000-kb914388-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/0/6/c/06ccbb9d-bd6e-4e96-afae-33a73bc3910d/Windows2000-KB914388-x86-NLD.EXE|updates/win2ksp4/windows2000-kb914388-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/a/1/2/a12e5889-10cb-49d0-9fc2-769d9f4edd5e/Windows2000-KB914388-x86-NOR.EXE|updates/win2ksp4/windows2000-kb914388-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/9/6/0/960d4e2c-4879-4cda-aefe-c8048de2dd58/Windows2000-KB914388-x86-PLK.EXE|updates/win2ksp4/windows2000-kb914388-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/3/f/2/3f25fc04-62d0-4ee4-82f4-4f8629cb5291/Windows2000-KB914388-x86-PTB.EXE|updates/win2ksp4/windows2000-kb914388-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/a/4/3/a43f83d3-ba77-455a-89ca-1c1fde6aef8d/Windows2000-KB914388-x86-PTG.EXE|updates/win2ksp4/windows2000-kb914388-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/8/1/c/81cf1100-0528-47a0-bef3-f77e32fefc09/Windows2000-KB914388-x86-RUS.EXE|updates/win2ksp4/windows2000-kb914388-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/2/f/c/2fc34a14-97fb-44c1-a3aa-4da99531f967/Windows2000-KB914388-x86-SVE.EXE|updates/win2ksp4/windows2000-kb914388-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/e/7/7/e778718c-cacf-491b-96ff-ca9c00efe0e5/Windows2000-KB914388-x86-TRK.EXE|updates/win2ksp4/windows2000-kb914388-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB914388-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB917159)
:: <http://www.microsoft.com/technet/security/bulletin/MS06-035.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=b207020d-90f7-4c41-8304-06af0ded6467>
:: URL|ARA|http://download.microsoft.com/download/7/3/6/736399b3-cb0d-4274-b9d1-09c36c3b6af3/Windows2000-KB917159-x86-ARA.EXE|updates/win2ksp4/windows2000-kb917159-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/e/a/b/eab7b5e7-beb7-432b-95b0-7e36dcc4ebde/Windows2000-KB917159-x86-CSY.EXE|updates/win2ksp4/windows2000-kb917159-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/b/d/4/bd4456a7-52d3-44dc-a7b5-94d1dc1c24c1/Windows2000-KB917159-x86-DAN.EXE|updates/win2ksp4/windows2000-kb917159-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/f/a/0/fa018bac-fa15-4588-a6ef-34d5e931bce0/Windows2000-KB917159-x86-DEU.EXE|updates/win2ksp4/windows2000-kb917159-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/a/e/f/aeff7d42-5f39-4418-9eaa-42011ad0f470/Windows2000-KB917159-x86-ELL.EXE|updates/win2ksp4/windows2000-kb917159-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/f/3/e/f3eb8641-34cf-4ac6-b603-89c13c2472bc/Windows2000-KB917159-x86-ENU.EXE|updates/win2ksp4/windows2000-kb917159-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/5/0/b/50b3c5d5-586e-4f88-8b80-a78ae66f18c6/Windows2000-KB917159-x86-ESN.EXE|updates/win2ksp4/windows2000-kb917159-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/9/0/3/903ed073-5486-4dce-bccf-97f8d0959c8a/Windows2000-KB917159-x86-FIN.EXE|updates/win2ksp4/windows2000-kb917159-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/5/f/d/5fd3458d-21f9-4f22-a713-647d38ea1e92/Windows2000-KB917159-x86-FRA.EXE|updates/win2ksp4/windows2000-kb917159-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/c/a/8/ca89584c-e452-4ae4-b784-4cc45f9a8685/Windows2000-KB917159-x86-HEB.EXE|updates/win2ksp4/windows2000-kb917159-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/8/e/4/8e4b465e-abef-41f3-ad43-af9f09cf3221/Windows2000-KB917159-x86-HUN.EXE|updates/win2ksp4/windows2000-kb917159-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/c/2/b/c2b6eece-557b-407e-a4f8-8f987243b738/Windows2000-KB917159-x86-ITA.EXE|updates/win2ksp4/windows2000-kb917159-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/e/3/0/e30295cf-c9c1-454a-b169-eebbe4704903/Windows2000-KB917159-x86-JPN.EXE|updates/win2ksp4/windows2000-kb917159-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/d/1/7/d17ece3c-9e03-4038-8242-1e85b9c78457/Windows2000-KB917159-x86-KOR.EXE|updates/win2ksp4/windows2000-kb917159-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/3/7/7/3776a76b-8ea0-46ca-abee-166630475d04/Windows2000-KB917159-x86-NLD.EXE|updates/win2ksp4/windows2000-kb917159-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/2/7/a/27ad9396-f6e7-42c4-82eb-15fa17117812/Windows2000-KB917159-x86-NOR.EXE|updates/win2ksp4/windows2000-kb917159-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/9/5/f/95ff6969-5817-4901-95ce-5d567a40c0b5/Windows2000-KB917159-x86-PLK.EXE|updates/win2ksp4/windows2000-kb917159-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/c/1/e/c1e42468-d58a-46a1-9af7-510f4df23e1b/Windows2000-KB917159-x86-PTB.EXE|updates/win2ksp4/windows2000-kb917159-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/f/9/3/f9374f8c-c02f-4101-a679-503542d34b18/Windows2000-KB917159-x86-PTG.EXE|updates/win2ksp4/windows2000-kb917159-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/e/9/1/e918ff3d-0f5b-416d-895b-f0a7875f98d6/Windows2000-KB917159-x86-RUS.EXE|updates/win2ksp4/windows2000-kb917159-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/c/d/3/cd3b0af0-0392-425d-8592-a6532553b965/Windows2000-KB917159-x86-SVE.EXE|updates/win2ksp4/windows2000-kb917159-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/3/0/a/30a08a7b-81d7-4fcd-b5a4-3bcbda0bb5ae/Windows2000-KB917159-x86-TRK.EXE|updates/win2ksp4/windows2000-kb917159-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB917159-x86-%WINLANG%.EXE /passive /n /norestart"

:: JScript 5.6 Security Update for Windows 2000 (KB917344)
:: <http://www.microsoft.com/technet/security/Bulletin/MS06-023.mspx>
:: URL|ARA|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-ara.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-ara.exe
:: URL|CHS|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-chs.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-chs.exe
:: URL|CHT|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-cht.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-cht.exe
:: URL|CSY|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-csy.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-dan.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-deu.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-ell.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-enu.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-esn.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-fin.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-fra.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-heb.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-hun.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-ita.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-jpn.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-kor.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-nld.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-nor.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-plk.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-ptb.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-ptg.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-rus.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-rus.exe
:: URL|SKY|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-sky.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-sky.exe
:: URL|SLV|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-slv.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-slv.exe
:: URL|SVE|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-sve.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/b/c/3/bc3a0c36-fada-497d-a3de-8b0139766f3b/Windows2000-KB917344-56-x86-trk.Exe|updates/win2ksp4/windows2000-kb917344-56-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\windows2000-kb917344-56-x86-%WINLANG%.EXE /q /r:n"

:: Cumulative Security Update for Outlook Express 6 Service Pack 1 (KB911567)
:: Microsoft Security Bulletin MS06-016
:: <http://www.microsoft.com/technet/security/bulletin/MS06-016.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=CDA93501-99CB-4F28-BB73-6438CAD081DB>
:: URL|ARA|http://download.microsoft.com/download/d/f/a/dfa00f80-1750-493c-8a23-ed90f9e729d7/OE6.0sp1-KB911567-Windows-2000-XP-x86-ARA.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/8/1/3/8135877c-092e-456e-b8e4-20e574066113/OE6.0sp1-KB911567-Windows-2000-XP-x86-CSY.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/7/8/2/782d38d3-d441-4bce-845f-01caba4f729c/OE6.0sp1-KB911567-Windows-2000-XP-x86-DAN.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/5/e/3/5e3b6d68-d33e-4af4-868f-e9f5c956cc7b/OE6.0sp1-KB911567-Windows-2000-XP-x86-DEU.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/2/2/5/22573ab4-229d-4006-9278-7a9287810c4e/OE6.0sp1-KB911567-Windows-2000-XP-x86-ELL.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/0/a/7/0a72dc35-d6bd-43af-8388-ea70dba366fa/OE6.0sp1-KB911567-Windows-2000-XP-x86-ENU.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/e/d/4/ed4c2d6c-09af-4913-9ad9-eae06ed280a8/OE6.0sp1-KB911567-Windows-2000-XP-x86-ESN.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/6/a/e/6aedfa35-2cd8-455a-aaf1-4a9caf05b08c/OE6.0sp1-KB911567-Windows-2000-XP-x86-FIN.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/a/f/8/af8d92e9-f7fb-4c97-8dd1-7ceb1a197753/OE6.0sp1-KB911567-Windows-2000-XP-x86-FRA.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/1/d/9/1d9c5f89-8bd2-4f06-9442-d7e52a475917/OE6.0sp1-KB911567-Windows-2000-XP-x86-HEB.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/1/f/d/1fd894d1-d76c-4bb3-b9da-530956cc7c84/OE6.0sp1-KB911567-Windows-2000-XP-x86-HUN.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/3/0/d/30de5550-47a3-4aff-8f49-fc8207bbd0a5/OE6.0sp1-KB911567-Windows-2000-XP-x86-ITA.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/c/6/0/c602ed77-c254-4493-b6f5-11b79c5b4029/OE6.0sp1-KB911567-Windows-2000-XP-x86-JPN.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/3/a/5/3a5ba7d2-f214-45a4-9901-73a3b11b4c85/OE6.0sp1-KB911567-Windows-2000-XP-x86-KOR.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/b/7/f/b7fd7d5d-67c4-4971-b640-6cdb477f3292/OE6.0sp1-KB911567-Windows-2000-XP-x86-NLD.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/9/b/b/9bb2c308-1087-47c8-9530-97c9cb9f1ee4/OE6.0sp1-KB911567-Windows-2000-XP-x86-NOR.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/9/0/8/90889df5-f34d-4903-8bd8-9fc45c885476/OE6.0sp1-KB911567-Windows-2000-XP-x86-PLK.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/a/8/b/a8bff90b-571d-4793-afeb-c019753ea651/OE6.0sp1-KB911567-Windows-2000-XP-x86-PTB.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/1/8/b/18b3b5d4-7eff-43fc-aa0c-6ddfd946f410/OE6.0sp1-KB911567-Windows-2000-XP-x86-PTG.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/5/9/d/59dc904b-ad96-43dd-9c64-7e367a6bf45d/OE6.0sp1-KB911567-Windows-2000-XP-x86-RUS.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/f/d/d/fdd8f72e-44db-445b-a3c1-4a33aab66f5b/OE6.0sp1-KB911567-Windows-2000-XP-x86-SVE.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/7/2/8/7283dbde-9511-445a-a65c-ad66cab273a0/OE6.0sp1-KB911567-Windows-2000-XP-x86-TRK.exe|updates/win2ksp4/oe6.0sp1-kb911567-windows-2000-xp-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\OE6.0sp1-KB911567-Windows-2000-XP-x86-%WINLANG%.exe /passive /n /norestart"

:: Security Update for Windows 2000 (KB908531)
:: Microsoft Security Bulletin MS06-015
:: <http://www.microsoft.com/technet/security/bulletin/MS06-015.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=AE28BC65-3A5E-4497-AD05-2CDE8E7B5E95>
:: URL|ARA|http://download.microsoft.com/download/2/3/7/237a2cce-ffa7-439c-8f89-82526adee41b/Windows2000-KB908531-v2-x86-ARA.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/a/e/c/aecb1d40-903a-4639-a39c-9804da9fe885/Windows2000-KB908531-v2-x86-CSY.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/f/b/0/fb02fade-e697-4e47-a19b-067888daa5ae/Windows2000-KB908531-v2-x86-DAN.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/b/6/c/b6cff0dc-85d4-489c-a54b-c449a9e727be/Windows2000-KB908531-v2-x86-DEU.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/e/2/2/e22615f2-1994-4ac2-9f1c-ab3fb9d661a2/Windows2000-KB908531-v2-x86-ELL.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/7/f/4/7f46246e-f633-42d9-8f7b-aa5536f1bcd5/Windows2000-KB908531-v2-x86-ENU.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/0/c/4/0c4de2a9-bf80-4a92-9491-31c8a8066c81/Windows2000-KB908531-v2-x86-ESN.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/2/2/0/22019f7b-7910-4692-86af-44ec14e71f0e/Windows2000-KB908531-v2-x86-FIN.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/c/b/c/cbc941a6-1870-4ad2-9060-2e313c8205eb/Windows2000-KB908531-v2-x86-FRA.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/1/d/4/1d45c3b7-f9e2-4e5b-8075-a1e8d0ce9b39/Windows2000-KB908531-v2-x86-HEB.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/d/3/3/d332a6c1-e543-454b-aca7-2183c1c09fbb/Windows2000-KB908531-v2-x86-HUN.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/c/d/e/cdefdcc2-ad7e-4e81-9fe1-b4afe74da492/Windows2000-KB908531-v2-x86-ITA.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/9/7/c/97ca56b8-231c-407f-a68a-02e01636f376/Windows2000-KB908531-v2-x86-JPN.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/8/3/1/831c2b0d-382a-4a36-a383-afcdb9f85f07/Windows2000-KB908531-v2-x86-KOR.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/b/9/f/b9fe21a9-681d-45e3-818a-860852d1d4ec/Windows2000-KB908531-v2-x86-NLD.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/4/a/e/4aeab13d-a76b-4862-abbe-29c406d156a9/Windows2000-KB908531-v2-x86-NOR.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/a/4/8/a486ecf5-384d-4168-8095-3264fb025b76/Windows2000-KB908531-v2-x86-PLK.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/c/b/3/cb3f75ce-5387-4754-be5a-df7fcccb578d/Windows2000-KB908531-v2-x86-PTB.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/8/4/8/848d1845-249d-490a-87c3-4877e5d73371/Windows2000-KB908531-v2-x86-PTG.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/0/0/8/00878a92-6886-43c9-9bbc-1b996511d018/Windows2000-KB908531-v2-x86-RUS.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/3/2/c/32c083f8-5889-47ce-a3e0-6c6942b2c3b4/Windows2000-KB908531-v2-x86-SVE.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/c/8/0/c80a137c-96a5-463d-88ec-0f1951508861/Windows2000-KB908531-v2-x86-TRK.EXE|updates/win2ksp4/windows2000-kb908531-v2-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB908531-v2-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Microsoft Data Access Components 2.8 Service Pack 1 (KB911562)
:: Microsoft Security Bulletin MS06-014
:: <http://www.microsoft.com/technet/security/bulletin/MS06-014.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=7358DA31-959C-4E3E-8115-51DC6D441365>
:: URL|ARA|http://download.microsoft.com/download/a/1/f/a1fbff96-c57e-4b58-bf13-868bfbaff2f8/MDAC28-KB911562-x86-ARA.exe|updates/win2ksp4/mdac28-kb911562-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/a/c/3/ac37cd3c-ee95-40f1-96d7-d07a9f70d030/MDAC28-KB911562-x86-CSY.exe|updates/win2ksp4/mdac28-kb911562-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/e/c/c/ecca37bd-7770-4f9f-a3f2-02a1bf4fa871/MDAC28-KB911562-x86-DAN.exe|updates/win2ksp4/mdac28-kb911562-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/2/d/a/2da0df33-6c2e-4c8a-9e08-0e516350b47a/MDAC28-KB911562-x86-DEU.exe|updates/win2ksp4/mdac28-kb911562-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/5/5/f/55ff2210-caf7-40f3-9b04-994c3cd3f8c7/MDAC28-KB911562-x86-ELL.exe|updates/win2ksp4/mdac28-kb911562-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/6/5/e/65e1d31d-2105-48b9-94ab-fe89dcb28ff8/MDAC28-KB911562-x86-ENU.exe|updates/win2ksp4/mdac28-kb911562-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/a/1/a/a1a83380-ad43-4ca0-8234-9a844a0bf837/MDAC28-KB911562-x86-ESN.exe|updates/win2ksp4/mdac28-kb911562-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/5/9/0/5904bb4b-71c5-44c2-9391-733b00ca064c/MDAC28-KB911562-x86-FIN.exe|updates/win2ksp4/mdac28-kb911562-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/a/a/f/aafe3e76-7069-4bfb-bd0a-d35dce959d01/MDAC28-KB911562-x86-FRA.exe|updates/win2ksp4/mdac28-kb911562-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/4/6/4/46484d8c-fcbf-4ad5-bacd-5c0b84f883f6/MDAC28-KB911562-x86-HEB.exe|updates/win2ksp4/mdac28-kb911562-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/7/3/9/739f9817-8d0e-4afe-9061-23d359ea88ea/MDAC28-KB911562-x86-HUN.exe|updates/win2ksp4/mdac28-kb911562-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/2/1/9/219e508c-a38a-447b-bb37-b6c456207c7a/MDAC28-KB911562-x86-ITA.exe|updates/win2ksp4/mdac28-kb911562-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/2/9/9/299b7123-b503-4d26-8c55-3017e8960021/MDAC28-KB911562-x86-JPN.exe|updates/win2ksp4/mdac28-kb911562-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/0/2/4/02430034-8362-479d-87fe-bdfca23fc5eb/MDAC28-KB911562-x86-KOR.exe|updates/win2ksp4/mdac28-kb911562-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/4/c/f/4cf144e3-79f8-48b8-acd1-25d890f08fa2/MDAC28-KB911562-x86-NLD.exe|updates/win2ksp4/mdac28-kb911562-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/e/d/e/ede4cc43-f91c-46a1-9808-9dc8a7c3249b/MDAC28-KB911562-x86-NOR.exe|updates/win2ksp4/mdac28-kb911562-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/7/e/f/7ef4648b-bf1a-49fa-8f14-3305a66f6daf/MDAC28-KB911562-x86-PLK.exe|updates/win2ksp4/mdac28-kb911562-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/2/a/d/2ad2ad33-d30b-490f-af80-d2ffa30adb30/MDAC28-KB911562-x86-PTB.exe|updates/win2ksp4/mdac28-kb911562-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/d/9/0/d902857e-5ad1-4a18-a0f6-08879432d547/MDAC28-KB911562-x86-PTG.exe|updates/win2ksp4/mdac28-kb911562-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/5/7/d/57d66419-80a6-47ab-8ee9-9b8a987063e3/MDAC28-KB911562-x86-RUS.exe|updates/win2ksp4/mdac28-kb911562-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/8/e/d/8ed1f7fa-abf7-4fad-a552-1b093bddbb4c/MDAC28-KB911562-x86-SVE.exe|updates/win2ksp4/mdac28-kb911562-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/9/4/3/943250e2-8467-49eb-a865-da3af1154ef4/MDAC28-KB911562-x86-TRK.exe|updates/win2ksp4/mdac28-kb911562-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\MDAC28-KB911562-x86-%WINLANG%.exe /passive /n /norestart"

:: Security Update for Windows 2000 (KB911280)
:: Microsoft Security Bulletin MS06-025
:: <http://www.microsoft.com/technet/security/bulletin/MS06-025.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=c1af96b2-2807-444b-82df-b6b61ec63715>
:: URL|ARA|http://download.microsoft.com/download/1/d/4/1d44757a-8b5a-4e2c-a6d3-e5fb86d1c118/Windows2000-KB911280-v2-x86-ARA.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/0/9/f/09fd09bb-6b09-468e-9779-0e8bca95a558/Windows2000-KB911280-v2-x86-CSY.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/b/0/e/b0e32f89-3a02-4176-b24d-59f40306de7e/Windows2000-KB911280-v2-x86-DAN.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/8/7/9/879c33f5-a63e-4304-828c-93a0a32cc0d4/Windows2000-KB911280-v2-x86-DEU.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/9/c/e/9ce51c98-f9ae-4c14-8046-751f397ceef8/Windows2000-KB911280-v2-x86-ELL.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/4/1/0/410acd05-29da-4755-9c93-24fb255abde6/Windows2000-KB911280-v2-x86-ENU.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/f/6/5/f65a974c-a453-41a9-bfa7-b354f9a269bd/Windows2000-KB911280-v2-x86-ESN.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/2/5/7/257f7738-c94c-4fb1-a867-f96d3dfcabd1/Windows2000-KB911280-v2-x86-FIN.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/9/9/c/99c1c944-630c-4490-9d26-0ee72841e7f1/Windows2000-KB911280-v2-x86-FRA.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/a/7/f/a7f50313-a754-4bb9-9376-c5b430cce6b2/Windows2000-KB911280-v2-x86-HEB.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/b/9/4/b94472af-eb81-486e-a75f-4a4534c5e9b4/Windows2000-KB911280-v2-x86-HUN.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/c/e/9/ce9117fd-b504-498a-92e4-29950d87f835/Windows2000-KB911280-v2-x86-ITA.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/d/c/b/dcb23ba2-526c-4e9e-9a5f-8f2694d2cc2b/Windows2000-KB911280-v2-x86-JPN.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/6/7/5/67594634-c00d-4ce1-ae98-970c90f3099b/Windows2000-KB911280-v2-x86-KOR.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/b/7/5/b7557eb5-c679-4c95-8223-2e1bf154fd58/Windows2000-KB911280-v2-x86-NLD.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/d/4/7/d47693db-c21f-46bf-885b-c4b0af06024a/Windows2000-KB911280-v2-x86-NOR.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/e/0/9/e09e0cb1-6396-4817-8894-8576ca9f61fb/Windows2000-KB911280-v2-x86-PLK.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/7/2/9/72927d71-aba5-4c11-8269-f0385cd0ea6a/Windows2000-KB911280-v2-x86-PTB.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/a/a/1/aa1e64d3-ff45-4163-88be-71e2ada5dfa1/Windows2000-KB911280-v2-x86-PTG.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/7/b/e/7bed96c1-218f-4a3e-9bc1-c9d0948ccdae/Windows2000-KB911280-v2-x86-RUS.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/b/f/c/bfccdc3c-fe87-4623-91da-20a990c164e1/Windows2000-KB911280-v2-x86-SVE.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/2/5/f/25f48596-4143-45c9-a25c-de5295e52a18/Windows2000-KB911280-v2-x86-TRK.EXE|updates/win2ksp4/windows2000-kb911280-v2-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB911280-v2-x86-%WINLANG%.EXE /passive /n /norestart"

:: Vulnerability in ART Image Rendering Could Allow Remote Code Execution in Internet Explorer 6 Service Pack 1 (KB918439)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=F6328F82-457E-44CB-95FB-2DB0E8C9EE3C>
:: URL|ARA|http://download.microsoft.com/download/2/6/d/26dfb52b-6732-48e3-ac57-dd52be8c2154/IE6.0sp1-KB918439-Windows-2000-XP-x86-ARA.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/f/3/5/f3590d75-eb90-4847-a95a-e358f0b6946a/IE6.0sp1-KB918439-Windows-2000-XP-x86-CSY.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/1/9/4/1942f5fe-e878-42be-bbde-fb921df69506/IE6.0sp1-KB918439-Windows-2000-XP-x86-DAN.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/b/0/0/b0076b9c-ab58-44bc-9119-cc27d2d2f3d0/IE6.0sp1-KB918439-Windows-2000-XP-x86-DEU.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/f/a/e/fae87240-ae38-4e4e-a7de-66e450372434/IE6.0sp1-KB918439-Windows-2000-XP-x86-ELL.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/e/c/f/ecf2d7ac-c658-4d7c-a7c0-a62152774664/IE6.0sp1-KB918439-Windows-2000-XP-x86-ENU.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/5/7/5/575e7b92-94a3-4018-98e1-e59ebba8b605/IE6.0sp1-KB918439-Windows-2000-XP-x86-ESN.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/2/c/2/2c285ded-b876-48bf-b8c6-db9185a78a7d/IE6.0sp1-KB918439-Windows-2000-XP-x86-FIN.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/2/2/e/22e265c4-888e-400b-a205-11ad1fcda752/IE6.0sp1-KB918439-Windows-2000-XP-x86-FRA.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/e/b/5/eb54a02c-3e0b-4e3b-b127-bc36e5db4468/IE6.0sp1-KB918439-Windows-2000-XP-x86-HEB.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/b/c/f/bcf56c19-5a75-46da-97ec-141255ed42bd/IE6.0sp1-KB918439-Windows-2000-XP-x86-HUN.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/9/b/3/9b38c3dd-2e7d-477e-b795-bf6232bc8bde/IE6.0sp1-KB918439-Windows-2000-XP-x86-ITA.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/6/3/9/639c9632-7917-4ddd-9519-e96d79942bfd/IE6.0sp1-KB918439-Windows-2000-XP-x86-JPN.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/c/4/e/c4e95f86-6b3c-4b99-ab9b-bfbe98d8c35f/IE6.0sp1-KB918439-Windows-2000-XP-x86-KOR.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/5/6/e/56efc054-34d0-449a-9a37-5e97a1b80fa4/IE6.0sp1-KB918439-Windows-2000-XP-x86-NLD.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/3/1/3/313a73d9-d2ad-4516-8c12-3079551b769b/IE6.0sp1-KB918439-Windows-2000-XP-x86-NOR.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/1/8/1/18138cdb-bf03-4673-a57f-9a965c020ab9/IE6.0sp1-KB918439-Windows-2000-XP-x86-PLK.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/1/9/b/19bc2c5c-2acd-40ce-8c22-e2b5b5ffcea9/IE6.0sp1-KB918439-Windows-2000-XP-x86-PTB.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/a/f/0/af0b95f8-0da4-41ea-ace6-e20fe93127d4/IE6.0sp1-KB918439-Windows-2000-XP-x86-PTG.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/1/8/c/18c04bd5-b06a-4f12-b0b6-890a3f754dc2/IE6.0sp1-KB918439-Windows-2000-XP-x86-RUS.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/1/f/2/1f2bb7de-d837-47a2-b690-bb7edccc07a4/IE6.0sp1-KB918439-Windows-2000-XP-x86-SVE.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/b/f/f/bffc18c4-1258-4f3e-bf4b-0502361a7e28/IE6.0sp1-KB918439-Windows-2000-XP-x86-TRK.exe|updates/win2ksp4/ie6.0sp1-kb918439-windows-2000-xp-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\IE6.0sp1-KB918439-Windows-2000-XP-x86-%WINLANG%.exe /passive /n /norestart"

:: Security Update for Windows 2000 (KB913580)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=8B98F380-0E5C-4B80-9710-95E1B35AFD83>
:: URL|ARA|http://download.microsoft.com/download/f/8/e/f8ee53ac-d469-4c99-b7fa-dde8a13e3a0f/Windows2000-KB913580-x86-ARA.EXE|updates/win2ksp4/windows2000-kb913580-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/8/f/c/8fce099c-0284-4c46-a2b9-05b542eb8683/Windows2000-KB913580-x86-CSY.EXE|updates/win2ksp4/windows2000-kb913580-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/a/4/4/a447ce52-cd21-4061-8d66-48a5e4f6a0aa/Windows2000-KB913580-x86-DAN.EXE|updates/win2ksp4/windows2000-kb913580-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/c/4/6/c46f9486-dc3a-43bf-bbed-d56fb2aaf63c/Windows2000-KB913580-x86-DEU.EXE|updates/win2ksp4/windows2000-kb913580-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/0/f/d/0fd749d8-3fa9-4937-95aa-fa2516d9015e/Windows2000-KB913580-x86-ELL.EXE|updates/win2ksp4/windows2000-kb913580-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/f/e/3/fe3bbced-6da4-4a8d-b90e-260c2ada9b6b/Windows2000-KB913580-x86-ENU.EXE|updates/win2ksp4/windows2000-kb913580-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/1/8/9/189731fb-2d24-48a4-8473-552513dbc031/Windows2000-KB913580-x86-ESN.EXE|updates/win2ksp4/windows2000-kb913580-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/9/5/a/95aa0212-542e-404a-9652-a1bb31540c25/Windows2000-KB913580-x86-FIN.EXE|updates/win2ksp4/windows2000-kb913580-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/e/e/8/ee8ea2d8-7c13-419a-a380-240c7e442362/Windows2000-KB913580-x86-FRA.EXE|updates/win2ksp4/windows2000-kb913580-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/9/0/f/90fd90d0-ccab-48bb-9daa-501cb1ec55da/Windows2000-KB913580-x86-HEB.EXE|updates/win2ksp4/windows2000-kb913580-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/c/9/0/c90b3b45-f061-4c82-84f7-341af8e47d4e/Windows2000-KB913580-x86-HUN.EXE|updates/win2ksp4/windows2000-kb913580-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/a/b/5/ab5b2152-fc11-4183-ae5e-53bae8d28baf/Windows2000-KB913580-x86-ITA.EXE|updates/win2ksp4/windows2000-kb913580-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/5/4/8/548946e0-9ec2-4b7a-b479-3b23ba9315d5/Windows2000-KB913580-x86-JPN.EXE|updates/win2ksp4/windows2000-kb913580-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/d/d/7/dd797224-7e72-4163-a9cc-f07e7cfb81de/Windows2000-KB913580-x86-KOR.EXE|updates/win2ksp4/windows2000-kb913580-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/0/5/b/05b7279f-9468-4c3e-b46e-a056d2f7bb5e/Windows2000-KB913580-x86-NLD.EXE|updates/win2ksp4/windows2000-kb913580-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/e/2/b/e2b0bdf4-4e52-45f7-965a-fd5ada8ed117/Windows2000-KB913580-x86-NOR.EXE|updates/win2ksp4/windows2000-kb913580-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/5/a/4/5a459158-2a89-43bc-9a17-5359a3ef9d8f/Windows2000-KB913580-x86-PLK.EXE|updates/win2ksp4/windows2000-kb913580-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/7/9/0/79031b81-a3fd-4928-8ea8-608f7c2d1e94/Windows2000-KB913580-x86-PTB.EXE|updates/win2ksp4/windows2000-kb913580-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/c/3/6/c366bebd-c899-4143-8bed-6678028ba7f9/Windows2000-KB913580-x86-PTG.EXE|updates/win2ksp4/windows2000-kb913580-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/5/1/c/51c95631-f8cb-4aff-89e0-e75380c014e2/Windows2000-KB913580-x86-RUS.EXE|updates/win2ksp4/windows2000-kb913580-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/2/a/1/2a199ce2-2400-497d-a397-59842c004b1b/Windows2000-KB913580-x86-SVE.EXE|updates/win2ksp4/windows2000-kb913580-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/c/9/3/c93f9eca-07c8-4c10-99f5-02330855b075/Windows2000-KB913580-x86-TRK.EXE|updates/win2ksp4/windows2000-kb913580-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB913580-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB899588)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=E39A3D96-1C37-47D2-82EF-0AC89905C88F>
:: URL|ARA|http://download.microsoft.com/download/1/b/e/1be135b5-5eb0-4aff-82a5-9bd22d0a10fb/Windows2000-KB899588-x86-ARA.EXE|updates/win2ksp4/windows2000-kb899588-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/3/2/3/323b2616-7d6e-4223-89f5-3f469f1a1199/Windows2000-KB899588-x86-CSY.EXE|updates/win2ksp4/windows2000-kb899588-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/c/7/2/c72a01e6-e69d-48b7-807e-7073069fc84b/Windows2000-KB899588-x86-DAN.EXE|updates/win2ksp4/windows2000-kb899588-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/8/5/6/856b71b7-c110-4534-9ad2-6f6940797cdf/Windows2000-KB899588-x86-DEU.EXE|updates/win2ksp4/windows2000-kb899588-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/a/d/c/adc47d72-18ff-4c6f-aecd-bc8abbd99bec/Windows2000-KB899588-x86-ELL.EXE|updates/win2ksp4/windows2000-kb899588-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/6/6/0/6601085c-5802-4907-ab75-6e0db3c479c0/Windows2000-KB899588-x86-ENU.EXE|updates/win2ksp4/windows2000-kb899588-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/c/8/d/c8d3cf47-30a1-4ac6-b5be-b0856cf1a8a2/Windows2000-KB899588-x86-ESN.EXE|updates/win2ksp4/windows2000-kb899588-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/c/6/9/c69c8846-4733-4e10-a789-1ccc0071b8eb/Windows2000-KB899588-x86-FIN.EXE|updates/win2ksp4/windows2000-kb899588-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/9/9/e/99ec2bd1-46ac-4edd-aa67-c4286fbd18bd/Windows2000-KB899588-x86-FRA.EXE|updates/win2ksp4/windows2000-kb899588-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/5/f/1/5f13aa09-4f9f-447c-9605-c85cd32aa8b5/Windows2000-KB899588-x86-HEB.EXE|updates/win2ksp4/windows2000-kb899588-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/d/7/3/d7312e4e-2b57-416b-a16e-9fe0824804fd/Windows2000-KB899588-x86-HUN.EXE|updates/win2ksp4/windows2000-kb899588-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/d/8/6/d8608a1c-37d0-4b60-9745-0c90687f4c07/Windows2000-KB899588-x86-ITA.EXE|updates/win2ksp4/windows2000-kb899588-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/7/c/2/7c22fb91-9679-4260-a90c-0110ad3dcc0b/Windows2000-KB899588-x86-JPN.EXE|updates/win2ksp4/windows2000-kb899588-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/3/5/8/3582ed8d-43b1-4a53-b532-431737c5338d/Windows2000-KB899588-x86-KOR.EXE|updates/win2ksp4/windows2000-kb899588-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/8/b/b/8bbeb176-a233-4ec1-b6e1-bf73f8e22be8/Windows2000-KB899588-x86-NLD.EXE|updates/win2ksp4/windows2000-kb899588-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/4/6/2/46281a3a-5e12-49d4-8bd1-0d12d82f2221/Windows2000-KB899588-x86-NOR.EXE|updates/win2ksp4/windows2000-kb899588-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/8/f/e/8feff157-039d-40e4-b2f1-7c85bd76e182/Windows2000-KB899588-x86-PLK.EXE|updates/win2ksp4/windows2000-kb899588-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/1/f/6/1f63d7ba-f151-4aa2-bb50-94ebf49b0452/Windows2000-KB899588-x86-PTB.EXE|updates/win2ksp4/windows2000-kb899588-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/0/f/d/0fd5e9fa-90b5-47c3-88b8-bcc9231d2101/Windows2000-KB899588-x86-PTG.EXE|updates/win2ksp4/windows2000-kb899588-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/6/5/8/658974dd-0078-4618-8b1e-c743bb45e67f/Windows2000-KB899588-x86-RUS.EXE|updates/win2ksp4/windows2000-kb899588-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/2/c/5/2c55aa0f-2efa-4837-9ed3-7294f453aeec/Windows2000-KB899588-x86-SVE.EXE|updates/win2ksp4/windows2000-kb899588-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/d/b/e/dbe25fb0-bac6-4613-a79b-be570b5897c7/Windows2000-KB899588-x86-TRK.EXE|updates/win2ksp4/windows2000-kb899588-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB899588-x86-%WINLANG%.EXE /passive /n /norestart"

:: Cumulative Update for Internet Explorer 6 SP1 (KB896688)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=8F638D4A-670D-46C7-A7A1-1D1E3DC9732F>
:: URL|ARA|http://download.microsoft.com/download/d/0/2/d02dbb31-d304-4dd1-adcb-7c33e5f631e1/IE6.0sp1-KB896688-Windows-2000-XP-x86-ARA.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/3/b/7/3b71edf2-3778-453c-ad27-8e7b372031fd/IE6.0sp1-KB896688-Windows-2000-XP-x86-CSY.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/1/4/9/149f66a7-ed3c-411a-a7c8-48be383642ac/IE6.0sp1-KB896688-Windows-2000-XP-x86-DAN.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/4/f/5/4f51a544-71e2-4252-94cf-406f1336dc92/IE6.0sp1-KB896688-Windows-2000-XP-x86-DEU.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/4/b/c/4bcdad22-87a9-4e12-b5ca-5eff684cb41f/IE6.0sp1-KB896688-Windows-2000-XP-x86-ELL.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/8/b/e/8bea72b6-e866-44e5-afcb-a4e331069b3c/IE6.0sp1-KB896688-Windows-2000-XP-x86-ENU.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/c/6/e/c6e5997c-0e0f-4afc-baba-36df7657aa77/IE6.0sp1-KB896688-Windows-2000-XP-x86-ESN.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/6/b/e/6be7303b-d4d2-491e-affe-bfaa9333a50f/IE6.0sp1-KB896688-Windows-2000-XP-x86-FIN.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/5/c/6/5c670967-148d-4ccd-8bf3-9b7e74f55f16/IE6.0sp1-KB896688-Windows-2000-XP-x86-FRA.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/8/f/f/8ffdb88a-a364-4e9f-acbf-a0dfe36962b8/IE6.0sp1-KB896688-Windows-2000-XP-x86-HEB.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/d/0/8/d08424e1-f78b-430b-858c-199f8f3d37b2/IE6.0sp1-KB896688-Windows-2000-XP-x86-HUN.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/1/1/0/1100de35-b734-4fab-9282-01bf1372b40a/IE6.0sp1-KB896688-Windows-2000-XP-x86-ITA.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/1/6/2/162e577a-0ef6-404c-b96b-5cd406062869/IE6.0sp1-KB896688-Windows-2000-XP-x86-JPN.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/f/2/5/f25959d6-2302-42d1-a279-f5bddb6ac674/IE6.0sp1-KB896688-Windows-2000-XP-x86-KOR.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/5/a/f/5af79d4e-013f-41ea-a0a2-5afdcb95b356/IE6.0sp1-KB896688-Windows-2000-XP-x86-NLD.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/8/9/a/89ac188b-1a5b-4664-990d-38e4377ab729/IE6.0sp1-KB896688-Windows-2000-XP-x86-NOR.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/6/3/4/634a5e5b-a064-4cc8-a283-128461552a2d/IE6.0sp1-KB896688-Windows-2000-XP-x86-PLK.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/5/a/e/5aed08b5-057e-41e8-93be-43d766a107af/IE6.0sp1-KB896688-Windows-2000-XP-x86-PTB.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/6/5/3/653b8018-144e-448d-a820-5c094d8a5091/IE6.0sp1-KB896688-Windows-2000-XP-x86-PTG.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/f/e/2/fe2c4fe2-e01b-490d-bd7b-945465420e97/IE6.0sp1-KB896688-Windows-2000-XP-x86-RUS.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/6/b/f/6bf77b7f-33fd-40f0-8bbc-3aa899c1b3ae/IE6.0sp1-KB896688-Windows-2000-XP-x86-SVE.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/8/e/a/8eac8562-644b-43ca-bed5-7fa16a35521f/IE6.0sp1-KB896688-Windows-2000-XP-x86-TRK.exe|updates/ie6sp1/ie6.0sp1-kb896688-windows-2000-xp-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\ie6sp1\IE6.0sp1-KB896688-Windows-2000-XP-x86-%WINLANG%.exe /passive /n /norestart"

:: Security Update for Windows 2000 (KB893756)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=C7417EA1-7AFC-4A55-95DC-E814975B8AE6>
:: URL|ARA|http://download.microsoft.com/download/8/c/4/8c423b86-e667-42d3-9ab2-c68e4bd0629b/Windows2000-KB893756-x86-ARA.EXE|updates/win2ksp4/windows2000-kb893756-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/c/8/b/c8b93f7f-382a-43e3-96d8-a6f6271fff8e/Windows2000-KB893756-x86-CSY.EXE|updates/win2ksp4/windows2000-kb893756-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/7/1/8/718135f3-acea-4d62-96a6-60b908ade39e/Windows2000-KB893756-x86-DAN.EXE|updates/win2ksp4/windows2000-kb893756-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/0/f/f/0ff90c0b-b6da-425b-9e07-56b79f47b0c2/Windows2000-KB893756-x86-DEU.EXE|updates/win2ksp4/windows2000-kb893756-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/9/e/4/9e469d5b-d9db-4c3b-af92-30410cd99ca5/Windows2000-KB893756-x86-ELL.EXE|updates/win2ksp4/windows2000-kb893756-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/d/1/3/d1323977-bdab-4b38-8ab6-ec9d985f726e/Windows2000-KB893756-x86-ENU.EXE|updates/win2ksp4/windows2000-kb893756-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/e/4/5/e45eea31-2cb9-4608-b1b7-2da7afc0fbba/Windows2000-KB893756-x86-ESN.EXE|updates/win2ksp4/windows2000-kb893756-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/c/c/2/cc28d290-562f-4702-8618-529c43d6f415/Windows2000-KB893756-x86-FIN.EXE|updates/win2ksp4/windows2000-kb893756-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/5/e/6/5e60a38f-1cbb-4549-a2b1-df9948d8a6ad/Windows2000-KB893756-x86-FRA.EXE|updates/win2ksp4/windows2000-kb893756-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/e/1/5/e15f55f7-8e6d-4045-9eed-200a97e3264e/Windows2000-KB893756-x86-HEB.EXE|updates/win2ksp4/windows2000-kb893756-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/d/3/a/d3a3940a-6c55-4a71-be2a-862b5b1df655/Windows2000-KB893756-x86-HUN.EXE|updates/win2ksp4/windows2000-kb893756-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/a/c/9/ac9cdec7-2a62-4d73-8967-84b4341488b3/Windows2000-KB893756-x86-ITA.EXE|updates/win2ksp4/windows2000-kb893756-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/4/7/5/475863e7-32fa-4d7e-9bb6-0b6332cce3b4/Windows2000-KB893756-x86-JPN.EXE|updates/win2ksp4/windows2000-kb893756-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/d/3/8/d3892872-9a41-438a-b41b-cd1afd59e30f/Windows2000-KB893756-x86-KOR.EXE|updates/win2ksp4/windows2000-kb893756-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/b/e/1/be1ea365-4daf-40fa-a9ee-7ec95b7212bf/Windows2000-KB893756-x86-NLD.EXE|updates/win2ksp4/windows2000-kb893756-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/c/5/f/c5fcd510-5215-44bb-9d18-71614ceddc4d/Windows2000-KB893756-x86-NOR.EXE|updates/win2ksp4/windows2000-kb893756-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/d/c/6/dc6cc85d-4966-408e-929f-8320d424253d/Windows2000-KB893756-x86-PLK.EXE|updates/win2ksp4/windows2000-kb893756-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/f/4/a/f4acb0e7-afe2-4942-961f-f4f3c07b84e7/Windows2000-KB893756-x86-PTB.EXE|updates/win2ksp4/windows2000-kb893756-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/7/3/e/73efd62f-0291-49d1-95ae-9fbd6accc779/Windows2000-KB893756-x86-PTG.EXE|updates/win2ksp4/windows2000-kb893756-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/f/d/0/fd07ff55-84fe-4064-9c96-9f5e40fa74c2/Windows2000-KB893756-x86-RUS.EXE|updates/win2ksp4/windows2000-kb893756-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/7/6/5/7651592b-6c29-409a-aded-f926820977c4/Windows2000-KB893756-x86-SVE.EXE|updates/win2ksp4/windows2000-kb893756-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/1/c/0/1c01c5e5-f1ab-405b-8d32-1dddf282296f/Windows2000-KB893756-x86-TRK.EXE|updates/win2ksp4/windows2000-kb893756-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB893756-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB899591)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=18255896-8C5D-45C5-8840-C0C6EE1B14BB>
:: URL|ARA|http://download.microsoft.com/download/f/b/a/fba74b4f-ac0a-4495-ab92-b9902ab6a97b/Windows2000-KB899591-x86-ARA.EXE|updates/win2ksp4/windows2000-kb899591-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/c/7/5/c757d66e-7dbc-4b4e-b511-c73a46840a31/Windows2000-KB899591-x86-CSY.EXE|updates/win2ksp4/windows2000-kb899591-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/e/e/3/ee309102-5848-440a-a764-590825f80ef1/Windows2000-KB899591-x86-DAN.EXE|updates/win2ksp4/windows2000-kb899591-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/c/5/2/c5245d45-0ee5-4dc7-a9c3-9df05163346a/Windows2000-KB899591-x86-DEU.EXE|updates/win2ksp4/windows2000-kb899591-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/6/5/6/6562235d-677e-4ed9-a9e5-a69803200490/Windows2000-KB899591-x86-ELL.EXE|updates/win2ksp4/windows2000-kb899591-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/1/b/c/1bc34420-6a31-4b1d-b89b-c6c1dd7070a5/Windows2000-KB899591-x86-ENU.EXE|updates/win2ksp4/windows2000-kb899591-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/e/d/8/ed86ceb0-a60f-41a1-ae04-aa6fd058023b/Windows2000-KB899591-x86-ESN.EXE|updates/win2ksp4/windows2000-kb899591-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/0/7/f/07f8f3f8-6477-44a5-993a-917d0298db25/Windows2000-KB899591-x86-FIN.EXE|updates/win2ksp4/windows2000-kb899591-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/7/b/b/7bb8b0d0-b243-46d3-8239-cf0ebd8824a5/Windows2000-KB899591-x86-FRA.EXE|updates/win2ksp4/windows2000-kb899591-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/3/8/2/3824db4b-9ef4-4acb-8bc0-220548eb3b75/Windows2000-KB899591-x86-HEB.EXE|updates/win2ksp4/windows2000-kb899591-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/f/2/d/f2d6f581-f079-4371-9fbc-1bf627c87eb2/Windows2000-KB899591-x86-HUN.EXE|updates/win2ksp4/windows2000-kb899591-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/0/2/9/029aad33-c144-4d5b-8edb-f0fc3fe19df8/Windows2000-KB899591-x86-ITA.EXE|updates/win2ksp4/windows2000-kb899591-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/3/0/6/3067d4f3-dac4-41ce-adc7-96e418e9c68a/Windows2000-KB899591-x86-JPN.EXE|updates/win2ksp4/windows2000-kb899591-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/6/f/b/6fbb258e-a74a-438d-b9bc-14cfac838ac3/Windows2000-KB899591-x86-KOR.EXE|updates/win2ksp4/windows2000-kb899591-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/c/1/c/c1c9566b-d2cd-423a-93c9-10d0225304d3/Windows2000-KB899591-x86-NLD.EXE|updates/win2ksp4/windows2000-kb899591-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/6/5/1/651422b4-6098-42e6-a880-4716767d9c96/Windows2000-KB899591-x86-NOR.EXE|updates/win2ksp4/windows2000-kb899591-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/f/f/9/ff9a1155-115d-4960-bd11-ba8b60221dc2/Windows2000-KB899591-x86-PLK.EXE|updates/win2ksp4/windows2000-kb899591-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/9/9/5/9954b290-868d-456e-99c6-0493d2d18fef/Windows2000-KB899591-x86-PTB.EXE|updates/win2ksp4/windows2000-kb899591-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/2/0/0/200e1507-1634-4697-a82a-9e05aa34eb7f/Windows2000-KB899591-x86-PTG.EXE|updates/win2ksp4/windows2000-kb899591-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/3/a/f/3af5cdc1-c54e-4e1c-85b3-2b59827dad01/Windows2000-KB899591-x86-RUS.EXE|updates/win2ksp4/windows2000-kb899591-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/c/c/4/cc494d40-cce0-407d-b602-66e757b97c1f/Windows2000-KB899591-x86-SVE.EXE|updates/win2ksp4/windows2000-kb899591-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/2/1/0/21061a77-b45f-4e18-b298-8d6496452e04/Windows2000-KB899591-x86-TRK.EXE|updates/win2ksp4/windows2000-kb899591-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB899591-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB899587)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=4E34CD17-8710-4E22-8620-3B84139C18BB>
:: URL|ARA|http://download.microsoft.com/download/7/a/d/7adb6439-2c72-4d49-a812-bae553339de0/Windows2000-KB899587-x86-ARA.EXE|updates/win2ksp4/windows2000-kb899587-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/3/9/6/3965e0b2-6fdb-4d97-bedf-9f1ee6965c46/Windows2000-KB899587-x86-CSY.EXE|updates/win2ksp4/windows2000-kb899587-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/b/8/0/b80aa56d-0677-46d0-ad6a-f803c87a42f1/Windows2000-KB899587-x86-DAN.EXE|updates/win2ksp4/windows2000-kb899587-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/f/d/0/fd0d29dd-de58-491f-bbdb-90bdf1704b4b/Windows2000-KB899587-x86-DEU.EXE|updates/win2ksp4/windows2000-kb899587-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/f/1/9/f1981d19-9096-4067-8e1c-864dee32edb5/Windows2000-KB899587-x86-ELL.EXE|updates/win2ksp4/windows2000-kb899587-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/c/7/3/c739f44f-b5c1-4fa7-bd85-f8c833f35e74/Windows2000-KB899587-x86-ENU.EXE|updates/win2ksp4/windows2000-kb899587-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/9/0/a/90a1027e-9a51-4519-99d8-cf9ae3d6d314/Windows2000-KB899587-x86-ESN.EXE|updates/win2ksp4/windows2000-kb899587-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/3/3/a/33afa5ca-c960-45ce-b36d-a7ce73bdddeb/Windows2000-KB899587-x86-FIN.EXE|updates/win2ksp4/windows2000-kb899587-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/e/7/4/e74063dc-8b46-4815-bb1d-66eaf73dbf51/Windows2000-KB899587-x86-FRA.EXE|updates/win2ksp4/windows2000-kb899587-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/1/2/d/12dd7964-c006-4ac9-bbdd-82e23047366a/Windows2000-KB899587-x86-HEB.EXE|updates/win2ksp4/windows2000-kb899587-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/9/e/f/9ef9cdc5-1e73-46bd-93d7-989cda2a26cf/Windows2000-KB899587-x86-HUN.EXE|updates/win2ksp4/windows2000-kb899587-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/4/1/b/41ba5644-f904-45e2-b689-f49e22af76d5/Windows2000-KB899587-x86-ITA.EXE|updates/win2ksp4/windows2000-kb899587-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/3/e/f/3efa4f96-c3f0-429d-a9dc-0e66a9cfd8d5/Windows2000-KB899587-x86-JPN.EXE|updates/win2ksp4/windows2000-kb899587-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/b/5/5/b5526bc7-f714-4cbc-9009-4b515789c80f/Windows2000-KB899587-x86-KOR.EXE|updates/win2ksp4/windows2000-kb899587-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/3/e/f/3ef9d53e-d7bd-44bf-ae95-0c2ed92f28fd/Windows2000-KB899587-x86-NLD.EXE|updates/win2ksp4/windows2000-kb899587-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/d/3/d/d3d2a4d2-1617-4e66-afc7-451c81108710/Windows2000-KB899587-x86-NOR.EXE|updates/win2ksp4/windows2000-kb899587-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/1/6/d/16d05358-adf4-49ed-9562-7c036225f0d1/Windows2000-KB899587-x86-PLK.EXE|updates/win2ksp4/windows2000-kb899587-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/b/2/2/b223a80e-b77d-43b3-9831-1c67d763306d/Windows2000-KB899587-x86-PTB.EXE|updates/win2ksp4/windows2000-kb899587-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/9/7/8/978db3fe-5e5c-4546-8de5-1998e7493f22/Windows2000-KB899587-x86-PTG.EXE|updates/win2ksp4/windows2000-kb899587-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/c/d/6/cd6ee6a1-ed08-490e-ac28-0d25cda1ba84/Windows2000-KB899587-x86-RUS.EXE|updates/win2ksp4/windows2000-kb899587-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/e/d/3/ed3bec9e-5a51-4021-92d5-0bc624e4b2b1/Windows2000-KB899587-x86-SVE.EXE|updates/win2ksp4/windows2000-kb899587-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/a/8/4/a84c752f-23a8-423e-88c4-0d6f5f1c49fb/Windows2000-KB899587-x86-TRK.EXE|updates/win2ksp4/windows2000-kb899587-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB899587-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB896423)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=3DD3B530-7F43-4C18-8298-6E8797431A5D>
:: URL|ARA|http://download.microsoft.com/download/4/a/5/4a587d34-fb2e-4c71-a293-39af67747ca2/Windows2000-KB896423-x86-ARA.EXE|updates/win2ksp4/windows2000-kb896423-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/1/a/a/1aa57e39-f1bd-4c3e-815a-2ff1d50fddfa/Windows2000-KB896423-x86-CSY.EXE|updates/win2ksp4/windows2000-kb896423-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/1/c/e/1cecbdd2-90b5-4e1a-89a0-fec34c69944a/Windows2000-KB896423-x86-DAN.EXE|updates/win2ksp4/windows2000-kb896423-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/3/1/0/310d61ae-dc27-44ec-bca7-25384ef3adc1/Windows2000-KB896423-x86-DEU.EXE|updates/win2ksp4/windows2000-kb896423-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/4/e/e/4ee987c3-b5fd-43bb-b313-35b38d415c40/Windows2000-KB896423-x86-ELL.EXE|updates/win2ksp4/windows2000-kb896423-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/4/3/2/43215dcd-b8b3-4c8f-a40f-278789f4eb33/Windows2000-KB896423-x86-ENU.EXE|updates/win2ksp4/windows2000-kb896423-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/e/a/b/eabdfeae-43d0-4b2b-b1ce-09979bc5da6d/Windows2000-KB896423-x86-ESN.EXE|updates/win2ksp4/windows2000-kb896423-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/d/1/5/d1542e62-4562-4f09-8668-0d181d41b08a/Windows2000-KB896423-x86-FIN.EXE|updates/win2ksp4/windows2000-kb896423-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/c/6/9/c69dd217-e4ea-4d39-b688-c7abe9936a21/Windows2000-KB896423-x86-FRA.EXE|updates/win2ksp4/windows2000-kb896423-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/3/8/6/386a9cdf-a438-4085-b0f1-07d9d1a199b3/Windows2000-KB896423-x86-HEB.EXE|updates/win2ksp4/windows2000-kb896423-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/2/6/6/2661e985-c96f-4179-b889-f23ca932ea1f/Windows2000-KB896423-x86-HUN.EXE|updates/win2ksp4/windows2000-kb896423-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/6/2/4/6241ec4a-cf97-4ba8-ae99-9c5b603ffb48/Windows2000-KB896423-x86-ITA.EXE|updates/win2ksp4/windows2000-kb896423-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/0/c/3/0c3bae19-e685-42fe-bd4a-6aeb1a61eb2e/Windows2000-KB896423-x86-JPN.EXE|updates/win2ksp4/windows2000-kb896423-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/7/9/f/79f0d8d9-c8e2-45b3-988c-b9961fc3c3be/Windows2000-KB896423-x86-KOR.EXE|updates/win2ksp4/windows2000-kb896423-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/d/c/e/dcea242c-3532-4fa5-b418-0fb81cf88661/Windows2000-KB896423-x86-NLD.EXE|updates/win2ksp4/windows2000-kb896423-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/a/e/3/ae37b449-fbd5-4561-837f-000fdc5cc668/Windows2000-KB896423-x86-NOR.EXE|updates/win2ksp4/windows2000-kb896423-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/e/6/d/e6d8193e-a9e5-4d4f-9c17-d7eaf6388412/Windows2000-KB896423-x86-PLK.EXE|updates/win2ksp4/windows2000-kb896423-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/0/0/3/00350d5d-66ce-49aa-8f38-a991d791c9d1/Windows2000-KB896423-x86-PTB.EXE|updates/win2ksp4/windows2000-kb896423-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/e/2/7/e27f5d24-69e6-4a82-9314-78138796997d/Windows2000-KB896423-x86-PTG.EXE|updates/win2ksp4/windows2000-kb896423-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/c/1/4/c148f072-7bac-4b28-bb6e-efd8c12b927d/Windows2000-KB896423-x86-RUS.EXE|updates/win2ksp4/windows2000-kb896423-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/5/f/e/5feab718-d46e-448d-af55-177d54c4d453/Windows2000-KB896423-x86-SVE.EXE|updates/win2ksp4/windows2000-kb896423-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/7/d/0/7d09b1ec-261f-4e51-9d2e-22ded50d0321/Windows2000-KB896423-x86-TRK.EXE|updates/win2ksp4/windows2000-kb896423-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB896423-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for JView Profiler (KB903235)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=2A506C16-01EF-4060-BCF8-6993C55840A9>
:: URL|ARA|http://download.microsoft.com/download/9/7/5/97550d81-7825-455a-83d7-8e4efa41d76d/IE-KB903235-x86-ARA.exe|updates/ie6sp1/ie-kb903235-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/e/c/f/ecf135db-8781-461c-a3fa-0ccd1b09e0df/IE-KB903235-x86-CSY.exe|updates/ie6sp1/ie-kb903235-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/e/8/1/e816cc6a-9106-47f4-9284-25936c8cd5cf/IE-KB903235-x86-DAN.exe|updates/ie6sp1/ie-kb903235-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/f/d/5/fd5b231c-9f49-4fcd-868a-c7add0e7bf92/IE-KB903235-x86-DEU.exe|updates/ie6sp1/ie-kb903235-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/d/8/d/d8d7f45c-d217-41ca-aca3-04815969f22e/IE-KB903235-x86-ELL.exe|updates/ie6sp1/ie-kb903235-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/9/0/6/906ffbae-46a0-4c7c-ab71-8cb89d344f19/IE-KB903235-x86-ENU.exe|updates/ie6sp1/ie-kb903235-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/f/3/3/f335fdcb-3b51-435e-9343-7c9f36af06ac/IE-KB903235-x86-ESN.exe|updates/ie6sp1/ie-kb903235-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/d/9/2/d921f8cb-61b1-40d7-be43-00ec20c48fba/IE-KB903235-x86-FIN.exe|updates/ie6sp1/ie-kb903235-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/3/5/2/35234bc2-051b-42c3-ac4d-602033ce70df/IE-KB903235-x86-FRA.exe|updates/ie6sp1/ie-kb903235-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/9/7/8/9788f077-a9f4-47bc-b7d8-4fa278f9d1bf/IE-KB903235-x86-HEB.exe|updates/ie6sp1/ie-kb903235-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/7/9/2/792e0e54-69f7-482e-a354-e192e8e4ec8d/IE-KB903235-x86-HUN.exe|updates/ie6sp1/ie-kb903235-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/f/4/7/f47dccd6-6835-4de4-b535-7def48c74da5/IE-KB903235-x86-ITA.exe|updates/ie6sp1/ie-kb903235-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/7/4/e/74e3e859-6e22-4c31-92e3-fd972ecdb62f/IE-KB903235-x86-JPN.exe|updates/ie6sp1/ie-kb903235-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/6/e/6/6e64bab7-70f7-4365-8f28-b77f32eb8b37/IE-KB903235-x86-KOR.exe|updates/ie6sp1/ie-kb903235-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/7/0/a/70a00b40-7f50-4bb9-8d4b-ca3a18e5c576/IE-KB903235-x86-NLD.exe|updates/ie6sp1/ie-kb903235-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/9/a/3/9a31aa2b-eeca-4618-8b26-5c0978576cf4/IE-KB903235-x86-NOR.exe|updates/ie6sp1/ie-kb903235-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/e/f/1/ef1034e8-0049-4c36-8a3d-a6e83d749bf5/IE-KB903235-x86-PLK.exe|updates/ie6sp1/ie-kb903235-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/b/c/5/bc5478d3-bf8b-47d4-8ab6-e7d42ac0b475/IE-KB903235-x86-PTB.exe|updates/ie6sp1/ie-kb903235-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/a/3/4/a34934e1-75db-4297-bc1f-0d949387c31e/IE-KB903235-x86-PTG.exe|updates/ie6sp1/ie-kb903235-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/d/2/4/d245d90d-8dd5-4263-829b-a5eb2038b414/IE-KB903235-x86-RUS.exe|updates/ie6sp1/ie-kb903235-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/4/0/7/4073606c-8433-4e88-b3d5-50f80f8b42c0/IE-KB903235-x86-SVE.exe|updates/ie6sp1/ie-kb903235-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/b/5/e/b5ec6f53-62f7-48e3-9eeb-e9f937bd6f4c/IE-KB903235-x86-TRK.exe|updates/ie6sp1/ie-kb903235-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\ie6sp1\IE-KB903235-x86-%WINLANG%.exe /q /r:n"

:: Security Update for Windows 2000 (KB901214)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=FA8D18EC-EBF4-4C49-AFA0-F6A215B3624F>
:: URL|ARA|http://download.microsoft.com/download/c/5/d/c5d61d71-d11a-45f6-b2e5-167826859333/Windows2000-KB901214-x86-ARA.EXE|updates/win2ksp4/windows2000-kb901214-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/4/9/0/4905d773-1cc2-4d2a-a88f-3fd5a6733ee4/Windows2000-KB901214-x86-CSY.EXE|updates/win2ksp4/windows2000-kb901214-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/6/e/8/6e8c258b-886a-45c1-a58a-bc8b3f87bf12/Windows2000-KB901214-x86-DAN.EXE|updates/win2ksp4/windows2000-kb901214-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/b/f/3/bf38a129-b979-4e66-a571-a1b325ccd807/Windows2000-KB901214-x86-DEU.EXE|updates/win2ksp4/windows2000-kb901214-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/8/a/9/8a97c000-a1d6-4d1f-9b64-b470f097fc40/Windows2000-KB901214-x86-ELL.EXE|updates/win2ksp4/windows2000-kb901214-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/d/d/e/ddefcaa8-f0e4-4a98-b96e-c3b2217370e9/Windows2000-KB901214-x86-ENU.EXE|updates/win2ksp4/windows2000-kb901214-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/4/9/1/4915e8d6-19ef-49a4-8d20-54503f07da98/Windows2000-KB901214-x86-ESN.EXE|updates/win2ksp4/windows2000-kb901214-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/f/6/c/f6cce1dc-65cb-481b-9de7-f9b5101b0f5c/Windows2000-KB901214-x86-FIN.EXE|updates/win2ksp4/windows2000-kb901214-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/3/5/f/35fdf6ad-a9ee-4142-b209-9239f3fba7cd/Windows2000-KB901214-x86-FRA.EXE|updates/win2ksp4/windows2000-kb901214-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/0/3/9/039a6abb-4317-4c0a-8c21-3d63f312d2bd/Windows2000-KB901214-x86-HEB.EXE|updates/win2ksp4/windows2000-kb901214-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/a/8/1/a81e7360-eb3e-46ef-8444-92eb700bb878/Windows2000-KB901214-x86-HUN.EXE|updates/win2ksp4/windows2000-kb901214-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/f/3/4/f3413843-1853-41bd-a236-4516b0c87d50/Windows2000-KB901214-x86-ITA.EXE|updates/win2ksp4/windows2000-kb901214-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/f/e/f/fefc5083-9420-4fde-92df-9d9b7f083c93/Windows2000-KB901214-x86-JPN.EXE|updates/win2ksp4/windows2000-kb901214-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/8/0/5/805da402-7c4a-44c8-8f7d-12fea03f9c46/Windows2000-KB901214-x86-KOR.EXE|updates/win2ksp4/windows2000-kb901214-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/7/0/e/70ec7c4a-0b45-45ae-9c24-41151d46412d/Windows2000-KB901214-x86-NLD.EXE|updates/win2ksp4/windows2000-kb901214-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/1/e/5/1e5c2211-55f6-4629-bd9b-d37abd48306b/Windows2000-KB901214-x86-NOR.EXE|updates/win2ksp4/windows2000-kb901214-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/c/1/4/c1491267-8510-473e-8c6b-8a57e527016f/Windows2000-KB901214-x86-PLK.EXE|updates/win2ksp4/windows2000-kb901214-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/8/5/2/852aba18-205f-4448-9dbe-478f2aac8244/Windows2000-KB901214-x86-PTB.EXE|updates/win2ksp4/windows2000-kb901214-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/8/1/e/81ed6e3c-df22-484b-9e63-7998bfc0a367/Windows2000-KB901214-x86-PTG.EXE|updates/win2ksp4/windows2000-kb901214-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/f/8/2/f8269d23-5537-4f53-9887-cc475f9575ae/Windows2000-KB901214-x86-RUS.EXE|updates/win2ksp4/windows2000-kb901214-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/d/8/a/d8aa285e-0213-451c-9bfb-a05c34ba1c73/Windows2000-KB901214-x86-SVE.EXE|updates/win2ksp4/windows2000-kb901214-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/3/7/0/3708564a-a629-4d78-b8d2-61dedb7ee078/Windows2000-KB901214-x86-TRK.EXE|updates/win2ksp4/windows2000-kb901214-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB901214-x86-%WINLANG%.EXE /passive /n /norestart"

:: Security Update for Windows 2000 (KB894320)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=67581D32-743F-44FF-9B53-30277C196923>
:: URL|ARA|http://download.microsoft.com/download/6/1/c/61cfce8e-e89c-444f-85e3-6daa30d6bc1c/Windows2000-KB894320-x86-ARA.EXE|updates/win2ksp4/windows2000-kb894320-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/1/7/e/17e2f467-5b0e-47de-99cc-8a0b705cd6a6/Windows2000-KB894320-x86-CSY.EXE|updates/win2ksp4/windows2000-kb894320-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/a/b/e/abe4c513-0f0d-4e8b-a5a5-527c281f86e1/Windows2000-KB894320-x86-DAN.EXE|updates/win2ksp4/windows2000-kb894320-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/f/7/e/f7ef43bb-4e1a-450c-ac1d-f29da0517e20/Windows2000-KB894320-x86-DEU.EXE|updates/win2ksp4/windows2000-kb894320-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/e/c/f/ecf927b3-5ffb-46ce-ac7d-e2220d9e922f/Windows2000-KB894320-x86-ELL.EXE|updates/win2ksp4/windows2000-kb894320-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/d/a/f/dafda7aa-7103-45f9-9491-387e5f3faec5/Windows2000-KB894320-x86-ENU.EXE|updates/win2ksp4/windows2000-kb894320-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/c/8/f/c8fc354b-3112-4011-80de-daa7ab3f26f2/Windows2000-KB894320-x86-ESN.EXE|updates/win2ksp4/windows2000-kb894320-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/f/b/6/fb64d7c5-e3be-4606-9162-a3966d10743e/Windows2000-KB894320-x86-FIN.EXE|updates/win2ksp4/windows2000-kb894320-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/9/e/8/9e87b1f9-8617-4b89-b5f6-46747ae0fd24/Windows2000-KB894320-x86-FRA.EXE|updates/win2ksp4/windows2000-kb894320-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/4/3/e/43eec1d0-a16a-424d-8058-c692d80da4bb/Windows2000-KB894320-x86-HEB.EXE|updates/win2ksp4/windows2000-kb894320-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/a/6/2/a629a572-4bb0-4cbc-9c4a-9451f5c1fc05/Windows2000-KB894320-x86-HUN.EXE|updates/win2ksp4/windows2000-kb894320-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/f/c/a/fca6abf1-025d-4d61-9a5d-b45de734501e/Windows2000-KB894320-x86-ITA.EXE|updates/win2ksp4/windows2000-kb894320-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/f/c/4/fc4240d4-9198-43c7-943a-213cf6eb1c98/Windows2000-KB894320-x86-JPN.EXE|updates/win2ksp4/windows2000-kb894320-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/2/a/7/2a7bae02-5796-49fa-a7c5-8f1082cb8369/Windows2000-KB894320-x86-KOR.EXE|updates/win2ksp4/windows2000-kb894320-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/5/c/d/5cdefe70-6e0a-4a9e-ba31-dbacb1425cf1/Windows2000-KB894320-x86-NLD.EXE|updates/win2ksp4/windows2000-kb894320-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/6/7/0/670d897a-0a38-44f0-84b1-671256610340/Windows2000-KB894320-x86-NOR.EXE|updates/win2ksp4/windows2000-kb894320-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/2/2/c/22c5806b-1275-4867-b8ba-51136122f710/Windows2000-KB894320-x86-PLK.EXE|updates/win2ksp4/windows2000-kb894320-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/b/e/2/be2ea408-20af-4712-98ae-4ab2d39a6dce/Windows2000-KB894320-x86-PTB.EXE|updates/win2ksp4/windows2000-kb894320-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/9/1/f/91f87a12-f450-479a-8042-10bdaa00a791/Windows2000-KB894320-x86-PTG.EXE|updates/win2ksp4/windows2000-kb894320-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/0/a/d/0adf8eeb-0024-43f6-a953-aa5a88e9fa6f/Windows2000-KB894320-x86-RUS.EXE|updates/win2ksp4/windows2000-kb894320-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/2/4/0/240bbf17-9fec-4859-a077-872a2746ce7b/Windows2000-KB894320-x86-SVE.EXE|updates/win2ksp4/windows2000-kb894320-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/5/9/c/59c9ab5d-840c-4cf5-8434-432c560cd843/Windows2000-KB894320-x86-TRK.EXE|updates/win2ksp4/windows2000-kb894320-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB894320-x86-%WINLANG%.EXE /passive /n /norestart"

:: Update for Background Intelligent Transfer Service (BITS) 2.0 and WinHTTP 5.1 Windows 2000 (KB842773)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=3ee866a0-3a09-4fdf-8bdb-c906850ab9f2&Hash=LBCVL37>
:: URL|ARA|http://download.microsoft.com/download/f/b/c/fbc2c087-a5d4-42c5-83cf-4600152c3a07/Windows2000-KB842773-x86-ARA.EXE|updates/win2ksp4/windows2000-kb842773-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/4/a/c/4ac038c2-8833-49f1-ab69-3aef91c5b5b6/Windows2000-KB842773-x86-CSY.EXE|updates/win2ksp4/windows2000-kb842773-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/a/8/2/a82bdace-20a0-4ccc-a93d-6690fab4667f/Windows2000-KB842773-x86-DAN.EXE|updates/win2ksp4/windows2000-kb842773-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/e/d/1/ed199e9f-ebd0-4b34-8ca8-d69eea8b2259/Windows2000-KB842773-x86-DEU.EXE|updates/win2ksp4/windows2000-kb842773-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/9/4/9/94990555-16d7-449b-9842-43dc68dfc92d/Windows2000-KB842773-x86-ELL.EXE|updates/win2ksp4/windows2000-kb842773-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/5/d/8/5d802926-6bab-45fa-b96e-bee15413523b/Windows2000-KB842773-x86-ENU.EXE|updates/win2ksp4/windows2000-kb842773-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/b/8/a/b8a3ac5f-724d-419d-b814-9e213e028e5c/Windows2000-KB842773-x86-ESN.EXE|updates/win2ksp4/windows2000-kb842773-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/9/6/b/96bbab51-4836-42f6-986a-222799eeac8b/Windows2000-KB842773-x86-FIN.EXE|updates/win2ksp4/windows2000-kb842773-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/5/3/c/53cc1706-fedc-47f7-9267-b0520ff4919a/Windows2000-KB842773-x86-FRA.EXE|updates/win2ksp4/windows2000-kb842773-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/4/2/4/424aa370-0645-46a1-adf6-d309cfd40f25/Windows2000-KB842773-x86-HEB.EXE|updates/win2ksp4/windows2000-kb842773-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/6/e/4/6e42e066-8924-428c-aff3-618d56c68e43/Windows2000-KB842773-x86-HUN.EXE|updates/win2ksp4/windows2000-kb842773-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/5/3/4/5344b939-7a96-4768-8158-dc20ce1a861e/Windows2000-KB842773-x86-ITA.EXE|updates/win2ksp4/windows2000-kb842773-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/8/2/8/82894b43-427e-4816-851f-80b0b800087c/Windows2000-KB842773-x86-JPN.EXE|updates/win2ksp4/windows2000-kb842773-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/f/c/d/fcdd2ef4-7ce4-474a-8e02-7a2fff6738ca/Windows2000-KB842773-x86-KOR.EXE|updates/win2ksp4/windows2000-kb842773-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/e/8/1/e813531f-b6ac-4d25-a076-cb233cdd0957/Windows2000-KB842773-x86-NLD.EXE|updates/win2ksp4/windows2000-kb842773-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/0/9/6/096851e1-ff40-4e5f-aa73-3c021cd51725/Windows2000-KB842773-x86-NOR.EXE|updates/win2ksp4/windows2000-kb842773-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/5/e/7/5e7091ba-d606-4121-adb3-824e17ba57b9/Windows2000-KB842773-x86-PLK.EXE|updates/win2ksp4/windows2000-kb842773-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/c/6/f/c6f3b412-0f6c-49e1-b3ee-33f0827ac9e1/Windows2000-KB842773-x86-PTB.EXE|updates/win2ksp4/windows2000-kb842773-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/7/b/8/7b840fce-e60d-49dd-addc-c6adc5336d6c/Windows2000-KB842773-x86-PTG.EXE|updates/win2ksp4/windows2000-kb842773-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/f/0/c/f0c9b95f-002a-4688-bb41-2d725c8a3e78/Windows2000-KB842773-x86-RUS.EXE|updates/win2ksp4/windows2000-kb842773-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/a/6/5/a6581c7d-a698-4721-b137-9e014bc01492/Windows2000-KB842773-x86-SVE.EXE|updates/win2ksp4/windows2000-kb842773-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/5/5/9/559f49e6-e84c-484b-abbf-f1bd9075ed8e/Windows2000-KB842773-x86-TRK.EXE|updates/win2ksp4/windows2000-kb842773-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB842773-x86-%WINLANG%.EXE /passive /n /norestart"

:: Critical update 873374 (GDI+ Detection Tool)
:: <http://support.microsoft.com/kb/873374>
:: What a load of crap.  All this "tool" does is check to see if you
:: have various Microsoft products installed, then throw up a dialog
:: directing you to their Web page on the topic.  For a fresh
:: installation which applies the relevant updates, this is useless,
:: so just this once we violate our principles and patch the registry
:: directly.
todo.pl "reg add HKLM\Software\Microsoft\GdiDetectionTool /f /v \"GDITool\" /t REG_DWORD /d 1 "

:: Critical Update for Windows (KB833407)
:: <http://support.microsoft.com/?kbid=833407>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=a0f1dfc7-6a7f-4e9b-9a20-7751ce1ed795>
:: URL|ARA|http://download.microsoft.com/download/1/e/6/1e69634b-51b1-4b8e-b998-f78d5aa11268/Windows-KB833407-x86-ARA.exe|updates/common/windows-kb833407-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/d/d/b/ddb63819-8c49-49e6-9667-3b3390457413/Windows-KB833407-x86-CSY.exe|updates/common/windows-kb833407-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/a/c/a/acae3837-1ac4-4ee0-acde-a19c64004a97/Windows-KB833407-x86-DAN.exe|updates/common/windows-kb833407-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/2/1/3/21356a66-336c-4c9e-b266-05f14883aaa0/Windows-KB833407-x86-DEU.exe|updates/common/windows-kb833407-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/d/c/7/dc7496d3-b632-4f0d-853e-56b5754cc26d/Windows-KB833407-x86-ELL.exe|updates/common/windows-kb833407-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/1/3/c/13c13f98-0d59-4722-b804-5b29e0320b23/Windows-KB833407-x86-enu.exe|updates/common/windows-kb833407-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/d/4/0/d40d87a4-cfb5-43e1-97e6-6e326c349ac7/Windows-KB833407-x86-ESN.exe|updates/common/windows-kb833407-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/e/f/c/efc4c9ef-5e0a-4df9-b0d8-ea23de11a8ce/Windows-KB833407-x86-FIN.exe|updates/common/windows-kb833407-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/6/b/f/6bf2d71b-c9c7-4173-b547-4c6c5d9c3349/Windows-KB833407-x86-FRA.exe|updates/common/windows-kb833407-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/d/5/2/d52854cb-6865-457c-bd7f-846d15bc07cc/Windows-KB833407-x86-HEB.exe|updates/common/windows-kb833407-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/a/8/7/a87b27d9-6df4-4a0d-976c-85dc74c19648/Windows-KB833407-x86-HUN.exe|updates/common/windows-kb833407-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/6/6/7/667728bb-5d29-4ecb-91d8-c58ffeb6eb6c/Windows-KB833407-x86-ITA.exe|updates/common/windows-kb833407-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/c/6/7/c6752c8b-3340-4d5e-a5ac-c5118ccc060e/Windows-KB833407-x86-JPN.exe|updates/common/windows-kb833407-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/6/6/9/6692bac4-15b2-46a9-a81d-c635636cdc7a/Windows-KB833407-x86-KOR.exe|updates/common/windows-kb833407-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/b/4/f/b4f32f95-1d60-4cde-97df-c0f0d41066a6/Windows-KB833407-x86-NLD.exe|updates/common/windows-kb833407-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/3/2/5/325eee7e-26ba-4709-af58-2fb6991076f9/Windows-KB833407-x86-NOR.exe|updates/common/windows-kb833407-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/d/4/a/d4a4a83c-1b8c-4b11-bfbb-57e46a8ce41f/Windows-KB833407-x86-PLK.exe|updates/common/windows-kb833407-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/e/a/6/ea648ec9-0221-4b03-a8c9-cd09a9ffb53f/Windows-KB833407-x86-PTB.exe|updates/common/windows-kb833407-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/f/7/5/f75d2ea8-28b9-4d58-8073-0efb14a97eb2/Windows-KB833407-x86-PTG.exe|updates/common/windows-kb833407-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/c/7/b/c7bd6705-5993-465b-8ea5-50d999563654/Windows-KB833407-x86-RUS.exe|updates/common/windows-kb833407-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/1/0/d/10dbd8f8-b67a-4a7f-8834-2adf56f4d793/Windows-KB833407-x86-SVE.exe|updates/common/windows-kb833407-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/a/8/8/a881d31e-5513-4ae3-917b-22fb37e5687c/Windows-KB833407-x86-TRK.exe|updates/common/windows-kb833407-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\common\Windows-KB833407-x86-%WINLANG%.exe /passive /n /norestart"

:: Microsoft Data Access Components - Disable ADODB.Stream object from Internet Explorer (KB870669)
:: <http://support.microsoft.com/?kbid=870669>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=4d056748-c538-46f6-b7c8-2fbfd0d237e3>
:: URL|ALL|http://download.microsoft.com/download/e/5/5/e55bbf16-ae16-4d58-8f75-3233ec146255/Windows-KB870669-x86-ENU.exe|updates/common/windows-kb870669-x86.exe
todo.pl ".reboot-on 194 %Z%\updates\common\Windows-KB870669-x86.exe /q /r:n"

:: Microsoft Data Access Components (MDAC) Security Patch MS04-003 (32-bit)
:: Microsoft Security Bulletin MS04-003
:: "Buffer Overrun in MDAC Function Could Allow Code Execution (832483)"
:: <http://www.microsoft.com/technet/security/bulletin/ms04-003.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=39472EE8-C14A-47B4-BFCC-87988E062D91>
:: URL|ARA|http://download.microsoft.com/download/4/4/1/441c4127-4449-4e41-a11d-15e603e462ca/ARA_Q832483_MDAC_x86.EXE|updates/common/ara_q832483_mdac_x86.exe
:: URL|CSY|http://download.microsoft.com/download/5/4/a/54a8102d-fbef-4e95-b293-28f0f6e9da54/CSY_Q832483_MDAC_x86.EXE|updates/common/csy_q832483_mdac_x86.exe
:: URL|DAN|http://download.microsoft.com/download/3/c/0/3c0b8472-5616-49a1-808c-17b5628d7a82/DAN_Q832483_MDAC_x86.EXE|updates/common/dan_q832483_mdac_x86.exe
:: URL|DEU|http://download.microsoft.com/download/4/1/9/419cc279-598d-4897-b9dc-ca2228d35199/GER_Q832483_MDAC_x86.EXE|updates/common/deu_q832483_mdac_x86.exe
:: URL|ELL|http://download.microsoft.com/download/6/6/7/66764ea6-60da-4ebd-9e6a-958916da4aa4/ELL_Q832483_MDAC_x86.EXE|updates/common/ell_q832483_mdac_x86.exe
:: URL|ENU|http://download.microsoft.com/download/c/2/4/c245528e-a1e4-492e-bcf4-e004a052d93b/ENU_Q832483_MDAC_x86.EXE|updates/common/enu_q832483_mdac_x86.exe
:: URL|ESN|http://download.microsoft.com/download/5/7/3/57383560-0c79-4b96-8792-ad47919bfce4/ESN_Q832483_MDAC_x86.EXE|updates/common/esn_q832483_mdac_x86.exe
:: URL|FIN|http://download.microsoft.com/download/5/6/4/564248e6-8380-4da4-8739-2f061b980448/FIN_Q832483_MDAC_x86.EXE|updates/common/fin_q832483_mdac_x86.exe
:: URL|FRA|http://download.microsoft.com/download/7/b/c/7bc5f5d6-f2a3-43da-8537-cd1410a2b024/FRN_Q832483_MDAC_x86.EXE|updates/common/fra_q832483_mdac_x86.exe
:: URL|HEB|http://download.microsoft.com/download/b/5/c/b5c918f3-acd6-4ea8-89f8-583c5dddf5be/HEB_Q832483_MDAC_x86.EXE|updates/common/heb_q832483_mdac_x86.exe
:: URL|HUN|http://download.microsoft.com/download/2/5/6/256f22d6-f01f-45ee-80b3-93fa31ea8bda/HUN_Q832483_MDAC_x86.EXE|updates/common/hun_q832483_mdac_x86.exe
:: URL|ITA|http://download.microsoft.com/download/3/c/f/3cfc944f-ebca-468e-8a65-f77513a00bd0/ITA_Q832483_MDAC_x86.EXE|updates/common/ita_q832483_mdac_x86.exe
:: URL|JPN|http://download.microsoft.com/download/4/d/b/4db316bf-b6e6-4fe5-b084-01b7c3b82c68/JPN_Q832483_MDAC_x86.EXE|updates/common/jpn_q832483_mdac_x86.exe
:: URL|KOR|http://download.microsoft.com/download/8/5/0/850f3078-1f4e-4bf6-8ec6-6f617f5e0726/KOR_Q832483_MDAC_x86.EXE|updates/common/kor_q832483_mdac_x86.exe
:: URL|NLD|http://download.microsoft.com/download/8/b/3/8b3e32b0-cae9-4349-ac29-38685048174f/NLD_Q832483_MDAC_x86.EXE|updates/common/nld_q832483_mdac_x86.exe
:: URL|NOR|http://download.microsoft.com/download/4/a/1/4a1df9f9-529b-4ff4-ba9e-c78c9a865788/NOR_Q832483_MDAC_x86.EXE|updates/common/nor_q832483_mdac_x86.exe
:: URL|PLK|http://download.microsoft.com/download/9/d/0/9d0c8e03-786e-408f-9e74-fd1d0dc26f23/PLK_Q832483_MDAC_x86.EXE|updates/common/plk_q832483_mdac_x86.exe
:: URL|PTB|http://download.microsoft.com/download/5/a/b/5ab69c6d-1b5b-48f3-89fb-3301f14da826/BRZ_Q832483_MDAC_x86.EXE|updates/common/ptb_q832483_mdac_x86.exe
:: URL|PTG|http://download.microsoft.com/download/d/4/9/d493b7c3-0e03-44e7-b009-5e83e1241ac5/PTG_Q832483_MDAC_x86.EXE|updates/common/ptg_q832483_mdac_x86.exe
:: URL|RUS|http://download.microsoft.com/download/f/0/a/f0a344ec-c6bf-4273-9162-062c7974b114/RUS_Q832483_MDAC_x86.EXE|updates/common/rus_q832483_mdac_x86.exe
:: URL|SVE|http://download.microsoft.com/download/9/2/d/92d30293-0cb6-4628-adfb-83632d7d452e/SVE_Q832483_MDAC_x86.EXE|updates/common/sve_q832483_mdac_x86.exe
:: URL|TRK|http://download.microsoft.com/download/3/d/2/3d280430-d7f7-41a1-a6fe-450d67093ee6/TRK_Q832483_MDAC_x86.EXE|updates/common/trk_q832483_mdac_x86.exe
todo.pl ".reboot-on 194 %Z%\updates\common\%WINLANG%_Q832483_MDAC_x86.EXE /q /c:\"dahotfix.exe /q /n\""

:: Microsoft Data Access Components (MDAC) 2.8
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=6c050fe3-c795-4b7d-b037-185d0506396c>
:: URL|ARA|http://download.microsoft.com/download/e/3/7/e371b954-1feb-41b6-b988-4a1b3b795c16/MDAC_TYP.EXE|packages/mdac/ara/mdac-2.8.exe
:: URL|CSY|http://download.microsoft.com/download/b/7/e/b7e5cfca-fead-481e-8aaa-241a77c1f786/MDAC_TYP.EXE|packages/mdac/csy/mdac-2.8.exe
:: URL|DAN|http://download.microsoft.com/download/e/4/e/e4e2be89-69d0-482a-a9c5-d50449ecabca/MDAC_TYP.EXE|packages/mdac/dan/mdac-2.8.exe
:: URL|DEU|http://download.microsoft.com/download/a/b/9/ab965707-fbab-48bc-8c33-a4cfd44255c6/MDAC_TYP.EXE|packages/mdac/deu/mdac-2.8.exe
:: URL|ELL|http://download.microsoft.com/download/3/4/d/34d62d2f-76bb-459a-b650-d51953c2c0d3/MDAC_TYP.EXE|packages/mdac/ell/mdac-2.8.exe
:: URL|ENU|http://download.microsoft.com/download/c/d/f/cdfd58f1-3973-4c51-8851-49ae3777586f/MDAC_TYP.EXE|packages/mdac/enu/mdac-2.8.exe
:: URL|ESN|http://download.microsoft.com/download/b/3/c/b3cbdb35-80a5-4fa2-a9af-ad84d1757f6b/MDAC_TYP.EXE|packages/mdac/esn/mdac-2.8.exe
:: URL|FIN|http://download.microsoft.com/download/6/0/5/605d7aed-8b92-4376-bd54-729ed66a437e/MDAC_TYP.EXE|packages/mdac/fin/mdac-2.8.exe
:: URL|FRA|http://download.microsoft.com/download/d/8/6/d86f23a0-628a-4fea-9907-5ef1304d8124/MDAC_TYP.EXE|packages/mdac/fra/mdac-2.8.exe
:: URL|HEB|http://download.microsoft.com/download/f/d/6/fd6865ba-e258-4306-909c-07d98fe93e2c/MDAC_TYP.EXE|packages/mdac/heb/mdac-2.8.exe
:: URL|HUN|http://download.microsoft.com/download/5/a/0/5a045874-5c14-4aef-86c9-a6ce376defc7/MDAC_TYP.EXE|packages/mdac/hun/mdac-2.8.exe
:: URL|ITA|http://download.microsoft.com/download/f/f/6/ff6bf59e-0955-4f0c-a218-c7fd53d1e31b/MDAC_TYP.EXE|packages/mdac/ita/mdac-2.8.exe
:: URL|JPN|http://download.microsoft.com/download/f/c/3/fc3642af-58c2-422f-8491-0f881f3642f8/MDAC_TYP.EXE|packages/mdac/jpn/mdac-2.8.exe
:: URL|KOR|http://download.microsoft.com/download/b/6/a/b6a95455-c01e-4e77-a67b-8e76dc02779e/MDAC_TYP.EXE|packages/mdac/kor/mdac-2.8.exe
:: URL|NLD|http://download.microsoft.com/download/7/1/4/714155e5-d132-4aa5-a426-418360c3e318/MDAC_TYP.EXE|packages/mdac/nld/mdac-2.8.exe
:: URL|NOR|http://download.microsoft.com/download/0/8/c/08c1881c-73b1-4c75-9bcd-e08c494ddee1/MDAC_TYP.EXE|packages/mdac/nor/mdac-2.8.exe
:: URL|PLK|http://download.microsoft.com/download/f/4/3/f431eb0c-b42a-47b8-86a1-517392fdf0b4/MDAC_TYP.EXE|packages/mdac/plk/mdac-2.8.exe
:: URL|PTB|http://download.microsoft.com/download/1/a/4/1a47382d-18f3-41d4-b92c-74db27d5944b/MDAC_TYP.EXE|packages/mdac/ptb/mdac-2.8.exe
:: URL|PTG|http://download.microsoft.com/download/e/6/a/e6ad297b-7207-4bf0-9322-b8f8cf893346/MDAC_TYP.EXE|packages/mdac/ptg/mdac-2.8.exe
:: URL|RUS|http://download.microsoft.com/download/c/f/2/cf2b5cd9-7ffd-4c19-971f-9ccaf0b57d48/MDAC_TYP.EXE|packages/mdac/rus/mdac-2.8.exe
:: URL|SVE|http://download.microsoft.com/download/6/a/d/6adcf154-c656-43db-aee1-2cda67b52162/MDAC_TYP.EXE|packages/mdac/sve/mdac-2.8.exe
:: URL|TRK|http://download.microsoft.com/download/7/c/9/7c9c62b5-fe4d-4afe-a4f3-d22a8bd5c0da/MDAC_TYP.EXE|packages/mdac/trk/mdac-2.8.exe
todo.pl ".reboot-on 194 %Z%\packages\mdac\%WINLANG%\MDAC-2.8.EXE /q /c:\"setup /qn1\""

if not exist %SystemRoot%\System32\Msjava.dll goto nojvm
:: Critical update 816093
:: "Flaw in Microsoft VM Could Enable System Compromise"
:: <http://support.microsoft.com/?kbid=816093>
:: (NOTE: Only available from Windows Catalog, be sure to get
::  the 2000 SP4 or XP version, they are the same)
:: URL|ALL|http://download.windowsupdate.com/msdownload/update/v3-19990518/cabpool/msjavwu_8073687b82d41db93f4c2a04af2b34d.exe|updates/common/msjavwu.exe
todo.pl ".reboot-on 194 %Z%\updates\common\msjavwu.exe /q /r:n"
:nojvm

:: Update Rollup 1 for Windows 2000 SP4 (KB891861)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=B54730CF-8850-4531-B52B-BF28B324C662>
:: URL|ARA|http://download.microsoft.com/download/a/6/4/a647b711-1518-4a45-afe6-b3963adfbc59/Windows2000-KB891861-v2-x86-ARA.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/0/6/d/06d39b3e-b391-4870-9b65-e6b665ac33b5/Windows2000-KB891861-v2-x86-CSY.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/2/9/e/29e61e38-f31f-451c-bc6c-05a0a4f8a653/Windows2000-KB891861-v2-x86-DAN.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/6/a/3/6a358d3e-f38d-4376-a2bc-3dbf5a1411a9/Windows2000-KB891861-v2-x86-DEU.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/5/6/8/56864b85-c9b0-4234-a60b-46e3202e2f6f/Windows2000-KB891861-v2-x86-ELL.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/2/7/b/27b1d1a3-0299-4336-b88a-22b9f09817e2/Windows2000-KB891861-v2-x86-ENU.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/c/d/b/cdbf9256-d5da-4521-8ab8-6cfd94b44d1e/Windows2000-KB891861-v2-x86-ESN.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/1/d/4/1d482243-890e-4fba-93b1-e6f61d964a24/Windows2000-KB891861-v2-x86-FIN.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/d/e/f/def6eb0a-fc08-4cb8-a00d-7c4442ce4629/Windows2000-KB891861-v2-x86-FRA.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/c/1/9/c19d9d52-6b4f-4960-aa02-cf0e41ee7862/Windows2000-KB891861-v2-x86-HEB.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/7/e/8/7e8c18b2-b787-4739-8ef4-1fd6b4568454/Windows2000-KB891861-v2-x86-HUN.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/b/a/0/ba069a77-1a63-4a2f-82a1-fed8ef05b94c/Windows2000-KB891861-v2-x86-ITA.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/7/6/6/766502ed-965b-4b8b-a06c-67b3774be8d8/Windows2000-KB891861-v2-x86-JPN.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/1/1/8/118f78e0-a8e2-45bc-b23a-970dd36d6c53/Windows2000-KB891861-v2-x86-KOR.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/d/8/d/d8d77707-cf5e-4516-9b0e-fd7ec7873c3b/Windows2000-KB891861-v2-x86-NLD.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/b/d/7/bd7c71fb-571e-4010-9bd8-0358c18e4b83/Windows2000-KB891861-v2-x86-NOR.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/1/3/f/13feeade-df79-4331-9725-4bf5ccc84a26/Windows2000-KB891861-v2-x86-PLK.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/1/a/8/1a80a9ef-d2ec-4919-ab40-2e9f4e46271d/Windows2000-KB891861-v2-x86-PTB.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/c/b/5/cb594aef-4d5f-46ff-8e56-206937d4a679/Windows2000-KB891861-v2-x86-PTG.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/b/b/f/bbf1d83d-23a2-42ce-a33a-6f4cb8944508/Windows2000-KB891861-v2-x86-RUS.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/8/0/b/80b5081c-79fe-48b8-9a39-f105f270e32e/Windows2000-KB891861-v2-x86-SVE.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/6/d/9/6d9e2c02-e403-4171-b58b-84cf581cb597/Windows2000-KB891861-v2-x86-TRK.EXE|updates/win2ksp4/windows2000-kb891861-v2-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\Windows2000-KB891861-v2-x86-%WINLANG%.EXE /passive /n /norestart"

:: Install IE6 First
todo.pl ie6.bat

:: Root Certificates Update
:: <http://download.windowsupdate.com/msdownload/update/v3/static/rtf/en/4702.htm>
:: URL|ALL|http://download.windowsupdate.com/msdownload/update/v3/static/trustedr/en/rootsupd.exe|updates/win2ksp4/rootsupd-3.exe
todo.pl ".reboot-on 194 %Z%\updates\win2ksp4\rootsupd-3.exe /q /r:n"
REGEDIT4

; Pretend stupid GDI+ Tool already ran
[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\GdiDetectionTool]
"GDITool"=dword:00000001

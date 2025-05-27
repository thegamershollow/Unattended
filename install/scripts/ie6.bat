:: Install IE6
@Echo off
:: Note that since we are pushing these commands onto the to-do stack,
:: they will be executed in the opposite order.

:: Cumulative Security Update for Internet Explorer 6 Service Pack 1 for Windows XP and Windows 2000 (KB896727)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=68300B15-1CF9-45FB-875E-2EF6D2FBC9ED>
:: URL|ARA|http://download.microsoft.com/download/2/c/3/2c389c6a-818f-4b4b-8e04-db0f40231297/IE6.0sp1-KB896727-Windows-2000-XP-x86-ARA.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/6/8/b/68bbc203-dc93-4575-b1b7-59c291082014/IE6.0sp1-KB896727-Windows-2000-XP-x86-CSY.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/b/7/4/b74a0793-7da0-40b3-97a8-a4ceec571a6a/IE6.0sp1-KB896727-Windows-2000-XP-x86-DAN.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/c/9/9/c99aa0d3-3e6a-416b-860f-f789ade5edbc/IE6.0sp1-KB896727-Windows-2000-XP-x86-DEU.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/5/c/d/5cdf3719-f5ca-4dd1-8289-815930c870a9/IE6.0sp1-KB896727-Windows-2000-XP-x86-ELL.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/c/a/7/ca75a00b-8d38-4254-a737-b7f8efb4e104/IE6.0sp1-KB896727-Windows-2000-XP-x86-ENU.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/5/b/6/5b6f389a-9ded-4b3e-bfdd-a21bdaa85216/IE6.0sp1-KB896727-Windows-2000-XP-x86-ESN.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/a/2/0/a20b707d-fffa-4e2e-af9f-e134c70a76d7/IE6.0sp1-KB896727-Windows-2000-XP-x86-FIN.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/e/4/1/e412d691-b1a9-46cf-a315-105936d376e5/IE6.0sp1-KB896727-Windows-2000-XP-x86-FRA.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/3/e/d/3ed3ee13-e01d-4d08-aefb-d7704e410a65/IE6.0sp1-KB896727-Windows-2000-XP-x86-HEB.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/0/a/c/0ac03278-9f74-43c6-b689-29957e61e677/IE6.0sp1-KB896727-Windows-2000-XP-x86-HUN.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/f/8/1/f818a3b5-f83f-41f0-9a25-ae0f367242e8/IE6.0sp1-KB896727-Windows-2000-XP-x86-ITA.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/1/f/8/1f83043d-985b-4327-bc50-7952750a0f57/IE6.0sp1-KB896727-Windows-2000-XP-x86-JPN.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/6/e/5/6e5e6387-cee1-47eb-9aca-8f520a8b2565/IE6.0sp1-KB896727-Windows-2000-XP-x86-KOR.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/0/3/1/03198c8b-d194-433c-a39f-ac0ee1ed6bd7/IE6.0sp1-KB896727-Windows-2000-XP-x86-NLD.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/5/1/6/51640875-84db-4637-a565-1cf5b6101487/IE6.0sp1-KB896727-Windows-2000-XP-x86-NOR.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/b/3/9/b3980da2-e135-4a17-906e-4204d7d39d14/IE6.0sp1-KB896727-Windows-2000-XP-x86-PLK.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/a/3/c/a3c24f4b-fec4-4b1f-bd68-5b2046dd87af/IE6.0sp1-KB896727-Windows-2000-XP-x86-PTB.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/1/e/2/1e287985-6f43-424f-89c5-ac78542f0360/IE6.0sp1-KB896727-Windows-2000-XP-x86-PTG.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/3/b/3/3b38c321-78b7-4e28-aac6-a477b6927177/IE6.0sp1-KB896727-Windows-2000-XP-x86-RUS.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/a/3/7/a370862e-be19-4e9f-826c-19f483b1c2bf/IE6.0sp1-KB896727-Windows-2000-XP-x86-SVE.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/c/0/f/c0f25922-e6da-4271-9051-3fa2df5a2a5b/IE6.0sp1-KB896727-Windows-2000-XP-x86-TRK.exe|updates/ie6sp1/ie6.0sp1-kb896727-windows-2000-xp-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\ie6sp1\IE6.0sp1-KB896727-Windows-2000-XP-x86-%WINLANG%.exe /passive /n /norestart"

:: Cumulative Security Update for Outlook Express 6 Service Pack 1 (KB897715)
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=89e4d8ee-4d8e-4660-a53d-28502b3d2518>
:: URL|ARA|http://download.microsoft.com/download/e/0/0/e00fcb42-5643-4e42-938b-e788091e2f0b/OE6.0sp1-KB897715-Windows-2000-XP-x86-ARA.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/8/5/b/85b1b562-f1e2-444e-afd4-e1e06d67349e/oe6.0sp1-KB897715-Windows-2000-XP-x86-CSY.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/4/4/3/443ee0d8-822b-435f-9bf6-2dc98f20cac3/oe6.0sp1-KB897715-Windows-2000-XP-x86-DAN.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/f/5/2/f52aff48-7c02-4668-857f-bd635dc6ed91/oe6.0sp1-KB897715-Windows-2000-XP-x86-DEU.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/2/d/2/2d23d886-9dd9-4eea-92ee-751c0b2bbabf/oe6.0sp1-KB897715-Windows-2000-XP-x86-ELL.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/0/e/6/0e6546cb-fd1b-426f-bf2b-f6101251eef1/oe6.0sp1-KB897715-Windows-2000-XP-x86-ENU.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/9/8/a/98ad117a-1172-4c51-808f-d36d868049d3/oe6.0sp1-KB897715-Windows-2000-XP-x86-ESN.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/3/1/e/31e00ffc-d2cc-4e58-9ef7-e6201a752231/oe6.0sp1-KB897715-Windows-2000-XP-x86-FIN.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/9/5/a/95af97a2-5dba-4ab5-9ce9-cb357dc888c0/oe6.0sp1-KB897715-Windows-2000-XP-x86-FRA.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/0/9/1/0910499e-a6e6-412e-ad7a-667da5f71235/OE6.0sp1-KB897715-Windows-2000-XP-x86-HEB.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/e/4/c/e4cc5fb6-816c-4ce6-9a42-ad3d3af7c81a/oe6.0sp1-KB897715-Windows-2000-XP-x86-HUN.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/6/6/c/66c38ea5-1cc0-4d8c-9251-9bfd5b936a60/oe6.0sp1-KB897715-Windows-2000-XP-x86-ITA.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/5/c/b/5cb52085-58ed-4e31-ba83-d8c9fafccc7a/oe6.0sp1-KB897715-Windows-2000-XP-x86-JPN.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/4/8/9/4896e23c-7959-49bd-b06d-f696518c2d0f/oe6.0sp1-KB897715-Windows-2000-XP-x86-KOR.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/3/b/9/3b98aa1a-2d83-4ea4-bb21-dfe3c0df2551/oe6.0sp1-KB897715-Windows-2000-XP-x86-NLD.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/3/1/b/31be029e-56e4-49fe-b8ec-eea14e58e01c/oe6.0sp1-KB897715-Windows-2000-XP-x86-NOR.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/0/1/3/0132d399-da94-46e7-babf-45d2cdf7ab46/oe6.0sp1-KB897715-Windows-2000-XP-x86-PLK.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/7/0/8/708b0526-73a0-467a-bb11-a06d9b8ab0f6/oe6.0sp1-KB897715-Windows-2000-XP-x86-PTB.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/b/1/a/b1a60018-e88f-4337-9d5e-8ff9cc0d54bc/oe6.0sp1-KB897715-Windows-2000-XP-x86-PTG.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/5/e/2/5e2da1b4-2441-4e44-ae06-cc7c06bc553f/oe6.0sp1-KB897715-Windows-2000-XP-x86-RUS.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/4/d/4/4d4eacc6-248a-4cc4-b29a-f00c292a5fca/oe6.0sp1-KB897715-Windows-2000-XP-x86-SVE.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/d/2/8/d2847dfa-3d39-4ca3-ab15-833a800c5ad0/oe6.0sp1-KB897715-Windows-2000-XP-x86-TRK.exe|updates/ie6sp1/oe6.0sp1-kb897715-windows-2000-xp-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\ie6sp1\oe6.0sp1-KB897715-Windows-2000-XP-x86-%WINLANG%.exe /passive /n /norestart"

:: Cumulative Security Update for Internet Explorer 6 Service Pack 1 for Windows XP and Windows 2000 (KB890923)
:: Microsoft Security Bulletin MS05-020
:: <http://www.microsoft.com/downloads/details.aspx?familyid=92E5A83D-9131-4B20-915A-A444C51656DC>
:: URL|ARA|http://download.microsoft.com/download/7/e/7/7e743cfa-38dc-4292-9bdd-daf3bc7136de/IE6.0sp1-KB890923-Windows-2000-XP-x86-ARA.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/c/b/2/cb2d061b-0a5e-4926-be19-a3e12cd64cc2/IE6.0sp1-KB890923-Windows-2000-XP-x86-CSY.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/4/9/6/49651ab1-71d7-4175-a65a-5277a734ca59/IE6.0sp1-KB890923-Windows-2000-XP-x86-DAN.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/f/e/f/fef68d8f-2391-4bb6-b0f0-a863f218fa34/IE6.0sp1-KB890923-Windows-2000-XP-x86-DEU.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/7/1/f/71f8393d-f3f4-4379-b48d-f247127bbeea/IE6.0sp1-KB890923-Windows-2000-XP-x86-ELL.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/6/4/6/646fc8a6-7aef-4cac-9f55-9921203f0cea/IE6.0sp1-KB890923-Windows-2000-XP-x86-ENU.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/3/3/0/3300ac52-f1e5-4c4a-8732-b95b7172d06c/IE6.0sp1-KB890923-Windows-2000-XP-x86-ESN.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/f/9/f/f9f7e6b7-c61b-47ed-9b63-0fb5896497a2/IE6.0sp1-KB890923-Windows-2000-XP-x86-FIN.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/c/c/f/ccfe854b-d360-468e-a5d9-599ee94d64bd/IE6.0sp1-KB890923-Windows-2000-XP-x86-FRA.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/f/d/6/fd644fc4-01b3-4f73-ab32-e7aea18bb736/IE6.0sp1-KB890923-Windows-2000-XP-x86-HEB.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/1/a/c/1ace6e48-17da-42fb-91b8-9e9a9f3a809b/IE6.0sp1-KB890923-Windows-2000-XP-x86-HUN.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/a/7/5/a7572914-79eb-4932-b67e-4c11d343bdd4/IE6.0sp1-KB890923-Windows-2000-XP-x86-ITA.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/0/b/b/0bb5b37e-f283-48fe-b776-5f548e2e9695/IE6.0sp1-KB890923-Windows-2000-XP-x86-JPN.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/3/6/b/36b833c0-7c35-42f1-b1f8-9d32fcb36117/IE6.0sp1-KB890923-Windows-2000-XP-x86-KOR.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/7/f/c/7fc1e343-d9aa-4bbb-ac62-6f93870164db/IE6.0sp1-KB890923-Windows-2000-XP-x86-NLD.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/5/5/7/5573000c-3d55-439e-a62b-3f3ebe08d15f/IE6.0sp1-KB890923-Windows-2000-XP-x86-NOR.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/4/9/f/49f8f3f6-88fd-4300-b9e1-68111b4e71b7/IE6.0sp1-KB890923-Windows-2000-XP-x86-PLK.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/0/9/7/097a3ac6-c1bb-4359-a5c5-1500f32d5ebb/IE6.0sp1-KB890923-Windows-2000-XP-x86-PTB.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/2/b/6/2b6456ea-cf9c-4b45-9588-ccedf31c8a2d/IE6.0sp1-KB890923-Windows-2000-XP-x86-PTG.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/f/6/7/f678338e-54e4-4d99-bbee-07069e6e1aaf/IE6.0sp1-KB890923-Windows-2000-XP-x86-RUS.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/0/6/e/06e5fc5c-aeae-4ae2-adb2-6fb2c7333e67/IE6.0sp1-KB890923-Windows-2000-XP-x86-SVE.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/e/a/3/ea3e3ce9-b740-42c5-b842-3dd93b7e6ca6/IE6.0sp1-KB890923-Windows-2000-XP-x86-TRK.exe|updates/ie6sp1/ie6.0sp1-kb890923-windows-2000-xp-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\ie6sp1\IE6.0sp1-KB890923-Windows-2000-XP-x86-%WINLANG%.exe /passive /n /norestart"

:: Security Update for Internet Explorer 6 Service Pack 1 (KB833989)
:: Microsoft Security Bulletin MS04-028
:: "Buffer Overrun in JPEG Processing (GDI+) Could Allow Code Execution (833987)"
:: <http://www.microsoft.com/technet/security/bulletin/MS04-028.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=B0095851-674D-4357-868C-DD75D88405EC>
:: URL|ARA|http://download.microsoft.com/download/3/6/9/3696bf6d-50d0-4939-8bd7-83a14429a44f/IE6.0sp1-KB833989-x86-ARA.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/6/5/0/650fb3da-fc6e-46ed-86d5-097ee0801810/IE6.0sp1-KB833989-x86-CSY.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/1/6/9/16980ea5-5817-4bb8-8f97-9be01ed3d384/IE6.0sp1-KB833989-x86-DAN.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/1/9/d/19d4d74b-7f5b-4bda-be60-04908b03bd36/IE6.0sp1-KB833989-x86-DEU.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/a/e/6/ae6f77c2-dc8b-42c1-86df-ed8e4c776b7c/IE6.0sp1-KB833989-x86-ELL.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/e/c/9/ec9eff7c-b230-438a-8fe8-9f0f091c7e7b/IE6.0sp1-KB833989-x86-ENU.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/2/f/2/2f23a53e-2ae6-4fd4-872e-4063c20ebfea/IE6.0sp1-KB833989-x86-ESN.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/8/4/e/84e5d060-e32d-4958-9b6d-3d331457496f/IE6.0sp1-KB833989-x86-FIN.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/f/3/c/f3cae457-d015-4f84-91c1-af0d33e309d4/IE6.0sp1-KB833989-x86-FRA.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/9/6/f/96f4f152-d4a0-43ab-b9e2-54dc3f3f514e/IE6.0sp1-KB833989-x86-HEB.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/0/2/d/02dd0c0e-3bbd-4b73-97cd-3290f78c33cf/IE6.0sp1-KB833989-x86-HUN.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/6/7/6/676348bc-8e17-4cd2-9ca0-784664e805f9/IE6.0sp1-KB833989-x86-ITA.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/0/3/5/0352cfba-44a8-49b0-8d0b-70fb3ecd0233/IE6.0sp1-KB833989-x86-JPN.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/1/a/e/1aec0482-c026-4166-9605-bfbd60a1a43a/IE6.0sp1-KB833989-x86-KOR.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/b/e/3/be3eb09a-341f-41ec-aa73-59cc380295e9/IE6.0sp1-KB833989-x86-NLD.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/b/3/1/b31f6f1a-13a0-4177-993c-18d64191df2e/IE6.0sp1-KB833989-x86-NOR.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/6/1/5/6159a4e4-536a-456b-83ab-80d74abfb63b/IE6.0sp1-KB833989-x86-PLK.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/c/a/f/caf0655d-12a4-4ac9-8009-c042b417909a/IE6.0sp1-KB833989-x86-PTB.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/0/3/7/0370ef29-87ec-4393-95df-d3c1993a0810/IE6.0sp1-KB833989-x86-PTG.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/a/5/0/a509b099-c436-429d-b485-8a737047745f/IE6.0sp1-KB833989-x86-RUS.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/9/4/9/949a1dae-e689-4eb9-bc7c-1b0b3a38501f/IE6.0sp1-KB833989-x86-SVE.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/3/1/b/31ba0179-f926-4695-b872-0951d16f037f/IE6.0sp1-KB833989-x86-TRK.exe|updates/ie6sp1/ie6.0sp1-kb833989-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\ie6sp1\IE6.0sp1-KB833989-x86-%WINLANG%.exe /q /r:n"

:: Update Rollup for Internet Explorer 6 Service Pack 1 (KB889669)
:: <http://support.microsoft.com/kb/889669>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=c74028e2-10c9-4edd-ad0a-36493677bff8>
:: URL|ARA|http://download.microsoft.com/download/7/e/7/7e7dd6de-1bb5-4a9e-a4f6-337fc576fc26/IE6.0sp1-KB889669-Windows-2000-XP-x86-ARA.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/0/c/b/0cb7361a-9c66-439d-9cca-1da83575aaf5/IE6.0sp1-KB889669-Windows-2000-XP-x86-CSY.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/0/9/e/09e618a3-a768-40fb-a6de-67e34b020b76/IE6.0sp1-KB889669-Windows-2000-XP-x86-DAN.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/6/6/c/66cb086f-22ed-4a6b-93d2-34d4d2479c23/IE6.0sp1-KB889669-Windows-2000-XP-x86-DEU.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/2/9/4/2940f139-9056-4c65-b237-90edcba67e19/IE6.0sp1-KB889669-Windows-2000-XP-x86-ELL.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/7/c/6/7c646aee-ef76-4065-a584-8be0ca2de38b/IE6.0sp1-KB889669-Windows-2000-XP-x86-ENU.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/c/f/e/cfe4652c-33d2-4b7f-8ba2-1388018423da/IE6.0sp1-KB889669-Windows-2000-XP-x86-ESN.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/5/a/b/5abe0b09-5d58-4ab5-bebd-b88b39c50578/IE6.0sp1-KB889669-Windows-2000-XP-x86-FIN.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/6/1/9/61946ac7-ed98-4c7e-9849-64f65a3d837e/IE6.0sp1-KB889669-Windows-2000-XP-x86-FRA.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/7/5/e/75ec77e4-c0c8-4a61-a3da-3391c7450b35/IE6.0sp1-KB889669-Windows-2000-XP-x86-HEB.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/0/3/3/033c993b-9a75-403b-8e23-9f3aea17c04c/IE6.0sp1-KB889669-Windows-2000-XP-x86-HUN.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/9/1/6/9169c6b8-aa1a-46bd-b35c-552b5e2dc7f9/IE6.0sp1-KB889669-Windows-2000-XP-x86-ITA.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/5/2/d/52d908af-3374-45db-9ab5-dfe7aed5fa4b/IE6.0sp1-KB889669-Windows-2000-XP-x86-JPN.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/2/c/c/2ccae920-d064-4eb7-bab2-3e554665e7e3/IE6.0sp1-KB889669-Windows-2000-XP-x86-KOR.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/f/3/7/f370ba3d-9ffe-45cc-861a-3ef0e1ed1af2/IE6.0sp1-KB889669-Windows-2000-XP-x86-NLD.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/d/7/9/d79a3ce3-271d-406d-864e-8cb903ceb926/IE6.0sp1-KB889669-Windows-2000-XP-x86-NOR.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/e/2/5/e253b19a-6d9e-49cd-a96c-4417af4b0c0b/IE6.0sp1-KB889669-Windows-2000-XP-x86-PLK.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/f/4/5/f45ccadc-9e53-4dc7-8836-21fd96b91e72/IE6.0sp1-KB889669-Windows-2000-XP-x86-PTB.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/e/1/9/e19e29cf-4cb9-4342-a5d2-0fffc297e592/IE6.0sp1-KB889669-Windows-2000-XP-x86-PTG.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/0/2/2/022618a0-aeae-4b02-ad88-9ceb3d512682/IE6.0sp1-KB889669-Windows-2000-XP-x86-RUS.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/c/5/3/c535a2fe-2eec-4f30-bd2a-9cc6cb8ab6ce/IE6.0sp1-KB889669-Windows-2000-XP-x86-SVE.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/0/2/7/0272dbc6-f5e7-44cb-ae1a-81ff9b06c0c6/IE6.0sp1-KB889669-Windows-2000-XP-x86-TRK.exe|updates/ie6sp1/ie6.0sp1-kb889669-windows-2000-xp-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\ie6sp1\IE6.0sp1-KB889669-Windows-2000-XP-x86-%WINLANG%.exe /passive /n /norestart"

:: Cumulative Update for Outlook Express 6 Service Pack 1 (KB887797)
:: Outlook Express for Windows update available
:: <http://support.microsoft.com/kb/887797>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=fda6678b-69b0-4813-9856-a1a3da675baf>
:: URL|ARA|http://download.microsoft.com/download/4/6/d/46d46645-0694-44b7-a0b8-5cafea54b1d0/IE6.0sp1-KB887797-Windows-2000-XP-x86-ARA.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/7/6/8/76805c72-b3f0-4a1f-83a1-1aa0f9f0bcde/IE6.0sp1-KB887797-Windows-2000-XP-x86-CSY.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/3/e/8/3e88045e-2961-47ad-adac-9064be8b6fa8/IE6.0sp1-KB887797-Windows-2000-XP-x86-DAN.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/6/c/1/6c1643fc-b366-4459-b992-5cf7eff8a86f/IE6.0sp1-KB887797-Windows-2000-XP-x86-DEU.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/a/9/2/a9241c87-43ac-4691-bfc0-aa75f5d804c1/IE6.0sp1-KB887797-Windows-2000-XP-x86-ELL.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/3/4/2/34288a12-9814-4719-b5f7-1663c49a0329/IE6.0sp1-KB887797-Windows-2000-XP-x86-ENU.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/4/1/8/41877530-d128-4bd0-9276-541e8bfcc7ca/IE6.0sp1-KB887797-Windows-2000-XP-x86-ESN.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/7/e/d/7ed360e9-382a-4b60-bed7-973dbae0f6cf/IE6.0sp1-KB887797-Windows-2000-XP-x86-FIN.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/7/6/a/76ac1755-b7a6-4b7c-8529-8880d6ddea5f/IE6.0sp1-KB887797-Windows-2000-XP-x86-FRA.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/d/4/a/d4a81a23-b102-43ca-b2f3-a0e0b9f731d0/IE6.0sp1-KB887797-Windows-2000-XP-x86-HEB.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/4/d/e/4de3c03e-530d-4926-ba6d-1c6cbb00894a/IE6.0sp1-KB887797-Windows-2000-XP-x86-HUN.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/f/1/d/f1d664d6-1a0f-4b4e-9cc6-c360e9ba5556/IE6.0sp1-KB887797-Windows-2000-XP-x86-ITA.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/9/e/d/9ed00a6f-fdb5-435b-b8f7-b3d8e8f9a66c/IE6.0sp1-KB887797-Windows-2000-XP-x86-JPN.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/a/c/2/ac22b1d3-31d8-45aa-9837-fcb4c8759a21/IE6.0sp1-KB887797-Windows-2000-XP-x86-KOR.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/8/0/6/8064b585-1918-44c0-b960-e9655986a9cd/IE6.0sp1-KB887797-Windows-2000-XP-x86-NLD.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/6/9/d/69d43776-0a1e-4ab8-9c95-fda4949bf84e/IE6.0sp1-KB887797-Windows-2000-XP-x86-NOR.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/e/b/8/eb8aedb7-8f1d-426e-b4a8-6a04a71eba9b/IE6.0sp1-KB887797-Windows-2000-XP-x86-PLK.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/5/7/c/57cf6d6e-83b8-4bb7-8f94-adb12f6f815a/IE6.0sp1-KB887797-Windows-2000-XP-x86-PTB.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/0/2/0/02047b7a-1535-4f13-b234-3db0cd8bc7d1/IE6.0sp1-KB887797-Windows-2000-XP-x86-PTG.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/4/5/1/4517dcc7-5982-4e0b-abc7-7524c07119bd/IE6.0sp1-KB887797-Windows-2000-XP-x86-RUS.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/0/0/8/00878f06-404e-47d2-9c60-e6684ff96d7a/IE6.0sp1-KB887797-Windows-2000-XP-x86-SVE.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/5/8/0/5808d5da-3088-4562-a84e-cab4bf801d65/IE6.0sp1-KB887797-Windows-2000-XP-x86-TRK.exe|updates/ie6sp1/ie6.0sp1-kb887797-windows-2000-xp-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\ie6sp1\IE6.0sp1-KB887797-Windows-2000-XP-x86-%WINLANG%.exe /passive /n /norestart"

:: Cumulative Security Update for Outlook Express 6 Service Pack 1 (KB823353)
:: Microsoft Security Bulletin MS04-018
:: "Cumulative Security Update for Outlook Express (823353)"
:: <http://www.microsoft.com/technet/security/bulletin/ms04-018.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=AD6A96BC-DAF0-4EAB-89B8-BD702B3E3E5D>
:: URL|ARA|http://download.microsoft.com/download/0/5/3/053cdafd-cb23-4e83-acc2-ed51d7f8ca5a/IE6.0sp1-KB823353-x86-ARA.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-ara.exe
:: URL|CSY|http://download.microsoft.com/download/2/2/6/22683f51-f765-4a2b-826c-e227a746dec5/IE6.0sp1-KB823353-x86-CSY.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-csy.exe
:: URL|DAN|http://download.microsoft.com/download/7/9/2/79200852-c62e-4dcd-80f2-371926a205be/IE6.0sp1-KB823353-x86-DAN.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-dan.exe
:: URL|DEU|http://download.microsoft.com/download/6/8/5/68554d08-32c0-477b-836b-b75270a54a26/IE6.0sp1-KB823353-x86-DEU.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-deu.exe
:: URL|ELL|http://download.microsoft.com/download/3/0/3/3036a7fd-bca8-44a8-bfa4-d924711e42c2/IE6.0sp1-KB823353-x86-ELL.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-ell.exe
:: URL|ENU|http://download.microsoft.com/download/1/1/d/11db0514-83d8-46a8-9d71-b01a86c20711/IE6.0sp1-KB823353-x86-ENU.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-enu.exe
:: URL|ESN|http://download.microsoft.com/download/1/c/f/1cf7e3f0-4cfb-46bc-83f2-1cc80f4b0f0e/IE6.0sp1-KB823353-x86-ESN.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-esn.exe
:: URL|FIN|http://download.microsoft.com/download/c/2/c/c2cd5b62-ee48-4c8a-8f01-a5bcb66b82c6/IE6.0sp1-KB823353-x86-FIN.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-fin.exe
:: URL|FRA|http://download.microsoft.com/download/8/7/9/87905b08-6524-4743-b2f5-b5b18dfb92b3/IE6.0sp1-KB823353-x86-FRA.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-fra.exe
:: URL|HEB|http://download.microsoft.com/download/2/b/b/2bb77aed-e5b9-47c1-8db2-2dc3aae61ffd/IE6.0sp1-KB823353-x86-HEB.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-heb.exe
:: URL|HUN|http://download.microsoft.com/download/c/4/1/c4134063-5b78-42d8-bda3-13594ef9fb48/IE6.0sp1-KB823353-x86-HUN.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-hun.exe
:: URL|ITA|http://download.microsoft.com/download/1/c/5/1c547819-2093-411c-8985-95234e582e56/IE6.0sp1-KB823353-x86-ITA.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-ita.exe
:: URL|JPN|http://download.microsoft.com/download/2/e/a/2eac424d-7fcf-4c17-9523-f1c498885263/IE6.0sp1-KB823353-x86-JPN.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/7/6/a/76a8b424-18b2-42fd-84d1-d8e0d23b84fc/IE6.0sp1-KB823353-x86-KOR.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-kor.exe
:: URL|NLD|http://download.microsoft.com/download/1/2/6/126e9e94-7cc3-4e49-bf08-21bc84e6b756/IE6.0sp1-KB823353-x86-NLD.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-nld.exe
:: URL|NOR|http://download.microsoft.com/download/4/8/5/485fe40d-0aca-43ce-99a9-f6ffd2d45bd6/IE6.0sp1-KB823353-x86-NOR.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-nor.exe
:: URL|PLK|http://download.microsoft.com/download/9/1/0/91028a54-5997-4db2-b4de-9fbbc421528c/IE6.0sp1-KB823353-x86-PLK.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-plk.exe
:: URL|PTB|http://download.microsoft.com/download/2/7/7/2771315e-476e-4642-a152-471b23392962/IE6.0sp1-KB823353-x86-PTB.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/4/6/4/46464e9e-c155-4e21-91cc-a2079130fc16/IE6.0sp1-KB823353-x86-PTG.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/5/e/6/5e6f2c0e-4db3-4310-893e-cff856dd97db/IE6.0sp1-KB823353-x86-RUS.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-rus.exe
:: URL|SVE|http://download.microsoft.com/download/f/a/d/fad326f0-ff36-4cb2-9732-d79d3c99da3c/IE6.0sp1-KB823353-x86-SVE.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-sve.exe
:: URL|TRK|http://download.microsoft.com/download/4/0/2/40221b6b-8a1b-49b3-8d99-70548c5f3f46/IE6.0sp1-KB823353-x86-TRK.exe|updates/ie6sp1/ie6.0sp1-kb823353-x86-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\ie6sp1\IE6.0sp1-KB823353-x86-%WINLANG%.exe /q /r:n"

:: Microsoft MSXML 3.0 Security Update: XMLHTTP Control in MSXML 4.0 Can Allow Access to Local Files
:: Microsoft Security Bulletin MS02-008
:: "XMLHTTP Control Can Allow Access to Local Files"
:: <http://www.microsoft.com/technet/security/bulletin/MS02-008.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=c13d688c-75d8-4bd8-992c-2c14cff159ac>
:: URL|ALL|http://download.microsoft.com/download/xml/Patch/3.0/W9XNT4MeXP/EN-US/Q318203_MSXML30_x86.exe|updates/ie6sp1/q318203_msxml30_x86.exe
todo.pl ".reboot-on 194 %Z%\updates\ie6sp1\Q318203_MSXML30_x86.exe /q:a /c:\"dahotfix /q /n\""

:: Internet Explorer 6 Security Patch for Windows 2000 and XP: Incorrect VBScript Handling in IE can Allow Web Pages to Read Local Files
:: Microsoft Security Bulletin MS02-009
:: "Incorrect VBScript Handling in IE can Allow Web Pages to Read Local Files"
:: <http://www.microsoft.com/technet/security/bulletin/MS02-009.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=08e148e3-03c9-43a9-98be-6a4065fe99d3>
:: URL|ARA|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/AR/vbs56nar.exe|updates/ie6sp1/vbs56nara.exe
:: URL|CSY|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/CS/vbs56ncs.exe|updates/ie6sp1/vbs56ncsy.exe
:: URL|DAN|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/DA/vbs56nda.exe|updates/ie6sp1/vbs56ndan.exe
:: URL|DEU|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/DE/vbs56nde.exe|updates/ie6sp1/vbs56ndeu.exe
:: URL|ELL|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/EL/vbs56nel.exe|updates/ie6sp1/vbs56nell.exe
:: URL|ENU|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/EN-US/vbs56nen.exe|updates/ie6sp1/vbs56nenu.exe
:: URL|ESN|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/ES/vbs56nes.exe|updates/ie6sp1/vbs56nesn.exe
:: URL|FIN|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/FI/vbs56nfi.exe|updates/ie6sp1/vbs56nfin.exe
:: URL|FRA|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/FR/vbs56nfr.exe|updates/ie6sp1/vbs56nfra.exe
:: URL|HEB|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/HE/vbs56nhe.exe|updates/ie6sp1/vbs56nheb.exe
:: URL|HUN|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/HU/vbs56nhu.exe|updates/ie6sp1/vbs56nhun.exe
:: URL|ITA|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/IT/vbs56nit.exe|updates/ie6sp1/vbs56nita.exe
:: URL|JPN|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/JA/vbs56njp.exe|updates/ie6sp1/jpn/vbs56njp.exe
:: URL|KOR|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/KO/vbs56nko.exe|updates/ie6sp1/vbs56nkor.exe
:: URL|NLD|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/NL/vbs56nnl.exe|updates/ie6sp1/vbs56nnld.exe
:: URL|NOR|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/NO/vbs56nno.exe|updates/ie6sp1/vbs56nnor.exe
:: URL|PLK|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/PL/vbs56npl.exe|updates/ie6sp1/vbs56nplk.exe
:: URL|PTB|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/PT-BR/vbs56nptb.exe|updates/ie6sp1/vbs56nptb.exe
:: URL|PTG|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/PT/vbs56nptg.exe|updates/ie6sp1/vbs56nptg.exe
:: URL|RUS|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/RU/vbs56nru.exe|updates/ie6sp1/vbs56nrus.exe
:: URL|SVE|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/SV/vbs56nsv.exe|updates/ie6sp1/vbs56nsve.exe
:: URL|TRK|http://download.microsoft.com/download/IE60/Patch/Q318089/NT5XP/TR/vbs56ntr.exe|updates/ie6sp1/vbs56ntrk.exe
todo.pl ".reboot-on 194 %Z%\updates\ie6sp1\vbs56n%WINLANG%.exe /q /r:n"

:: Internet Explorer 6 Service Pack 1
:: <http://support.microsoft.com/?kbid=326489>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=1e1550cb-5e5d-48f5-b02b-20b602228de6>
:: URL|ARA|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/AR/ie6setup.exe|packages/ie6sp1/ara/ie6setup.exe
:: URL|CSY|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/CS/ie6setup.exe|packages/ie6sp1/csy/ie6setup.exe
:: URL|DAN|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/DA/ie6setup.exe|packages/ie6sp1/dan/ie6setup.exe
:: URL|DEU|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/DE/ie6setup.exe|packages/ie6sp1/deu/ie6setup.exe
:: URL|ELL|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/EL/ie6setup.exe|packages/ie6sp1/ell/ie6setup.exe
:: URL|ENU|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/EN-US/ie6setup.exe|packages/ie6sp1/enu/ie6setup.exe
:: URL|ESN|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/ES/ie6setup.exe|packages/ie6sp1/esn/ie6setup.exe
:: URL|FIN|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/FI/ie6setup.exe|packages/ie6sp1/fin/ie6setup.exe
:: URL|FRA|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/FR/ie6setup.exe|packages/ie6sp1/fra/ie6setup.exe
:: URL|HEB|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/HE/ie6setup.exe|packages/ie6sp1/heb/ie6setup.exe
:: URL|HUN|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/HU/ie6setup.exe|packages/ie6sp1/hun/ie6setup.exe
:: URL|ITA|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/IT/ie6setup.exe|packages/ie6sp1/ita/ie6setup.exe
:: URL|JPN|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/JA/ie6setup.exe|packages/ie6sp1/jpn/ie6setup.exe
:: URL|KOR|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/KO/ie6setup.exe|packages/ie6sp1/kor/ie6setup.exe
:: URL|NLD|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/NL/ie6setup.exe|packages/ie6sp1/nld/ie6setup.exe
:: URL|NOR|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/NO/ie6setup.exe|packages/ie6sp1/nor/ie6setup.exe
:: URL|PLK|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/PL/ie6setup.exe|packages/ie6sp1/plk/ie6setup.exe
:: URL|PTB|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/PT-BR/ie6setup.exe|packages/ie6sp1/ptb/ie6setup.exe
:: URL|PTG|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/PT/ie6setup.exe|packages/ie6sp1/ptg/ie6setup.exe
:: URL|RUS|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/RU/ie6setup.exe|packages/ie6sp1/rus/ie6setup.exe
:: URL|SVE|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/SV/ie6setup.exe|packages/ie6sp1/sve/ie6setup.exe
:: URL|TRK|http://download.microsoft.com/download/ie6sp1/finrel/6_sp1/W98NT42KMeXP/TR/ie6setup.exe|packages/ie6sp1/trk/ie6setup.exe
::
:: See <http://support.microsoft.com/kb/257249> for instructions.
:: Download Internet Explorer 6 SP1 installer from Microsoft then issue:
:: ie6setup.exe /c:"ie6wzd.exe /d /s:""#E"""
::
:: This will allow you to download all necessary files to
:: Z:\packages\ie6sp1\%WINLANG%, so that the installer does not need
:: to download them every time.
::
todo.pl ".reboot-on 194 %Z%\packages\ie6sp1\%WINLANG%\ie6setup.exe /q /r:n"

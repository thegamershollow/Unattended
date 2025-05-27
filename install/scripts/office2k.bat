:: OPTIONAL: Install Office 2000 and its updates
@Echo off
:: Reminder: Commands will be executed in reverse order.

:: Reboot after installing everything (superstition).
todo.pl .reboot


:: Security Update for Office 2000 (KB923274)
:: Description of the security update for Office 2000: October 10, 2006
:: <http://support.microsoft.com/kb/923274>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=E0C7E1E4-7859-4C7E-898E-1CF05014885B>
:: URL|ARA|http://download.microsoft.com/download/1/9/4/194e3c77-9759-46b1-b642-3994f48e5e90/office2000-kb923274-fullfile-ara.exe|updates/office2k/office2000-kb923274-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/d/1/5/d15671cb-80e2-4733-81e3-af8e3026d552/office2000-kb923274-fullfile-csy.exe|updates/office2k/office2000-kb923274-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/3/d/8/3d8883ff-f3b2-4b81-9981-b9154ea21d28/office2000-kb923274-fullfile-dan.exe|updates/office2k/office2000-kb923274-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/7/4/0/7401dd70-b36a-46ea-98dc-df305b0c30b0/office2000-kb923274-fullfile-deu.exe|updates/office2k/office2000-kb923274-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/a/b/a/aba28ad1-a2f9-4851-855b-3f4beb29c210/office2000-kb923274-fullfile-ell.exe|updates/office2k/office2000-kb923274-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/5/a/a/5aa36269-5b5a-4597-b91d-a0e213f656e3/office2000-kb923274-fullfile-enu.exe|updates/office2k/office2000-kb923274-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/6/5/1/651e5fd9-ad98-420c-a9c8-62386f9ff8f8/office2000-kb923274-fullfile-esn.exe|updates/office2k/office2000-kb923274-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/3/0/1/3018beed-c2bd-4f6e-b776-78a3164dd605/office2000-kb923274-fullfile-fin.exe|updates/office2k/office2000-kb923274-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/2/7/a/27a485bd-8d9d-479c-80e8-c2b81264fb53/office2000-kb923274-fullfile-fra.exe|updates/office2k/office2000-kb923274-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/6/e/6/6e62409b-ef77-4c68-a39a-c982d39a8481/office2000-kb923274-fullfile-heb.exe|updates/office2k/office2000-kb923274-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/4/c/f/4cf19a59-0793-428c-b591-afb1e50b2330/office2000-kb923274-fullfile-hun.exe|updates/office2k/office2000-kb923274-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/e/2/3/e23925f4-1591-4ac1-8b08-8d90b4c7c2fc/office2000-kb923274-fullfile-ita.exe|updates/office2k/office2000-kb923274-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/a/a/6/aa676044-af22-4f32-bb91-6856676891ef/office2000-kb923274-fullfile-jpn.exe|updates/office2k/office2000-kb923274-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/f/2/e/f2e638a8-04a1-4c09-b457-6df34a01b66d/office2000-kb923274-fullfile-kor.exe|updates/office2k/office2000-kb923274-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/f/a/3/fa38e81c-1d22-4cd2-9f7a-cd276fc6ad21/office2000-kb923274-fullfile-nld.exe|updates/office2k/office2000-kb923274-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/a/4/f/a4faa2f7-297d-46c0-983f-a1d5cef52902/office2000-kb923274-fullfile-nor.exe|updates/office2k/office2000-kb923274-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/8/7/2/8723d03e-9eb6-4457-8ca9-f335ec8b2e5e/office2000-kb923274-fullfile-plk.exe|updates/office2k/office2000-kb923274-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/b/8/4/b84cce9d-5a7c-4309-a423-5166399b55c1/office2000-kb923274-fullfile-ptb.exe|updates/office2k/office2000-kb923274-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/6/f/e/6fe945bd-3255-4c97-adef-12987c7398d2/office2000-kb923274-fullfile-ptg.exe|updates/office2k/office2000-kb923274-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/3/9/2/39211079-8946-4313-a873-0af758b0138b/office2000-kb923274-fullfile-rus.exe|updates/office2k/office2000-kb923274-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/3/e/0/3e050cf0-1d84-4e87-b7af-349776bfba58/office2000-kb923274-fullfile-sve.exe|updates/office2k/office2000-kb923274-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/1/c/b/1cb3b60c-7740-4384-80b7-e71b6fabf124/office2000-kb923274-fullfile-trk.exe|updates/office2k/office2000-kb923274-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\office2000-kb923274-fullfile-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb923274.txt /p MSO9ff.msp REBOOT=ReallySuppress\""

:: Security Update for PowerPoint 2000 (KB923093)
:: Description of the security update for PowerPoint 2000: October 10, 2006
:: <http://support.microsoft.com/kb/923093>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=14A61FDA-BFE2-47CA-8313-40B772359994>
:: URL|ARA|http://download.microsoft.com/download/5/9/4/594d494c-3cff-4de1-8cf1-0538976be228/office2000-kb923093-fullfile-ara.exe|updates/office2k/office2000-kb923093-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/2/1/4/214ee1cb-15f6-4939-b723-39b3c543a6bf/office2000-kb923093-fullfile-csy.exe|updates/office2k/office2000-kb923093-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/7/b/f/7bf46cc2-d739-4126-8f67-3fdad475c6a1/office2000-kb923093-fullfile-dan.exe|updates/office2k/office2000-kb923093-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/7/5/f/75f1f72f-1821-4866-9ed4-b8b82b8917d8/office2000-kb923093-fullfile-deu.exe|updates/office2k/office2000-kb923093-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/a/7/8/a78bb909-be1e-49f0-9673-8b7b2889d761/office2000-kb923093-fullfile-ell.exe|updates/office2k/office2000-kb923093-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/3/0/0/30086a1e-2005-46a4-a7cc-76a596e3eac8/office2000-kb923093-fullfile-enu.exe|updates/office2k/office2000-kb923093-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/7/5/d/75dc2fbb-8ec9-496e-b602-1beac00dc9a3/office2000-kb923093-fullfile-esn.exe|updates/office2k/office2000-kb923093-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/0/8/a/08a50968-e0e6-4b4f-b883-1b7e28fa6787/office2000-kb923093-fullfile-fin.exe|updates/office2k/office2000-kb923093-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/6/1/d/61dc1075-57a7-4256-bd81-a0ea737dfa08/office2000-kb923093-fullfile-fra.exe|updates/office2k/office2000-kb923093-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/5/1/1/5115b41a-cfe8-43d8-b63d-0c4a322e94ce/office2000-kb923093-fullfile-heb.exe|updates/office2k/office2000-kb923093-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/5/b/c/5bcf33c2-971c-4957-b5f7-2e04a20da85a/office2000-kb923093-fullfile-hun.exe|updates/office2k/office2000-kb923093-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/0/a/0/0a072d9e-dcb2-49c8-acff-65806f0a4328/office2000-kb923093-fullfile-ita.exe|updates/office2k/office2000-kb923093-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/1/b/e/1bedc252-f5ef-4f81-a9b3-8eb5299cd369/office2000-kb923093-fullfile-jpn.exe|updates/office2k/office2000-kb923093-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/b/a/6/ba6f1f88-8ccf-4a34-838c-d3dd3dce14de/office2000-kb923093-fullfile-kor.exe|updates/office2k/office2000-kb923093-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/b/c/2/bc26949d-4c5f-491f-8c27-5812e82c44cf/office2000-kb923093-fullfile-nld.exe|updates/office2k/office2000-kb923093-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/a/a/8/aa8b89da-26cd-4783-80cc-a4081c7c3449/office2000-kb923093-fullfile-nor.exe|updates/office2k/office2000-kb923093-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/d/8/e/d8e949f3-8142-47c7-9a02-9705516e1cfd/office2000-kb923093-fullfile-plk.exe|updates/office2k/office2000-kb923093-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/2/8/5/2854ebaa-5e6b-44f3-afb5-b31db20ae8b4/office2000-kb923093-fullfile-ptb.exe|updates/office2k/office2000-kb923093-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/b/4/2/b424051c-3fa9-417b-af2c-7e1774334ccc/office2000-kb923093-fullfile-ptg.exe|updates/office2k/office2000-kb923093-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/f/c/5/fc5d2422-5d99-4404-8cd3-2305626becb2/office2000-kb923093-fullfile-rus.exe|updates/office2k/office2000-kb923093-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/a/a/4/aa455199-b6f0-40ec-b99e-54463d7d9f03/office2000-kb923093-fullfile-sve.exe|updates/office2k/office2000-kb923093-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/3/6/d/36da3480-b571-4062-be8d-91c25d27e92e/office2000-kb923093-fullfile-trk.exe|updates/office2k/office2000-kb923093-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\office2000-kb923093-fullfile-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb923093.txt /p POWERPNTff.msp REBOOT=ReallySuppress\""

:: Security Update for Excel 2000 (KB923090)
:: Description of the security update for Excel 2000: October 10, 2006
:: <http://support.microsoft.com/kb/923090>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=A4B2A672-481B-4AF6-89FE-DE8D321D99E0>
:: URL|ARA|http://download.microsoft.com/download/8/3/f/83f5fe5b-c4c1-486e-b5c3-2edcb2f363ca/office2000-kb923090-fullfile-ara.exe|updates/office2k/office2000-kb923090-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/2/5/1/251cee0b-2d56-4d69-ae59-e63416e05a03/office2000-kb923090-fullfile-csy.exe|updates/office2k/office2000-kb923090-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/7/b/6/7b619eda-824e-4f3c-8f9e-71ff1b47a765/office2000-kb923090-fullfile-dan.exe|updates/office2k/office2000-kb923090-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/f/6/2/f62bc228-f10e-4342-adb3-a1878132d58b/office2000-kb923090-fullfile-deu.exe|updates/office2k/office2000-kb923090-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/7/9/2/7927cf6c-7d91-4803-aa0f-e54955fb550f/office2000-kb923090-fullfile-ell.exe|updates/office2k/office2000-kb923090-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/3/6/d/36d75630-5526-404e-aea4-24fb5c8cce1f/office2000-kb923090-fullfile-enu.exe|updates/office2k/office2000-kb923090-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/d/7/f/d7f593af-6301-47de-afac-1098eb0a4aa1/office2000-kb923090-fullfile-esn.exe|updates/office2k/office2000-kb923090-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/6/6/9/669ebc84-c817-49a3-9ada-25bb56112909/office2000-kb923090-fullfile-fin.exe|updates/office2k/office2000-kb923090-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/3/c/9/3c92cbb2-ec49-453b-9227-5b724aa4cf8e/office2000-kb923090-fullfile-fra.exe|updates/office2k/office2000-kb923090-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/7/3/3/733f4cdc-2beb-4d0d-b066-6afa7d782770/office2000-kb923090-fullfile-heb.exe|updates/office2k/office2000-kb923090-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/7/d/8/7d8e9d7b-7f9c-45d3-9c80-17a5e0c3b1c2/office2000-kb923090-fullfile-hun.exe|updates/office2k/office2000-kb923090-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/b/d/5/bd59a942-c808-4aaa-9423-a84b6683d329/office2000-kb923090-fullfile-ita.exe|updates/office2k/office2000-kb923090-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/6/c/4/6c476c27-36b3-454d-a6da-6cc014ebbeac/office2000-kb923090-fullfile-jpn.exe|updates/office2k/office2000-kb923090-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/1/a/f/1aff0471-c94a-469b-a3f0-11228c16404e/office2000-kb923090-fullfile-kor.exe|updates/office2k/office2000-kb923090-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/f/1/4/f14a72c9-8a22-4bc3-ab3e-2e0df721ebae/office2000-kb923090-fullfile-nld.exe|updates/office2k/office2000-kb923090-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/d/f/d/dfd2acf1-4ae1-48f3-a275-81e74536bac6/office2000-kb923090-fullfile-nor.exe|updates/office2k/office2000-kb923090-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/c/4/3/c4349882-560f-4292-98b6-2b14d07aec73/office2000-kb923090-fullfile-plk.exe|updates/office2k/office2000-kb923090-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/d/1/e/d1ec2d93-670e-40af-abcd-ec2589535eef/office2000-kb923090-fullfile-ptb.exe|updates/office2k/office2000-kb923090-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/5/b/6/5b6689de-32a5-49a3-8a90-bf71bf1269fe/office2000-kb923090-fullfile-ptg.exe|updates/office2k/office2000-kb923090-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/e/8/8/e88bdd7e-0a26-4903-85aa-a6f3c4acccb1/office2000-kb923090-fullfile-rus.exe|updates/office2k/office2000-kb923090-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/7/5/0/750d42eb-fc2b-4028-afd6-9309dcf904bb/office2000-kb923090-fullfile-sve.exe|updates/office2k/office2000-kb923090-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/b/7/7/b77073db-a4a0-4d0b-afd1-2597276fea62/office2000-kb923090-fullfile-trk.exe|updates/office2k/office2000-kb923090-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\office2000-kb923090-fullfile-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb923090.txt /p EXCELff.msp REBOOT=ReallySuppress\""

:: Security Update for Word 2000 (KB920910)
:: Description of the security update for Word 2000: October 10, 2006
:: <http://support.microsoft.com/kb/920910>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=CFC85449-4941-4DA5-A919-1DA388054E83>
:: URL|ARA|http://download.microsoft.com/download/4/8/e/48e3344f-e0c1-416a-a2e0-ab9adbbe7267/office2000-kb920910-fullfile-ara.exe|updates/office2k/office2000-kb920910-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/b/8/e/b8e7c9d1-5200-4a24-a233-8b598c4758bd/office2000-kb920910-fullfile-csy.exe|updates/office2k/office2000-kb920910-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/c/c/2/cc2db217-c44c-4902-b571-7cea45d48e9f/office2000-kb920910-fullfile-dan.exe|updates/office2k/office2000-kb920910-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/b/6/e/b6eb8a24-06c4-4b33-a94b-f7c672ba6ba8/office2000-kb920910-fullfile-deu.exe|updates/office2k/office2000-kb920910-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/e/3/9/e39b0204-1cf1-43e5-b18c-84f5dafac27e/office2000-kb920910-fullfile-ell.exe|updates/office2k/office2000-kb920910-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/c/8/7/c87a6cc3-0614-47d0-8b31-ba8851b48197/office2000-kb920910-fullfile-enu.exe|updates/office2k/office2000-kb920910-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/2/8/c/28cb3d49-4d31-4dc7-95fa-852676e25742/office2000-kb920910-fullfile-esn.exe|updates/office2k/office2000-kb920910-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/3/a/e/3ae48f25-f2a8-4fa7-9079-933165b3bcf6/office2000-kb920910-fullfile-fin.exe|updates/office2k/office2000-kb920910-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/c/b/d/cbdfa597-513f-42e1-b755-639327893210/office2000-kb920910-fullfile-fra.exe|updates/office2k/office2000-kb920910-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/6/6/8/668d993c-e46a-40d5-ba3d-86324928cff1/office2000-kb920910-fullfile-heb.exe|updates/office2k/office2000-kb920910-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/2/8/e/28e0c362-2cd6-4711-b7b8-a9181b6e04fe/office2000-kb920910-fullfile-hun.exe|updates/office2k/office2000-kb920910-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/4/2/2/422fc12c-31a6-422e-b946-29a856ceeb8d/office2000-kb920910-fullfile-ita.exe|updates/office2k/office2000-kb920910-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/f/e/e/fee61057-b6d1-4719-9642-f19c9ab68e9c/office2000-kb920910-fullfile-jpn.exe|updates/office2k/office2000-kb920910-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/6/5/d/65dede86-e30c-424e-9579-f6ccf1cf59d1/office2000-kb920910-fullfile-kor.exe|updates/office2k/office2000-kb920910-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/9/f/b/9fb7c735-ddb0-48c3-9c9f-6a25181666e6/office2000-kb920910-fullfile-nld.exe|updates/office2k/office2000-kb920910-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/9/0/1/901d3138-2b78-4df8-9e63-79e9f5c293d1/office2000-kb920910-fullfile-nor.exe|updates/office2k/office2000-kb920910-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/8/a/3/8a34b9e4-f4b3-44c1-9ec0-f2f07c638b56/office2000-kb920910-fullfile-plk.exe|updates/office2k/office2000-kb920910-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/4/1/f/41fd75f2-1e14-4ff2-9868-dbd6dc56d45a/office2000-kb920910-fullfile-ptb.exe|updates/office2k/office2000-kb920910-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/9/1/a/91a3e3e3-afa5-4f04-8ca3-9cc8bd3cccfe/office2000-kb920910-fullfile-ptg.exe|updates/office2k/office2000-kb920910-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/d/9/6/d96b3833-4774-466c-9097-920121422eb7/office2000-kb920910-fullfile-rus.exe|updates/office2k/office2000-kb920910-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/1/7/8/17808db9-67ab-4447-b487-bcbf3632249e/office2000-kb920910-fullfile-sve.exe|updates/office2k/office2000-kb920910-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/f/a/5/fa58597b-42fe-473b-ab2a-931698d577c4/office2000-kb920910-fullfile-trk.exe|updates/office2k/office2000-kb920910-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\office2000-kb920910-fullfile-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb920910.txt /p WINWORDff.msp REBOOT=ReallySuppress\""

:: Security Update for Office 2000 (KB921568)
:: Microsoft Security Bulletin MS06-048
:: "Vulnerabilities in Microsoft Office Could Allow Remote Code Execution (922968)"
:: <http://www.microsoft.com/technet/security/Bulletin/MS06-048.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=B7B5615B-7C20-4C49-892F-7F4CCC2D6006>
:: URL|ARA|http://download.microsoft.com/download/d/4/7/d4742f86-fe60-43ac-b2bb-7072001f8481/office2000-kb921568-fullfile-ara.exe|updates/office2k/office2000-kb921568-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/c/8/c/c8c7d4c4-b288-4f79-8f19-809318e05908/office2000-kb921568-fullfile-csy.exe|updates/office2k/office2000-kb921568-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/6/1/3/6136963a-fbe7-4344-9b35-63529a8d18b5/office2000-kb921568-fullfile-dan.exe|updates/office2k/office2000-kb921568-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/c/7/0/c705526c-1ffb-4352-b78c-db85f862acad/office2000-kb921568-fullfile-deu.exe|updates/office2k/office2000-kb921568-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/2/0/0/20060ac3-488d-4c8b-8579-9f76fe15ecef/office2000-kb921568-fullfile-ell.exe|updates/office2k/office2000-kb921568-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/5/6/9/56939857-8027-4183-9ec7-c5dada6005a9/office2000-kb921568-fullfile-enu.exe|updates/office2k/office2000-kb921568-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/b/7/3/b73cf451-3502-4175-a098-26452686edea/office2000-kb921568-fullfile-esn.exe|updates/office2k/office2000-kb921568-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/6/b/0/6b0274a5-d88e-4eb3-a8b9-668a3154f51b/office2000-kb921568-fullfile-fin.exe|updates/office2k/office2000-kb921568-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/0/9/0/09092718-1234-4ebe-825f-8585132c9d90/office2000-kb921568-fullfile-fra.exe|updates/office2k/office2000-kb921568-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/d/b/8/db85e2d6-03d6-45cd-a370-fdca301a750b/office2000-kb921568-fullfile-heb.exe|updates/office2k/office2000-kb921568-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/b/7/0/b703c95f-5e81-4a64-838a-6a2f2f3c6ca5/office2000-kb921568-fullfile-hun.exe|updates/office2k/office2000-kb921568-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/b/1/b/b1b9d743-120b-4ae5-bc5d-c311295ce445/office2000-kb921568-fullfile-ita.exe|updates/office2k/office2000-kb921568-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/2/d/7/2d7e6905-ef33-4878-8e29-08021ff66ba5/office2000-kb921568-fullfile-jpn.exe|updates/office2k/office2000-kb921568-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/8/1/c/81c5d501-6fcb-4100-b1e9-5bbb87b49402/office2000-kb921568-fullfile-kor.exe|updates/office2k/office2000-kb921568-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/d/6/0/d606983c-81d4-4482-a83a-796da3b0e1ef/office2000-kb921568-fullfile-nld.exe|updates/office2k/office2000-kb921568-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/4/8/6/486ac85f-2278-455a-aabc-7511054e9b72/office2000-kb921568-fullfile-nor.exe|updates/office2k/office2000-kb921568-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/9/8/3/983dd1f3-ac64-44b5-a3bb-ff495ebbb52d/office2000-kb921568-fullfile-plk.exe|updates/office2k/office2000-kb921568-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/5/f/3/5f3cf284-34f3-454c-80d9-039611985353/office2000-kb921568-fullfile-ptb.exe|updates/office2k/office2000-kb921568-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/c/6/a/c6a9769e-47bd-4a53-b2f7-081f5b82ccf2/office2000-kb921568-fullfile-ptg.exe|updates/office2k/office2000-kb921568-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/4/c/d/4cd0cdeb-8f7e-4fb6-ab84-579694b54f0e/office2000-kb921568-fullfile-rus.exe|updates/office2k/office2000-kb921568-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/8/2/c/82c52e7c-3b9b-42fa-a27c-3051ca292a2b/office2000-kb921568-fullfile-sve.exe|updates/office2k/office2000-kb921568-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/6/b/3/6b3db78b-f357-4481-a921-e1de968d7ad4/office2000-kb921568-fullfile-trk.exe|updates/office2k/office2000-kb921568-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\office2000-kb921568-fullfile-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb921568.txt /p MSO9ff.msp REBOOT=ReallySuppress\""

:: Security Update for Office 2000 (KB920822)
:: Microsoft Security Bulletin MS06-047
:: "Vulnerability in Microsoft Visual Basic for Applications Could Allow Remote Code Execution (921645)"
:: <http://www.microsoft.com/technet/security/Bulletin/MS06-047.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=837A4FA9-FABC-4119-9AAF-2C8663029D2B>
:: URL|ARA|http://download.microsoft.com/download/d/8/0/d805e6de-8fdd-4bef-ba2b-eebc80b602c4/office2000-kb920822-fullfile-ara.exe|updates/office2k/office2000-kb920822-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/8/3/6/8368f569-88bb-4042-afe7-bd0101d93983/office2000-kb920822-fullfile-csy.exe|updates/office2k/office2000-kb920822-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/2/e/d/2ed5d8f6-d33e-4efd-bcdf-023d9d9bd893/office2000-kb920822-fullfile-dan.exe|updates/office2k/office2000-kb920822-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/9/6/f/96f835a2-b850-4d36-a825-d3d8c5a8cc98/office2000-kb920822-fullfile-deu.exe|updates/office2k/office2000-kb920822-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/8/2/e/82e41a2b-5b12-4d11-a890-819163589141/office2000-kb920822-fullfile-ell.exe|updates/office2k/office2000-kb920822-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/a/3/1/a31781b0-e3a3-440d-af3e-6f6d128022c9/office2000-kb920822-fullfile-enu.exe|updates/office2k/office2000-kb920822-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/e/d/5/ed567c86-551d-489d-8b80-69d0cb4bb42d/office2000-kb920822-fullfile-esn.exe|updates/office2k/office2000-kb920822-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/a/2/c/a2c97517-67d2-473b-8d4e-045bed05eed5/office2000-kb920822-fullfile-fin.exe|updates/office2k/office2000-kb920822-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/4/1/7/4172ddae-e223-4c3d-a58e-4198983592a2/office2000-kb920822-fullfile-fra.exe|updates/office2k/office2000-kb920822-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/0/b/c/0bc964fd-5822-49b7-9a67-8490b167434b/office2000-kb920822-fullfile-heb.exe|updates/office2k/office2000-kb920822-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/5/c/3/5c31fa60-8a69-4237-bcbe-89259722a9c3/office2000-kb920822-fullfile-hun.exe|updates/office2k/office2000-kb920822-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/6/7/f/67f4d441-ce33-46bc-ba14-d141e47c6251/office2000-kb920822-fullfile-ita.exe|updates/office2k/office2000-kb920822-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/e/6/9/e69d1440-8cf3-48d9-929b-9bb149417dcc/office2000-kb920822-fullfile-jpn.exe|updates/office2k/office2000-kb920822-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/2/4/c/24c02d88-22ed-4f7b-bcca-b33fd67fad62/office2000-kb920822-fullfile-kor.exe|updates/office2k/office2000-kb920822-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/9/8/3/9834d335-0dd1-445d-8ca4-7fa55fc22f38/office2000-kb920822-fullfile-nld.exe|updates/office2k/office2000-kb920822-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/f/2/5/f25d5474-c600-4fe0-89d0-b114c487a921/office2000-kb920822-fullfile-nor.exe|updates/office2k/office2000-kb920822-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/8/0/9/80966cd7-63b9-4df3-9ff7-360c831ec3b3/office2000-kb920822-fullfile-plk.exe|updates/office2k/office2000-kb920822-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/6/7/4/674f61f3-8d26-4d85-98f3-f5a0859c6464/office2000-kb920822-fullfile-ptb.exe|updates/office2k/office2000-kb920822-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/3/d/d/3ddbc81a-400e-43ee-a82f-b03c2c683864/office2000-kb920822-fullfile-ptg.exe|updates/office2k/office2000-kb920822-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/2/b/5/2b5bb1a4-32fd-42ba-bf43-97fe9d7cd8ce/office2000-kb920822-fullfile-rus.exe|updates/office2k/office2000-kb920822-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/9/3/3/9338797b-85be-4375-a2a3-e488d21ce6c3/office2000-kb920822-fullfile-sve.exe|updates/office2k/office2000-kb920822-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/2/3/c/23c10bbe-3b59-4a68-a3c5-03dfc0f0c191/office2000-kb920822-fullfile-trk.exe|updates/office2k/office2000-kb920822-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\office2000-kb920822-fullfile-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb920822.txt /p VBE6ff.msp REBOOT=ReallySuppress\""

:: Security Update for Excel 2000 (KB918424)
:: Description of the security update for Microsoft Excel 2000: July 11, 2006
:: <http://support.microsoft.com/kb/918424>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=D8A2AD6D-582C-4185-ADE1-671D2128D3EE>
:: URL|ARA|http://download.microsoft.com/download/9/0/3/903a56fc-1719-430f-962d-5d3aece16462/office2000-kb918424-fullfile-ara.exe|updates/office2k/office2000-kb918424-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/e/a/b/eab357c4-4ee4-4078-a78f-011954d09303/office2000-kb918424-fullfile-csy.exe|updates/office2k/office2000-kb918424-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/3/f/3/3f31a196-7477-409d-8e71-d79f05cfe2b1/office2000-kb918424-fullfile-dan.exe|updates/office2k/office2000-kb918424-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/8/1/e/81e43f62-0b0a-44f0-a9ee-e889a84585d6/office2000-kb918424-fullfile-deu.exe|updates/office2k/office2000-kb918424-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/d/3/4/d34233fd-6a67-4bc4-9c02-0dbfcdb2da59/office2000-kb918424-fullfile-ell.exe|updates/office2k/office2000-kb918424-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/4/f/f/4ffb141e-2294-4942-a73c-028220283408/office2000-kb918424-fullfile-enu.exe|updates/office2k/office2000-kb918424-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/9/7/1/9714e1a5-bf85-44cb-b3cb-74bff713f79f/office2000-kb918424-fullfile-esn.exe|updates/office2k/office2000-kb918424-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/e/f/6/ef620c68-d3a2-4836-8425-e81868259e67/office2000-kb918424-fullfile-fin.exe|updates/office2k/office2000-kb918424-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/e/7/6/e7691f30-6ccb-4a91-899c-70c5382ab7ea/office2000-kb918424-fullfile-fra.exe|updates/office2k/office2000-kb918424-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/6/8/a/68a8899d-0dd3-497c-97a6-ab6004815ea7/office2000-kb918424-fullfile-heb.exe|updates/office2k/office2000-kb918424-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/1/e/6/1e606c9f-d12d-48d1-b71e-6cc9e0643fa8/office2000-kb918424-fullfile-hun.exe|updates/office2k/office2000-kb918424-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/b/4/2/b4261dff-214d-46c7-b31e-32bd02d7362b/office2000-kb918424-fullfile-ita.exe|updates/office2k/office2000-kb918424-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/c/2/a/c2a0b58b-6e9f-4c95-9f5f-d227fffb6ae9/office2000-kb918424-fullfile-jpn.exe|updates/office2k/office2000-kb918424-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/b/1/5/b15b98d5-6507-41f1-81e6-86215c8b43d6/office2000-kb918424-fullfile-kor.exe|updates/office2k/office2000-kb918424-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/e/b/f/ebf6e125-d284-47f7-b0b4-471d7a6d85d8/office2000-kb918424-fullfile-nld.exe|updates/office2k/office2000-kb918424-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/5/9/e/59e4d7ff-5b64-46d3-8555-87737f350c66/office2000-kb918424-fullfile-nor.exe|updates/office2k/office2000-kb918424-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/d/0/4/d04c6ec0-9846-4023-ac80-fb0d81b8f3b9/office2000-kb918424-fullfile-plk.exe|updates/office2k/office2000-kb918424-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/d/8/8/d889806a-70fe-477c-a7f2-7da7b042f56c/office2000-kb918424-fullfile-ptb.exe|updates/office2k/office2000-kb918424-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/1/5/d/15d536c6-cf1d-42fa-b0e7-e19624117da3/office2000-kb918424-fullfile-ptg.exe|updates/office2k/office2000-kb918424-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/a/4/f/a4f840cd-1d6d-454d-972c-ea2cc0b97572/office2000-kb918424-fullfile-rus.exe|updates/office2k/office2000-kb918424-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/d/0/d/d0d33877-2533-43d0-ac1c-c07b5364b84b/office2000-kb918424-fullfile-sve.exe|updates/office2k/office2000-kb918424-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/e/6/4/e64045fc-20bb-45e9-8f7c-eb8dcc7848ac/office2000-kb918424-fullfile-trk.exe|updates/office2k/office2000-kb918424-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\office2000-kb918424-fullfile-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb918424.txt /p EXCELff.msp REBOOT=ReallySuppress\""

:: Security Update for Office 2000 (KB914797)
:: Description of the security update for Office 2000: July 11, 2006
:: <http://support.microsoft.com/kb/914797>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=9B0A1795-DA76-4935-AA90-E6AEDC0CDE6B>
:: URL|ARA|http://download.microsoft.com/download/e/9/d/e9ddc74f-be9f-48e0-83f7-3f9c4791c03e/office2000-kb914797-fullfile-ara.exe|updates/office2k/office2000-kb914797-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/f/e/6/fe643546-a822-4d99-9974-3dc56542b15c/office2000-kb914797-fullfile-csy.exe|updates/office2k/office2000-kb914797-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/5/0/4/5045d2c9-238a-4eab-a9f0-5b93c7935700/office2000-kb914797-fullfile-dan.exe|updates/office2k/office2000-kb914797-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/b/e/a/bea187e8-bba1-401e-9910-12366f391d82/office2000-kb914797-fullfile-deu.exe|updates/office2k/office2000-kb914797-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/7/0/a/70a56294-3347-4aff-ac80-69e1747969ad/office2000-kb914797-fullfile-ell.exe|updates/office2k/office2000-kb914797-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/f/f/8/ff86ea47-28a6-4bbd-b6ac-44a8522f85ea/office2000-kb914797-fullfile-enu.exe|updates/office2k/office2000-kb914797-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/9/0/a/90a6213b-0df6-4832-bfac-8bb73fe9de06/office2000-kb914797-fullfile-esn.exe|updates/office2k/office2000-kb914797-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/a/8/8/a88270f8-680f-4654-bb67-156da6cd20b3/office2000-kb914797-fullfile-fin.exe|updates/office2k/office2000-kb914797-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/7/a/1/7a1b9647-82ef-489f-9c43-57ad39faa937/office2000-kb914797-fullfile-fra.exe|updates/office2k/office2000-kb914797-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/3/d/c/3dc55ffc-5728-4cd2-9401-6bc4bd47b81e/office2000-kb914797-fullfile-heb.exe|updates/office2k/office2000-kb914797-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/8/f/5/8f5ca06d-8590-4667-88a6-117fbd9ae0ec/office2000-kb914797-fullfile-hun.exe|updates/office2k/office2000-kb914797-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/f/a/9/fa9852c0-70c6-45de-b15b-df8abbbcda75/office2000-kb914797-fullfile-ita.exe|updates/office2k/office2000-kb914797-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/e/0/6/e0611156-348f-4e4d-bb62-d31e4827b8be/office2000-kb914797-fullfile-jpn.exe|updates/office2k/office2000-kb914797-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/1/6/8/1688b68d-c48a-406d-bec8-8b4639410a30/office2000-kb914797-fullfile-kor.exe|updates/office2k/office2000-kb914797-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/9/3/c/93cb2807-07ed-4a22-baa3-d7f3cfd8fbdd/office2000-kb914797-fullfile-nld.exe|updates/office2k/office2000-kb914797-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/d/f/0/df07bc2c-29a8-4635-8024-292a9c19ead6/office2000-kb914797-fullfile-nor.exe|updates/office2k/office2000-kb914797-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/4/3/c/43c2674c-2df4-4532-abb0-2abbe91d76e0/office2000-kb914797-fullfile-plk.exe|updates/office2k/office2000-kb914797-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/1/f/8/1f8d47c9-202b-4a92-8a3c-16cf33832d44/office2000-kb914797-fullfile-ptb.exe|updates/office2k/office2000-kb914797-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/9/4/7/94785a61-4ca2-47d2-a1b2-56a0f53cd7e9/office2000-kb914797-fullfile-ptg.exe|updates/office2k/office2000-kb914797-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/3/c/a/3cac5adc-e800-42e6-a1d5-6d087f65cb22/office2000-kb914797-fullfile-rus.exe|updates/office2k/office2000-kb914797-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/d/a/1/da1755e2-0c7e-49ea-b9b0-4bb032bc13b2/office2000-kb914797-fullfile-sve.exe|updates/office2k/office2000-kb914797-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/6/f/6/6f6b0364-3641-4a88-a020-9c49f31cb721/office2000-kb914797-fullfile-trk.exe|updates/office2k/office2000-kb914797-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\office2000-kb914797-fullfile-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb914797.txt /p GPFILTff.msp REBOOT=ReallySuppress\""

:: Security Update for PowerPoint 2000 (KB916520)
:: Description of the security update for Microsoft PowerPoint 2000: June 13, 2006
:: "SUMMARY"
:: <http://support.microsoft.com/kb/916520>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=F635F2CB-CFEE-4129-BB77-4779A3B05674>
:: URL|ARA|http://download.microsoft.com/download/e/7/d/e7d2aa7b-09c1-4219-8512-9ff84197f143/office2000-kb916520-fullfile-ara.exe|updates/office2k/office2000-kb916520-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/9/0/a/90a37169-147b-445c-8d9c-b24848512371/office2000-kb916520-fullfile-csy.exe|updates/office2k/office2000-kb916520-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/d/3/c/d3c717e1-56b4-4409-bbc4-fefd12ffafa8/office2000-kb916520-fullfile-dan.exe|updates/office2k/office2000-kb916520-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/0/1/2/01214e51-840a-4937-9dc7-4857350ff4b3/office2000-kb916520-fullfile-deu.exe|updates/office2k/office2000-kb916520-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/8/3/b/83b59f7a-0109-43cc-95dd-9ef8704e1018/office2000-kb916520-fullfile-ell.exe|updates/office2k/office2000-kb916520-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/8/c/d/8cd18498-aa99-4afb-8c57-52d704211757/office2000-kb916520-fullfile-enu.exe|updates/office2k/office2000-kb916520-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/9/2/d/92d85f58-a582-4aea-99ef-2a886a32e31c/office2000-kb916520-fullfile-esn.exe|updates/office2k/office2000-kb916520-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/4/b/6/4b678421-df3e-4073-8a1c-b4fd9e490782/office2000-kb916520-fullfile-fin.exe|updates/office2k/office2000-kb916520-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/b/9/9/b99397a9-f0bf-4ba6-a338-bbf45e82d0d0/office2000-kb916520-fullfile-fra.exe|updates/office2k/office2000-kb916520-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/e/9/a/e9aa3191-5bae-4511-8f85-7e06144dc733/office2000-kb916520-fullfile-heb.exe|updates/office2k/office2000-kb916520-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/1/9/5/1955b2dc-4b67-4265-8d7d-12c30f07d8c0/office2000-kb916520-fullfile-hun.exe|updates/office2k/office2000-kb916520-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/e/1/7/e17c37b5-9ea1-450a-9c39-faee50415529/office2000-kb916520-fullfile-ita.exe|updates/office2k/office2000-kb916520-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/d/b/1/db1f72ff-dcc5-49eb-a6b5-fc8e3f589d6b/office2000-kb916520-fullfile-jpn.exe|updates/office2k/office2000-kb916520-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/4/6/2/462db984-6290-4c2c-89fb-24f3d72bba5c/office2000-kb916520-fullfile-kor.exe|updates/office2k/office2000-kb916520-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/1/1/9/1192a387-71e5-4cde-b843-fe4e13d8f8c2/office2000-kb916520-fullfile-nld.exe|updates/office2k/office2000-kb916520-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/6/d/3/6d34aaac-cf5f-4c1a-b050-ae6430fb3ef5/office2000-kb916520-fullfile-nor.exe|updates/office2k/office2000-kb916520-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/d/1/7/d17c1254-459d-473b-8d27-e6a0afc6250b/office2000-kb916520-fullfile-plk.exe|updates/office2k/office2000-kb916520-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/d/f/f/dff94e14-da44-4b79-bd0b-eafece947912/office2000-kb916520-fullfile-ptb.exe|updates/office2k/office2000-kb916520-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/5/1/6/5164346c-21ff-4a25-b2f6-35d98e1866ed/office2000-kb916520-fullfile-ptg.exe|updates/office2k/office2000-kb916520-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/f/0/c/f0cdd3d9-660f-449d-9961-faf04fd85376/office2000-kb916520-fullfile-rus.exe|updates/office2k/office2000-kb916520-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/5/a/a/5aa455c5-91e8-4bf1-b76b-9409bd6b155f/office2000-kb916520-fullfile-sve.exe|updates/office2k/office2000-kb916520-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/7/e/f/7ef3d9f7-d412-43c0-9bcd-340f7b7bdd80/office2000-kb916520-fullfile-trk.exe|updates/office2k/office2000-kb916520-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\office2000-kb916520-fullfile-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb916520.txt /p POWERPNTff.msp REBOOT=ReallySuppress\""

:: Security Update for Word 2000 (KB917345)
:: Description of the security update for Microsoft Word 2000: June 13, 2006
:: <http://support.microsoft.com/kb/917345>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=507D97B5-8B20-41B2-AE8B-27F2BF5198CD>
:: URL|ARA|http://download.microsoft.com/download/0/d/1/0d18d1c8-1a0c-4565-adce-8935cb870c70/office2000-kb917345-fullfile-ara.exe|updates/office2k/office2000-kb917345-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/3/7/f/37fc31a6-b4e2-4264-95cf-08633043a025/office2000-kb917345-fullfile-csy.exe|updates/office2k/office2000-kb917345-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/8/8/6/886baefe-8e12-4780-8e09-3195cf1e8daf/office2000-kb917345-fullfile-dan.exe|updates/office2k/office2000-kb917345-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/b/b/5/bb572ded-8154-47d6-a431-e2a5e8e763b8/office2000-kb917345-fullfile-deu.exe|updates/office2k/office2000-kb917345-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/9/6/f/96f8e85b-b0e3-4880-b416-2bf7752cf526/office2000-kb917345-fullfile-ell.exe|updates/office2k/office2000-kb917345-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/3/5/3/353ea965-4ce1-440a-947e-b3272578543c/office2000-kb917345-fullfile-enu.exe|updates/office2k/office2000-kb917345-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/1/c/8/1c8c2478-6d0d-4c01-afd9-a53856e469da/office2000-kb917345-fullfile-esn.exe|updates/office2k/office2000-kb917345-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/1/e/a/1eafe371-0cac-4a75-a2c1-9e44d8438a99/office2000-kb917345-fullfile-fin.exe|updates/office2k/office2000-kb917345-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/3/e/6/3e6acca1-a0de-4061-b135-3c8c49f32ed1/office2000-kb917345-fullfile-fra.exe|updates/office2k/office2000-kb917345-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/b/c/d/bcdea327-5c43-4ee4-8ffb-10a7a02cd3b4/office2000-kb917345-fullfile-heb.exe|updates/office2k/office2000-kb917345-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/d/b/e/dbeee292-0de4-4ac3-9ffc-c930a9e29d7f/office2000-kb917345-fullfile-hun.exe|updates/office2k/office2000-kb917345-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/8/c/1/8c1665ed-882d-4350-b366-baf3b75ecc68/office2000-kb917345-fullfile-ita.exe|updates/office2k/office2000-kb917345-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/7/7/f/77f0aefc-15c8-4d00-b364-e005a6e6e493/office2000-kb917345-fullfile-jpn.exe|updates/office2k/office2000-kb917345-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/4/c/7/4c79328b-f7e6-4580-86c7-fb4f43f1e6a4/office2000-kb917345-fullfile-kor.exe|updates/office2k/office2000-kb917345-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/8/7/c/87ce2f82-0647-4eb2-a795-ed5fa317cb93/office2000-kb917345-fullfile-nld.exe|updates/office2k/office2000-kb917345-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/e/7/2/e720b594-eae2-4a05-8174-36b0ae69eb4a/office2000-kb917345-fullfile-nor.exe|updates/office2k/office2000-kb917345-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/0/1/e/01e9aa0e-081d-4a5b-8b28-62e795cb6e6e/office2000-kb917345-fullfile-plk.exe|updates/office2k/office2000-kb917345-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/c/6/6/c662ff27-4fa4-4885-901d-9c752db6e76c/office2000-kb917345-fullfile-ptb.exe|updates/office2k/office2000-kb917345-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/8/5/9/859bb752-d096-4855-8a7d-f0e8561e6867/office2000-kb917345-fullfile-ptg.exe|updates/office2k/office2000-kb917345-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/a/c/1/ac1ab742-8039-4eb0-b816-2acf263d58f4/office2000-kb917345-fullfile-rus.exe|updates/office2k/office2000-kb917345-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/7/0/2/7027b4db-8584-417b-b39d-3985ccac9113/office2000-kb917345-fullfile-sve.exe|updates/office2k/office2000-kb917345-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/6/1/5/615f37d8-25db-4108-80a5-dbf2da37de5c/office2000-kb917345-fullfile-trk.exe|updates/office2k/office2000-kb917345-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\office2000-kb917345-fullfile-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb917345.txt /p WINWORDff.msp REBOOT=ReallySuppress\""

:: Security Update for Word 2000 (KB887977)
:: Description of the security update for Microsoft Word 2000: April 12, 2005
:: <http://support.microsoft.com/kb/887977>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=9F4B6868-2F94-478F-B0BC-0DA3E0571523>
:: URL|ARA|http://download.microsoft.com/download/2/2/f/22f209cb-479a-4ac5-971f-417df57ddbc4/office2000-kb887977-client-ara.exe|updates/office2k/office2000-kb887977-client-ara.exe
:: URL|CSY|http://download.microsoft.com/download/5/c/d/5cdb4452-60c7-4b03-b647-337e8a914f29/office2000-kb887977-client-csy.exe|updates/office2k/office2000-kb887977-client-csy.exe
:: URL|DAN|http://download.microsoft.com/download/f/f/0/ff093f4d-6b0f-4791-afd5-4aea987c76f7/office2000-kb887977-client-dan.exe|updates/office2k/office2000-kb887977-client-dan.exe
:: URL|DEU|http://download.microsoft.com/download/7/6/f/76f6ed8c-ecfe-4220-abb8-b4cab007a6d5/office2000-kb887977-client-deu.exe|updates/office2k/office2000-kb887977-client-deu.exe
:: URL|ELL|http://download.microsoft.com/download/a/1/f/a1f64503-d433-4410-9354-dca385e66fdb/office2000-kb887977-client-ell.exe|updates/office2k/office2000-kb887977-client-ell.exe
:: URL|ENU|http://download.microsoft.com/download/2/5/f/25fb0117-a114-46df-968e-c76d9cddd3cd/office2000-kb887977-client-enu.exe|updates/office2k/office2000-kb887977-client-enu.exe
:: URL|ESN|http://download.microsoft.com/download/d/3/e/d3e71005-94f1-4d99-8764-83b6480ac364/office2000-kb887977-client-esn.exe|updates/office2k/office2000-kb887977-client-esn.exe
:: URL|FIN|http://download.microsoft.com/download/c/7/c/c7ccec3a-27c8-472d-9816-d3125ec1f99c/office2000-kb887977-client-fin.exe|updates/office2k/office2000-kb887977-client-fin.exe
:: URL|FRA|http://download.microsoft.com/download/8/9/e/89e63842-15d8-4485-a829-6a97d4d7f24e/office2000-kb887977-client-fra.exe|updates/office2k/office2000-kb887977-client-fra.exe
:: URL|HEB|http://download.microsoft.com/download/9/9/7/997c286b-a7ef-4701-b470-ab24fc437166/office2000-kb887977-client-heb.exe|updates/office2k/office2000-kb887977-client-heb.exe
:: URL|HUN|http://download.microsoft.com/download/a/9/0/a90f2c50-6511-4b94-9f5c-4442e29a3711/office2000-kb887977-client-hun.exe|updates/office2k/office2000-kb887977-client-hun.exe
:: URL|ITA|http://download.microsoft.com/download/1/d/3/1d3ac148-55b7-4c0a-86c9-52c6f57b4756/office2000-kb887977-client-ita.exe|updates/office2k/office2000-kb887977-client-ita.exe
:: URL|JPN|http://download.microsoft.com/download/1/8/0/1804eab9-f17d-4336-a1e8-42a9284508b4/office2000-kb887977-client-jpn.exe|updates/office2k/office2000-kb887977-client-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/0/6/e/06e97b34-b8f8-43fd-9529-0e515f2ed677/office2000-kb887977-client-kor.exe|updates/office2k/office2000-kb887977-client-kor.exe
:: URL|NLD|http://download.microsoft.com/download/d/4/7/d47f2ccb-cf62-40f4-9358-70fd9e92e389/office2000-kb887977-client-nld.exe|updates/office2k/office2000-kb887977-client-nld.exe
:: URL|NOR|http://download.microsoft.com/download/7/a/4/7a4ea829-4359-4dcf-b6d9-73419c9f562d/office2000-kb887977-client-nor.exe|updates/office2k/office2000-kb887977-client-nor.exe
:: URL|PLK|http://download.microsoft.com/download/d/d/7/dd791f92-3e4f-4216-99a9-7786472d9f64/office2000-kb887977-client-plk.exe|updates/office2k/office2000-kb887977-client-plk.exe
:: URL|PTB|http://download.microsoft.com/download/4/4/4/4444474b-d9f5-4e30-a574-3fae66c65616/office2000-kb887977-client-ptb.exe|updates/office2k/office2000-kb887977-client-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/c/7/e/c7e3ba3f-ace2-42cb-ad5e-6e2a6d3c5775/office2000-kb887977-client-ptg.exe|updates/office2k/office2000-kb887977-client-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/0/c/2/0c206421-ac61-4e4f-86f6-3c4724b3edff/office2000-kb887977-client-rus.exe|updates/office2k/office2000-kb887977-client-rus.exe
:: URL|SVE|http://download.microsoft.com/download/f/e/4/fe47611e-db36-4036-b5d4-9faf4eac3147/office2000-kb887977-client-sve.exe|updates/office2k/office2000-kb887977-client-sve.exe
:: URL|TRK|http://download.microsoft.com/download/4/7/c/47ccac8c-504a-4b20-96f7-2b22ae734da8/office2000-kb887977-client-trk.exe|updates/office2k/office2000-kb887977-client-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\office2000-kb887977-client-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb887977.txt /p WINWORDop.msp REBOOT=ReallySuppress\""

:: Security Update for Excel 2000 (KB873372)
:: <http://support.microsoft.com/?kbid=873372>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=B0C40C24-4DDE-45AF-8433-6DBDDD030C30>
:: URL|ARA|http://download.microsoft.com/download/4/9/6/4969fc37-7654-48c9-93b1-1d15a9a93b10/office2000-kb873372-client-ara.exe|updates/office2k/office2000-kb873372-client-ara.exe
:: URL|CSY|http://download.microsoft.com/download/8/c/3/8c38a7e4-3ec7-4de2-bbe0-7ba6258cb4e6/office2000-kb873372-client-csy.exe|updates/office2k/office2000-kb873372-client-csy.exe
:: URL|DAN|http://download.microsoft.com/download/3/2/3/32328b2d-34a6-49ed-a97b-9f4f2856b4e0/office2000-kb873372-client-dan.exe|updates/office2k/office2000-kb873372-client-dan.exe
:: URL|DEU|http://download.microsoft.com/download/c/2/2/c220b93b-3ddd-4ded-83df-dc52f5e38706/office2000-kb873372-client-deu.exe|updates/office2k/office2000-kb873372-client-deu.exe
:: URL|ELL|http://download.microsoft.com/download/7/2/a/72a2ac93-9769-4ef9-b8f7-413893f2a7d9/office2000-kb873372-client-ell.exe|updates/office2k/office2000-kb873372-client-ell.exe
:: URL|ENU|http://download.microsoft.com/download/b/0/3/b03abaa0-dd54-4223-b43e-130d338678b1/office2000-kb873372-client-enu.exe|updates/office2k/office2000-kb873372-client-enu.exe
:: URL|ESN|http://download.microsoft.com/download/f/1/f/f1f7057f-fa26-4b12-9e56-32ad1d621388/office2000-kb873372-client-esn.exe|updates/office2k/office2000-kb873372-client-esn.exe
:: URL|FIN|http://download.microsoft.com/download/1/5/a/15a1ac8c-fd79-45ba-b9b6-7e457766102b/office2000-kb873372-client-fin.exe|updates/office2k/office2000-kb873372-client-fin.exe
:: URL|FRA|http://download.microsoft.com/download/1/3/1/131c65f3-2f95-4d62-bb50-db1ad2a86551/office2000-kb873372-client-fra.exe|updates/office2k/office2000-kb873372-client-fra.exe
:: URL|HEB|http://download.microsoft.com/download/e/7/e/e7e7e190-c385-43fe-b6d7-5080e6a413f0/office2000-kb873372-client-heb.exe|updates/office2k/office2000-kb873372-client-heb.exe
:: URL|HUN|http://download.microsoft.com/download/a/3/1/a310af07-5f6f-4d98-b6ac-0437b600a588/office2000-kb873372-client-hun.exe|updates/office2k/office2000-kb873372-client-hun.exe
:: URL|ITA|http://download.microsoft.com/download/9/b/9/9b980f24-6416-4248-99d2-a2faa9f2e765/office2000-kb873372-client-ita.exe|updates/office2k/office2000-kb873372-client-ita.exe
:: URL|JPN|http://download.microsoft.com/download/7/1/b/71b0d70e-19cb-4e2f-82e6-09f5d7c63a0a/office2000-kb873372-client-jpn.exe|updates/office2k/office2000-kb873372-client-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/b/4/e/b4e35b3d-bef4-4796-b13a-dd2ab953e133/office2000-kb873372-client-kor.exe|updates/office2k/office2000-kb873372-client-kor.exe
:: URL|NLD|http://download.microsoft.com/download/6/6/d/66dede04-8898-4bad-84f1-90f0e2dfccf9/office2000-kb873372-client-nld.exe|updates/office2k/office2000-kb873372-client-nld.exe
:: URL|NOR|http://download.microsoft.com/download/b/4/b/b4bffecd-ac04-4d75-bc97-836e8e57af86/office2000-kb873372-client-nor.exe|updates/office2k/office2000-kb873372-client-nor.exe
:: URL|PLK|http://download.microsoft.com/download/6/8/3/6832878d-1a95-4060-a926-78df336799dd/office2000-kb873372-client-plk.exe|updates/office2k/office2000-kb873372-client-plk.exe
:: URL|PTB|http://download.microsoft.com/download/7/4/e/74e7cd5d-1feb-4fe2-b0d8-0427a927a5b9/office2000-kb873372-client-ptb.exe|updates/office2k/office2000-kb873372-client-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/b/0/6/b069e5e3-29ef-4225-ab7d-3a4f943ed4a3/office2000-kb873372-client-ptg.exe|updates/office2k/office2000-kb873372-client-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/7/7/7/777b0deb-2bf2-4e49-89a0-9e5091140d00/office2000-kb873372-client-rus.exe|updates/office2k/office2000-kb873372-client-rus.exe
:: URL|SVE|http://download.microsoft.com/download/4/a/1/4a1f1cc2-9f1c-4c60-b681-2a17afe49229/office2000-kb873372-client-sve.exe|updates/office2k/office2000-kb873372-client-sve.exe
:: URL|TRK|http://download.microsoft.com/download/f/0/d/f0dc7dd6-b896-4dcd-860f-be57a72434e7/office2000-kb873372-client-trk.exe|updates/office2k/office2000-kb873372-client-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\office2000-kb873372-client-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb873372.txt /p EXCELop.msp REBOOT=ReallySuppress\""

:: Security Update for Office 2000: WordPerfect 5.x Converter (KB873380)
:: <http://support.microsoft.com/?kbid=873380>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=88f52e69-99e1-4892-9a53-84e5dfadfe6b>
:: URL|ARA|http://download.microsoft.com/download/6/a/5/6a5b905d-53f2-4af8-8544-2d8961e10e24/office2000-kb873380-client-ara.exe|updates/office2k/office2000-kb873380-client-ara.exe
:: URL|CSY|http://download.microsoft.com/download/6/d/6/6d6fb65f-3a69-4993-b0a2-c53eeed67853/office2000-kb873380-client-csy.exe|updates/office2k/office2000-kb873380-client-csy.exe
:: URL|DAN|http://download.microsoft.com/download/5/b/7/5b7d31a1-ac70-40d5-a224-8aeb2a7f8ac1/office2000-kb873380-client-dan.exe|updates/office2k/office2000-kb873380-client-dan.exe
:: URL|DEU|http://download.microsoft.com/download/d/d/e/dde936ed-5116-4aab-938f-1a054ea2a52b/office2000-kb873380-client-deu.exe|updates/office2k/office2000-kb873380-client-deu.exe
:: URL|ELL|http://download.microsoft.com/download/f/3/b/f3b33c72-e057-4f7b-9866-82b0e82ff2c2/office2000-kb873380-client-ell.exe|updates/office2k/office2000-kb873380-client-ell.exe
:: URL|ENU|http://download.microsoft.com/download/3/0/c/30cfcf2c-bfcf-40d9-be26-b0e1354ae07e/office2000-kb873380-client-enu.exe|updates/office2k/office2000-kb873380-client-enu.exe
:: URL|ESN|http://download.microsoft.com/download/0/5/8/058523ce-18a4-49b3-8779-431580a0e474/office2000-kb873380-client-esn.exe|updates/office2k/office2000-kb873380-client-esn.exe
:: URL|FIN|http://download.microsoft.com/download/f/c/c/fcc899ac-1951-4c4b-9c5c-7768f248a05e/office2000-kb873380-client-fin.exe|updates/office2k/office2000-kb873380-client-fin.exe
:: URL|FRA|http://download.microsoft.com/download/8/8/a/88af99ae-24d6-4a2e-9164-44aa5bcdf44f/office2000-kb873380-client-fra.exe|updates/office2k/office2000-kb873380-client-fra.exe
:: URL|HEB|http://download.microsoft.com/download/4/a/f/4af1e6df-4304-4bc5-9110-b3e9c253ecf6/office2000-kb873380-client-heb.exe|updates/office2k/office2000-kb873380-client-heb.exe
:: URL|HUN|http://download.microsoft.com/download/0/2/1/021155f7-70c3-44fc-95eb-71860bc7c07c/office2000-kb873380-client-hun.exe|updates/office2k/office2000-kb873380-client-hun.exe
:: URL|ITA|http://download.microsoft.com/download/c/5/4/c549c8ba-a968-4ec2-ab14-c5a04c17af4e/office2000-kb873380-client-ita.exe|updates/office2k/office2000-kb873380-client-ita.exe
:: URL|JPN|http://download.microsoft.com/download/0/0/2/002dcb79-74d7-4b00-973d-963dd71a5a5b/office2000-kb873380-client-jpn.exe|updates/office2k/office2000-kb873380-client-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/c/a/e/cae85838-ba31-4abc-bbc6-9876f4b5d6c4/office2000-kb873380-client-kor.exe|updates/office2k/office2000-kb873380-client-kor.exe
:: URL|NLD|http://download.microsoft.com/download/f/f/3/ff331a7e-deea-46c9-9cc6-e844f36034fe/office2000-kb873380-client-nld.exe|updates/office2k/office2000-kb873380-client-nld.exe
:: URL|NOR|http://download.microsoft.com/download/6/c/d/6cdeccb0-67d2-4097-8bb2-1e0d77340eb7/office2000-kb873380-client-nor.exe|updates/office2k/office2000-kb873380-client-nor.exe
:: URL|PLK|http://download.microsoft.com/download/5/8/b/58b66562-a9a4-4b8b-9e30-53dbd2bec104/office2000-kb873380-client-plk.exe|updates/office2k/office2000-kb873380-client-plk.exe
:: URL|PTB|http://download.microsoft.com/download/3/e/a/3ea7494a-051f-4078-b8bd-b2c43df72ee5/office2000-kb873380-client-ptb.exe|updates/office2k/office2000-kb873380-client-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/0/4/8/048cd874-077b-4d8a-b681-dc1672aa0ea8/office2000-kb873380-client-ptg.exe|updates/office2k/office2000-kb873380-client-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/3/f/4/3f44e7dc-b6bb-4011-95b3-743a7b3bc6b3/office2000-kb873380-client-rus.exe|updates/office2k/office2000-kb873380-client-rus.exe
:: URL|SVE|http://download.microsoft.com/download/d/b/7/db724641-96a5-4943-9861-fa905fbf7e2e/office2000-kb873380-client-sve.exe|updates/office2k/office2000-kb873380-client-sve.exe
:: URL|TRK|http://download.microsoft.com/download/1/3/2/132cb48e-496a-419e-a7ef-92390212f5cf/office2000-kb873380-client-trk.exe|updates/office2k/office2000-kb873380-client-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\office2000-kb873380-client-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb873380.txt /p MSCONVop.msp REBOOT=ReallySuppress\""

:: Excel 2000 Security Patch: KB830349
:: <http://support.microsoft.com?kbid=830349>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=9904b2a6-0cf0-4cf2-aae0-062bdd7417d5>
:: URL|ARA|http://download.microsoft.com/download/7/f/1/7f189b9d-7bd3-487d-a56f-2c9cefdcfd35/office2000-kb830349-client-ara.exe|updates/office2k/office2000-kb830349-client-ara.exe
:: URL|CSY|http://download.microsoft.com/download/c/a/2/ca25f420-69d6-4b63-8390-b71524024a90/office2000-kb830349-client-csy.exe|updates/office2k/office2000-kb830349-client-csy.exe
:: URL|DAN|http://download.microsoft.com/download/7/a/7/7a717090-6061-4fd4-bd9d-ab3944ef2838/office2000-kb830349-client-dan.exe|updates/office2k/office2000-kb830349-client-dan.exe
:: URL|DEU|http://download.microsoft.com/download/1/7/8/17855a38-c437-4a68-bab5-935871d36f4b/office2000-kb830349-client-deu.exe|updates/office2k/office2000-kb830349-client-deu.exe
:: URL|ELL|http://download.microsoft.com/download/1/2/d/12dd0b02-6eb5-4b74-a029-b47c820c8e58/office2000-kb830349-client-ell.exe|updates/office2k/office2000-kb830349-client-ell.exe
:: URL|ENU|http://download.microsoft.com/download/3/4/e/34e4d08b-f015-4bc8-84e6-f827ecbc4107/office2000-kb830349-client-enu.exe|updates/office2k/office2000-kb830349-client-enu.exe
:: URL|ESN|http://download.microsoft.com/download/a/3/f/a3f8c19a-c896-40d2-98c8-26f8ed8e566e/office2000-kb830349-client-esn.exe|updates/office2k/office2000-kb830349-client-esn.exe
:: URL|FIN|http://download.microsoft.com/download/7/5/4/7543c0bc-f513-47a1-a5ef-0db44e8547fd/office2000-kb830349-client-fin.exe|updates/office2k/office2000-kb830349-client-fin.exe
:: URL|FRA|http://download.microsoft.com/download/8/4/4/844d78e5-3637-404f-a0ad-b1458430456c/office2000-kb830349-client-fra.exe|updates/office2k/office2000-kb830349-client-fra.exe
:: URL|HEB|http://download.microsoft.com/download/e/3/3/e332fc80-7286-49bb-aea4-a280c08f0285/office2000-kb830349-client-heb.exe|updates/office2k/office2000-kb830349-client-heb.exe
:: URL|HUN|http://download.microsoft.com/download/b/8/1/b8126f1e-fc76-412d-acbf-15ad09c3d9aa/office2000-kb830349-client-hun.exe|updates/office2k/office2000-kb830349-client-hun.exe
:: URL|ITA|http://download.microsoft.com/download/b/a/b/babcaa5a-3a95-4fef-a257-08d050064bd6/office2000-kb830349-client-ita.exe|updates/office2k/office2000-kb830349-client-ita.exe
:: URL|JPN|http://download.microsoft.com/download/a/7/3/a7350eef-626b-4bfc-802c-21db4b7a56d7/office2000-kb830349-client-jpn.exe|updates/office2k/office2000-kb830349-client-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/f/b/0/fb04fd99-eede-4b92-a552-1f120275561b/office2000-kb830349-client-kor.exe|updates/office2k/office2000-kb830349-client-kor.exe
:: URL|NLD|http://download.microsoft.com/download/e/e/7/ee74120e-cbb7-4f27-bc1f-933a4c4d6576/office2000-kb830349-client-nld.exe|updates/office2k/office2000-kb830349-client-nld.exe
:: URL|NOR|http://download.microsoft.com/download/2/9/4/294a42af-4c84-4fe6-b311-9221b4150fb9/office2000-kb830349-client-nor.exe|updates/office2k/office2000-kb830349-client-nor.exe
:: URL|PLK|http://download.microsoft.com/download/3/2/d/32dba614-0d3c-434b-bd61-00b5a9acb38f/office2000-kb830349-client-plk.exe|updates/office2k/office2000-kb830349-client-plk.exe
:: URL|PTB|http://download.microsoft.com/download/0/d/6/0d6d934b-9bf9-4a79-b167-6b2167a4554d/office2000-kb830349-client-ptb.exe|updates/office2k/office2000-kb830349-client-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/5/d/7/5d77b2b5-afcd-4344-b16f-3d28f4131ace/office2000-kb830349-client-ptg.exe|updates/office2k/office2000-kb830349-client-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/a/b/f/abf7c3a2-296f-4219-ad58-653d334d7b51/office2000-kb830349-client-rus.exe|updates/office2k/office2000-kb830349-client-rus.exe
:: URL|SVE|http://download.microsoft.com/download/7/7/b/77b08dce-b8db-4b2f-b200-3178680fd7f0/office2000-kb830349-client-sve.exe|updates/office2k/office2000-kb830349-client-sve.exe
:: URL|TRK|http://download.microsoft.com/download/3/d/b/3db7c0fd-3e06-4c98-a13c-f7653bca89df/office2000-kb830349-client-trk.exe|updates/office2k/office2000-kb830349-client-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\office2000-kb830349-client-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb830349.txt /p EXCELop.msp REBOOT=ReallySuppress\""

:: Word 2000 Security Patch: KB830347
:: <http://support.microsoft.com?kbid=830347>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=d2bd626e-401b-4fc7-bbac-2c6b6e66d984>
:: URL|ARA|http://download.microsoft.com/download/4/2/f/42fa3673-bf31-4a72-952c-a297d8b09e26/office2000-kb830347-client-ara.exe|updates/office2k/office2000-kb830347-client-ara.exe
:: URL|CSY|http://download.microsoft.com/download/7/d/a/7da8f9cd-1123-427f-9c95-134815e9c45c/office2000-kb830347-client-csy.exe|updates/office2k/office2000-kb830347-client-csy.exe
:: URL|DAN|http://download.microsoft.com/download/d/a/e/dae300b1-f4f1-494f-9747-fd2d8060ad5c/office2000-kb830347-client-dan.exe|updates/office2k/office2000-kb830347-client-dan.exe
:: URL|DEU|http://download.microsoft.com/download/d/a/8/da813d3f-35ee-48be-83b1-1c5f79a9a6be/office2000-kb830347-client-deu.exe|updates/office2k/office2000-kb830347-client-deu.exe
:: URL|ELL|http://download.microsoft.com/download/4/a/0/4a0b4e9b-0529-47bf-bd18-9cefd52755f1/office2000-kb830347-client-ell.exe|updates/office2k/office2000-kb830347-client-ell.exe
:: URL|ENU|http://download.microsoft.com/download/f/2/2/f225f9c6-87ef-45bd-a4f7-cc08bb14f4da/Office2000-kb830347-client-enu.exe|updates/office2k/office2000-kb830347-client-enu.exe
:: URL|ESN|http://download.microsoft.com/download/1/d/1/1d1f6bbd-55cf-43c8-8bb7-38d22a33188d/office2000-kb830347-client-esn.exe|updates/office2k/office2000-kb830347-client-esn.exe
:: URL|FIN|http://download.microsoft.com/download/9/e/7/9e72f5ff-f249-4d8d-a530-b71e8784556f/office2000-kb830347-client-fin.exe|updates/office2k/office2000-kb830347-client-fin.exe
:: URL|FRA|http://download.microsoft.com/download/9/0/6/906470de-51f8-48af-9fd3-3ae305ba035e/office2000-kb830347-client-fra.exe|updates/office2k/office2000-kb830347-client-fra.exe
:: URL|HEB|http://download.microsoft.com/download/1/a/d/1ad612a2-273c-41f6-9c7a-63277cff2cd9/office2000-kb830347-client-heb.exe|updates/office2k/office2000-kb830347-client-heb.exe
:: URL|HUN|http://download.microsoft.com/download/c/c/9/cc9411b2-fa5b-4c04-b351-9805a42e58c5/office2000-kb830347-client-hun.exe|updates/office2k/office2000-kb830347-client-hun.exe
:: URL|ITA|http://download.microsoft.com/download/d/0/2/d02e6ae8-d3a4-443c-a525-6f9f70b032eb/office2000-kb830347-client-ita.exe|updates/office2k/office2000-kb830347-client-ita.exe
:: URL|JPN|http://download.microsoft.com/download/c/2/5/c254e36f-0e43-45e8-90df-4ff2918d5e62/office2000-kb830347-client-jpn.exe|updates/office2k/office2000-kb830347-client-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/2/0/d/20dada6f-ea31-4b99-aa4c-73136bb20339/office2000-kb830347-client-kor.exe|updates/office2k/office2000-kb830347-client-kor.exe
:: URL|NLD|http://download.microsoft.com/download/c/e/8/ce8709c4-f1e6-4de6-933f-07b0c7c6ab39/office2000-kb830347-client-nld.exe|updates/office2k/office2000-kb830347-client-nld.exe
:: URL|NOR|http://download.microsoft.com/download/5/6/c/56c4ca5f-e09e-4e83-8770-8375dd7edd24/office2000-kb830347-client-nor.exe|updates/office2k/office2000-kb830347-client-nor.exe
:: URL|PLK|http://download.microsoft.com/download/c/2/2/c229d774-4c13-4e39-b00e-d88aaad6f2b8/office2000-kb830347-client-plk.exe|updates/office2k/office2000-kb830347-client-plk.exe
:: URL|PTB|http://download.microsoft.com/download/e/5/5/e5542167-05aa-4fcd-8bb1-624c174eaf27/office2000-kb830347-client-ptb.exe|updates/office2k/office2000-kb830347-client-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/1/b/c/1bc56ec9-9f14-45be-9235-9fbc17a906ec/office2000-kb830347-client-ptg.exe|updates/office2k/office2000-kb830347-client-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/8/b/f/8bfb329a-743b-4efa-bcd5-a020133fd71a/office2000-kb830347-client-rus.exe|updates/office2k/office2000-kb830347-client-rus.exe
:: URL|SVE|http://download.microsoft.com/download/f/f/8/ff8250f5-2add-4583-8e65-ccbabc5a7af9/office2000-kb830347-client-sve.exe|updates/office2k/office2000-kb830347-client-sve.exe
:: URL|TRK|http://download.microsoft.com/download/7/f/3/7f3bf03b-526d-4f89-be84-e2130764a5c1/office2000-kb830347-client-trk.exe|updates/office2k/office2000-kb830347-client-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\Office2000-kb830347-client-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb830347.txt /p WINWORDop.msp REBOOT=ReallySuppress\""

:: Access 2000 Snapshot Viewer Security Patch: KB826292
:: <http://support.microsoft.com/?kbid=826292>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=f6cb9c8e-16e3-422d-86dd-7ed5671fb8d4>
:: URL|ARA|http://download.microsoft.com/download/2/f/f/2ff85c45-47cd-4e91-bcdd-2aaf2a8298e5/office2000-kb826292-client-ara.exe|updates/office2k/office2000-kb826292-client-ara.exe
:: URL|CSY|http://download.microsoft.com/download/d/2/4/d249ea80-556f-49e8-92e1-ba0c04e5cdcc/office2000-kb826292-client-csy.exe|updates/office2k/office2000-kb826292-client-csy.exe
:: URL|DAN|http://download.microsoft.com/download/2/6/5/26529be9-8894-4ba2-9b6c-8f13d5d8a267/office2000-kb826292-client-dan.exe|updates/office2k/office2000-kb826292-client-dan.exe
:: URL|DEU|http://download.microsoft.com/download/f/e/3/fe397f11-9cb5-440b-9d0b-9886c74f1f3e/office2000-kb826292-client-deu.exe|updates/office2k/office2000-kb826292-client-deu.exe
:: URL|ELL|http://download.microsoft.com/download/7/e/4/7e4db60d-6ed4-4ab5-a575-430902e586ef/office2000-kb826292-client-ell.exe|updates/office2k/office2000-kb826292-client-ell.exe
:: URL|ENU|http://download.microsoft.com/download/2/d/5/2d5a89c9-972f-4135-a8d9-3747188552b2/office2000-kb826292-client-enu.exe|updates/office2k/office2000-kb826292-client-enu.exe
:: URL|ESN|http://download.microsoft.com/download/b/5/9/b5951afd-a69f-41d3-b307-c9fc6466a5c3/office2000-kb826292-client-esn.exe|updates/office2k/office2000-kb826292-client-esn.exe
:: URL|FIN|http://download.microsoft.com/download/4/f/c/4fcbf551-01ab-407a-8f17-3cab55eecef4/office2000-kb826292-client-fin.exe|updates/office2k/office2000-kb826292-client-fin.exe
:: URL|FRA|http://download.microsoft.com/download/a/4/6/a460bfac-362c-45c4-9f9a-ef8703a331dc/office2000-kb826292-client-fra.exe|updates/office2k/office2000-kb826292-client-fra.exe
:: URL|HEB|http://download.microsoft.com/download/3/c/5/3c518331-de10-488c-bf73-7cca8105aa49/office2000-kb826292-client-heb.exe|updates/office2k/office2000-kb826292-client-heb.exe
:: URL|HUN|http://download.microsoft.com/download/0/b/7/0b7abfc9-82ad-4aea-918c-1251aa836476/office2000-kb826292-client-hun.exe|updates/office2k/office2000-kb826292-client-hun.exe
:: URL|ITA|http://download.microsoft.com/download/2/f/f/2ff717e2-83f2-42d3-8532-0709288c9453/office2000-kb826292-client-ita.exe|updates/office2k/office2000-kb826292-client-ita.exe
:: URL|JPN|http://download.microsoft.com/download/6/1/d/61dd6060-99c5-4dbe-9562-bf515fbda70a/office2000-kb826292-client-jpn.exe|updates/office2k/office2000-kb826292-client-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/a/8/e/a8efc876-537f-4520-a93a-f62fd000603d/office2000-kb826292-client-kor.exe|updates/office2k/office2000-kb826292-client-kor.exe
:: URL|NLD|http://download.microsoft.com/download/8/2/9/829f8dcc-ed43-4054-a3c5-ea630db63f63/office2000-kb826292-client-nld.exe|updates/office2k/office2000-kb826292-client-nld.exe
:: URL|NOR|http://download.microsoft.com/download/8/3/c/83c14088-52e9-4a47-85a3-4562226a9b4d/office2000-kb826292-client-nor.exe|updates/office2k/office2000-kb826292-client-nor.exe
:: URL|PLK|http://download.microsoft.com/download/0/f/c/0fcfb911-0d6b-4061-a0d9-8de79f9293e2/office2000-kb826292-client-plk.exe|updates/office2k/office2000-kb826292-client-plk.exe
:: URL|PTB|http://download.microsoft.com/download/4/e/2/4e2b9c89-12bb-4abc-8134-a75b4fbce5a7/office2000-kb826292-client-ptb.exe|updates/office2k/office2000-kb826292-client-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/0/d/a/0da418ae-5432-490c-b2e8-1b1e9f3de9ee/office2000-kb826292-client-ptg.exe|updates/office2k/office2000-kb826292-client-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/1/e/c/1ecb33e7-bc4e-46d0-ac80-d9bfb6c04cb5/office2000-kb826292-client-rus.exe|updates/office2k/office2000-kb826292-client-rus.exe
:: URL|SVE|http://download.microsoft.com/download/e/1/0/e106bcd7-0885-4205-a1eb-c4b20fe7ce85/office2000-kb826292-client-sve.exe|updates/office2k/office2000-kb826292-client-sve.exe
:: URL|TRK|http://download.microsoft.com/download/4/e/3/4e3758d1-8cb7-40fc-b408-bfaf96837294/office2000-kb826292-client-trk.exe|updates/office2k/office2000-kb826292-client-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\office2000-kb826292-client-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb826292.txt /p SNAPVIEWop.msp REBOOT=ReallySuppress\""

:: Office 2000 WordPerfect 5.x Converter Security Patch: KB824993
:: <http://support.microsoft.com/?kbid=824993>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=d3ed4189-315a-411a-a739-f7181310fba7>
:: URL|ARA|http://download.microsoft.com/download/e/b/4/eb432912-f4cf-424b-86da-861cad96b634/office2000-kb824993-client-ara.exe|updates/office2k/office2000-kb824993-client-ara.exe
:: URL|CSY|http://download.microsoft.com/download/5/2/6/5261bd26-c262-4422-9923-273297d216ab/office2000-kb824993-client-csy.exe|updates/office2k/office2000-kb824993-client-csy.exe
:: URL|DAN|http://download.microsoft.com/download/0/7/d/07d33392-bf9a-45cb-8702-cd4d19818c56/office2000-kb824993-client-dan.exe|updates/office2k/office2000-kb824993-client-dan.exe
:: URL|DEU|http://download.microsoft.com/download/0/a/7/0a7f1379-2165-4601-893a-864aafdaaa7a/office2000-kb824993-client-deu.exe|updates/office2k/office2000-kb824993-client-deu.exe
:: URL|ELL|http://download.microsoft.com/download/4/e/4/4e492ee4-cc7e-4ca7-b927-e46d5ef11ccf/office2000-kb824993-client-ell.exe|updates/office2k/office2000-kb824993-client-ell.exe
:: URL|ENU|http://download.microsoft.com/download/8/7/8/8785bb28-b4e3-401d-9aef-c23e7af0e347/office2000-kb824993-client-enu.exe|updates/office2k/office2000-kb824993-client-enu.exe
:: URL|ESN|http://download.microsoft.com/download/8/f/4/8f4aba6e-0c88-45d8-a692-5fe0fcd871e1/office2000-kb824993-client-esn.exe|updates/office2k/office2000-kb824993-client-esn.exe
:: URL|FIN|http://download.microsoft.com/download/e/d/b/edb590a9-52dc-47a8-a109-9f42b27ff572/office2000-kb824993-client-fin.exe|updates/office2k/office2000-kb824993-client-fin.exe
:: URL|FRA|http://download.microsoft.com/download/6/d/b/6dbd9992-6459-426b-89c9-a7bd15796f08/office2000-kb824993-client-fra.exe|updates/office2k/office2000-kb824993-client-fra.exe
:: URL|HEB|http://download.microsoft.com/download/2/f/0/2f0b97f2-50ba-4978-8f81-8eceb589705b/office2000-kb824993-client-heb.exe|updates/office2k/office2000-kb824993-client-heb.exe
:: URL|HUN|http://download.microsoft.com/download/8/0/7/80700bca-86d1-4e1a-b4e4-be87077db356/office2000-kb824993-client-hun.exe|updates/office2k/office2000-kb824993-client-hun.exe
:: URL|ITA|http://download.microsoft.com/download/4/4/7/4477a633-2258-47eb-8460-9c1918a39e32/office2000-kb824993-client-ita.exe|updates/office2k/office2000-kb824993-client-ita.exe
:: URL|JPN|http://download.microsoft.com/download/2/e/9/2e941160-600f-4255-885b-d13e33b6a2c7/office2000-kb824993-client-jpn.exe|updates/office2k/office2000-kb824993-client-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/c/1/4/c14b40a8-b6ef-4433-8bd9-46981403cd89/office2000-kb824993-client-kor.exe|updates/office2k/office2000-kb824993-client-kor.exe
:: URL|NLD|http://download.microsoft.com/download/9/b/1/9b1d2c2f-7261-4040-ac27-abb796897655/office2000-kb824993-client-nld.exe|updates/office2k/office2000-kb824993-client-nld.exe
:: URL|NOR|http://download.microsoft.com/download/5/5/a/55af10c7-baf1-464a-bd30-a2e129ad2974/office2000-kb824993-client-nor.exe|updates/office2k/office2000-kb824993-client-nor.exe
:: URL|PLK|http://download.microsoft.com/download/a/8/c/a8c80a44-a1c0-4568-bb70-30bae917e34c/office2000-kb824993-client-plk.exe|updates/office2k/office2000-kb824993-client-plk.exe
:: URL|PTB|http://download.microsoft.com/download/3/1/1/311e7a60-42a6-4459-88c7-40e67a5f7601/office2000-kb824993-client-ptb.exe|updates/office2k/office2000-kb824993-client-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/f/6/4/f644f9ff-8ebc-46eb-a261-4967828527fa/office2000-kb824993-client-ptg.exe|updates/office2k/office2000-kb824993-client-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/5/e/2/5e21412f-aa5f-4efc-abf6-8e918f854061/office2000-kb824993-client-rus.exe|updates/office2k/office2000-kb824993-client-rus.exe
:: URL|SVE|http://download.microsoft.com/download/7/9/5/795a36a1-cd1e-4be1-9fa0-b0fc26400699/office2000-kb824993-client-sve.exe|updates/office2k/office2000-kb824993-client-sve.exe
:: URL|TRK|http://download.microsoft.com/download/2/f/6/2f653f36-f5d2-4293-94dc-91145ee072f5/office2000-kb824993-client-trk.exe|updates/office2k/office2000-kb824993-client-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\office2000-kb824993-client-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb824993.txt /p MSCONVop.msp REBOOT=ReallySuppress\""

:: Office 2000 Security Patch: KB822035
:: <http://support.microsoft.com?kbid=822035>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=e2cce199-9c4a-4eec-a3ec-9f738017f275>
:: URL|ARA|http://download.microsoft.com/download/f/2/1/f21be8a2-82e0-4859-b3e4-8e2de47eff85/office2000-kb822035-client-ara.exe|updates/office2k/office2000-kb822035-client-ara.exe
:: URL|CSY|http://download.microsoft.com/download/7/1/4/714f9615-9646-4509-8d01-c90af7c61633/office2000-kb822035-client-csy.exe|updates/office2k/office2000-kb822035-client-csy.exe
:: URL|DAN|http://download.microsoft.com/download/b/a/0/ba01e982-8876-4cc5-b517-2ba785d3f766/office2000-kb822035-client-dan.exe|updates/office2k/office2000-kb822035-client-dan.exe
:: URL|DEU|http://download.microsoft.com/download/d/a/a/daa6469d-a72b-40c7-897e-ccea96e7e57f/office2000-kb822035-client-deu.exe|updates/office2k/office2000-kb822035-client-deu.exe
:: URL|ELL|http://download.microsoft.com/download/5/4/1/541ad229-5c46-4e2d-98eb-3286819a50fc/office2000-kb822035-client-ell.exe|updates/office2k/office2000-kb822035-client-ell.exe
:: URL|ENU|http://download.microsoft.com/download/5/e/d/5ed56804-6577-46e4-88ee-9eb47ac6aa0e/office2000-kb822035-client-enu.exe|updates/office2k/office2000-kb822035-client-enu.exe
:: URL|ESN|http://download.microsoft.com/download/4/f/8/4f8ecc5f-3602-460a-b75b-44cd6c2741be/office2000-kb822035-client-esn.exe|updates/office2k/office2000-kb822035-client-esn.exe
:: URL|FIN|http://download.microsoft.com/download/b/3/7/b37f2d06-863a-4bb0-a358-b4c16f15c4fd/office2000-kb822035-client-fin.exe|updates/office2k/office2000-kb822035-client-fin.exe
:: URL|FRA|http://download.microsoft.com/download/7/9/5/795dc4b4-f914-438c-b4be-a93054d9bc49/office2000-kb822035-client-fra.exe|updates/office2k/office2000-kb822035-client-fra.exe
:: URL|HEB|http://download.microsoft.com/download/1/9/c/19c298e1-0bfc-4e34-bf5c-d19155eb381c/office2000-kb822035-client-heb.exe|updates/office2k/office2000-kb822035-client-heb.exe
:: URL|HUN|http://download.microsoft.com/download/e/d/6/ed6fa4be-1c9a-464f-bd77-ef82d7a9d787/office2000-kb822035-client-hun.exe|updates/office2k/office2000-kb822035-client-hun.exe
:: URL|ITA|http://download.microsoft.com/download/c/e/d/ced938a2-482f-42f6-947c-83a798282019/office2000-kb822035-client-ita.exe|updates/office2k/office2000-kb822035-client-ita.exe
:: URL|JPN|http://download.microsoft.com/download/3/c/4/3c4be066-8bb1-4067-a6f8-6237f850c01f/office2000-kb822035-client-jpn.exe|updates/office2k/office2000-kb822035-client-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/4/6/7/467d5162-3fd0-4769-9322-76f34b74602f/office2000-kb822035-client-kor.exe|updates/office2k/office2000-kb822035-client-kor.exe
:: URL|NLD|http://download.microsoft.com/download/2/3/7/2376a700-6512-4f4c-b5ec-ff24018376bc/office2000-kb822035-client-nld.exe|updates/office2k/office2000-kb822035-client-nld.exe
:: URL|NOR|http://download.microsoft.com/download/c/f/a/cfa8777d-f424-4502-bb33-143806daa5cb/office2000-kb822035-client-nor.exe|updates/office2k/office2000-kb822035-client-nor.exe
:: URL|PLK|http://download.microsoft.com/download/d/b/2/db2790e4-3441-4dba-9db6-4bba565b82fa/office2000-kb822035-client-plk.exe|updates/office2k/office2000-kb822035-client-plk.exe
:: URL|PTB|http://download.microsoft.com/download/2/9/4/294b67b4-a555-498d-8b2f-30abebced209/office2000-kb822035-client-ptb.exe|updates/office2k/office2000-kb822035-client-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/7/f/3/7f32e0e7-e39f-4db7-beb9-eac55684ca3d/office2000-kb822035-client-ptg.exe|updates/office2k/office2000-kb822035-client-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/a/6/6/a6608caa-6aff-499a-ae77-2eef52ec92cf/office2000-kb822035-client-rus.exe|updates/office2k/office2000-kb822035-client-rus.exe
:: URL|SVE|http://download.microsoft.com/download/b/d/8/bd89a0b7-e139-451f-b303-46b22f344183/office2000-kb822035-client-sve.exe|updates/office2k/office2000-kb822035-client-sve.exe
:: URL|TRK|http://download.microsoft.com/download/8/9/7/897a71ee-71df-4a88-a255-5691a612a7fc/office2000-kb822035-client-trk.exe|updates/office2k/office2000-kb822035-client-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\office2000-kb822035-client-%WINLANG%.exe /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb822035.txt /p VBE6op.msp REBOOT=ReallySuppress\""

:: Outlook 2000 Update: December 18, 2002
:: <http://support.microsoft.com?kbid=811167>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=1e252ccf-452a-4313-a402-b50c4405580a>
:: URL|ARA|http://download.microsoft.com/download/9/a/3/9a35d20d-7218-45c0-bd86-eefd7743f93b/Olk0901.exe|updates/office2k/ara/olk0901.exe
:: URL|CSY|http://download.microsoft.com/download/1/1/0/110c5e03-30ac-4223-aad0-f412bfb658bc/Olk0901.exe|updates/office2k/csy/olk0901.exe
:: URL|DAN|http://download.microsoft.com/download/b/1/3/b134068f-2696-4453-9b9d-7d2af8444b77/Olk0901.exe|updates/office2k/dan/olk0901.exe
:: URL|DEU|http://download.microsoft.com/download/2/2/3/223520df-1403-4406-a29c-549d147dba05/Olk0901.exe|updates/office2k/deu/olk0901.exe
:: URL|ELL|http://download.microsoft.com/download/9/e/a/9ea5b7bf-3ef1-4680-9ab9-df6b734fee55/Olk0901.exe|updates/office2k/ell/olk0901.exe
:: URL|ENU|http://download.microsoft.com/download/f/1/d/f1d8421a-2b76-4603-808b-39d8dcc74038/Olk0901.exe|updates/office2k/enu/olk0901.exe
:: URL|ESN|http://download.microsoft.com/download/7/c/3/7c3485e6-5f02-42dd-8658-fb4b47a5a208/Olk0901.exe|updates/office2k/esn/olk0901.exe
:: URL|FIN|http://download.microsoft.com/download/4/7/7/47789270-21c1-4f03-920e-a3a883dd3d20/Olk0901.exe|updates/office2k/fin/olk0901.exe
:: URL|FRA|http://download.microsoft.com/download/4/b/0/4b0be7b8-1f81-4cf0-9bd4-c7fab83a0918/Olk0901.exe|updates/office2k/fra/olk0901.exe
:: URL|HEB|http://download.microsoft.com/download/4/2/7/42785089-866e-4c4b-bc7d-ded835707c2d/Olk0901.exe|updates/office2k/heb/olk0901.exe
:: URL|HUN|http://download.microsoft.com/download/8/3/4/8344425f-d2bf-448f-898b-9fbdad51a5f8/Olk0901.exe|updates/office2k/hun/olk0901.exe
:: URL|ITA|http://download.microsoft.com/download/d/6/5/d651e805-5234-4dd7-8edf-3b6a08a379d8/Olk0901.exe|updates/office2k/ita/olk0901.exe
:: URL|JPN|http://download.microsoft.com/download/c/5/4/c54e4f81-6307-486a-80f5-98015f66c58e/Olk0901.exe|updates/office2k/jpn/olk0901.exe
:: URL|KOR|http://download.microsoft.com/download/e/6/c/e6c45ccc-2dbc-4695-aeb4-1308859805c1/Olk0901.exe|updates/office2k/kor/olk0901.exe
:: URL|NLD|http://download.microsoft.com/download/9/3/e/93e84ec0-9f9e-466e-8e1b-9a4f3ac53c0c/Olk0901.exe|updates/office2k/nld/olk0901.exe
:: URL|NOR|http://download.microsoft.com/download/5/e/d/5ed59c16-5071-4cad-9e06-e13d1e69b2ec/Olk0901.exe|updates/office2k/nor/olk0901.exe
:: URL|PLK|http://download.microsoft.com/download/0/2/b/02bbb5ef-0d5c-4695-8c48-b58c17ab9f09/Olk0901.exe|updates/office2k/plk/olk0901.exe
:: URL|PTB|http://download.microsoft.com/download/0/9/a/09ac674c-eb1a-4935-a484-afa9a807e239/Olk0901.exe|updates/office2k/ptb/olk0901.exe
:: URL|PTG|http://download.microsoft.com/download/0/7/5/0757932b-873b-4fb7-83cf-c00b39c8ae55/Olk0901.exe|updates/office2k/ptg/olk0901.exe
:: URL|RUS|http://download.microsoft.com/download/c/f/0/cf0e4961-c166-4200-b346-bb52873f70a3/Olk0901.exe|updates/office2k/rus/olk0901.exe
:: URL|SVE|http://download.microsoft.com/download/0/7/0/07052134-279d-4ae0-9aea-8841bca643fb/Olk0901.exe|updates/office2k/sve/olk0901.exe
:: URL|TRK|http://download.microsoft.com/download/a/8/8/a885762c-c9a1-4764-9a78-4db739e6dc6d/Olk0901.exe|updates/office2k/trk/olk0901.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\%WINLANG%\Olk0901.exe /r:n /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\Olk0901.txt /p OMIop.msp REBOOT=ReallySuppress\""

:: Install View Control Security Update
:: (part of SP3, but not installed via MSI)
todo.pl ".reboot-on 194 %Z%\updates\office2k\%WINLANG%\o2ksp3.exe /r:n /q /c:\"outlctlx.exe /q /r:n\""

:: Office 2000 Update: Service Pack 3 (SP3)
:: <http://support.microsoft.com?kbid=326585>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=5C011C70-47D0-4306-9FA4-8E92D36332FE>
:: URL|ARA|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/AR/O2kSp3.exe|updates/office2k/ara/o2ksp3.exe
:: URL|CSY|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/CS/O2kSp3.exe|updates/office2k/csy/o2ksp3.exe
:: URL|DAN|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/DA/O2kSp3.exe|updates/office2k/dan/o2ksp3.exe
:: URL|DEU|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/DE/O2kSp3.exe|updates/office2k/deu/o2ksp3.exe
:: URL|ELL|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/EL/O2kSp3.exe|updates/office2k/ell/o2ksp3.exe
:: URL|ENU|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/EN-US/O2kSp3.exe|updates/office2k/enu/o2ksp3.exe
:: URL|ESN|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/ES/O2kSp3.exe|updates/office2k/esn/o2ksp3.exe
:: URL|FIN|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/FI/O2kSp3.exe|updates/office2k/fin/o2ksp3.exe
:: URL|FRA|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/FR/O2kSp3.exe|updates/office2k/fra/o2ksp3.exe
:: URL|HEB|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/HE/O2kSp3.exe|updates/office2k/heb/o2ksp3.exe
:: URL|HUN|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/HU/O2kSp3.exe|updates/office2k/hun/o2ksp3.exe
:: URL|ITA|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/IT/O2kSp3.exe|updates/office2k/ita/o2ksp3.exe
:: URL|JPN|http://download.microsoft.com/download/office2000pro/Update/O2kSp3/W9X2KMeXP/JA/O2kSp3.exe|updates/office2k/jpn/o2ksp3.exe
:: URL|KOR|http://download.microsoft.com/download/office2000pro/Update/O2kSp3/W9X2KMeXP/KO/O2kSp3.exe|updates/office2k/kor/o2ksp3.exe
:: URL|NLD|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/NL/O2kSp3.exe|updates/office2k/nld/o2ksp3.exe
:: URL|NOR|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/NO/O2kSp3.exe|updates/office2k/nor/o2ksp3.exe
:: URL|PLK|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/PL/O2kSp3.exe|updates/office2k/plk/o2ksp3.exe
:: URL|PTB|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/PT-BR/O2kSp3.exe|updates/office2k/ptb/o2ksp3.exe
:: URL|PTG|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/PT/O2kSp3.exe|updates/office2k/ptg/o2ksp3.exe
:: URL|RUS|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/RU/O2kSp3.exe|updates/office2k/rus/o2ksp3.exe
:: URL|SVE|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/SV/O2kSp3.exe|updates/office2k/sve/o2ksp3.exe
:: URL|TRK|http://download.microsoft.com/download/office2000/SP/3/WIN98MeXP/TR/O2kSp3.exe|updates/office2k/trk/o2ksp3.exe
todo.pl ".reboot-on 194 %Z%\updates\office2k\%WINLANG%\O2kSp3.exe /r:n /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\o2ksp3.txt /p MAINSP3.msp REBOOT=ReallySuppress\""

:: Office 2000 SR-1a Administrator Updates
:: <http://www.microsoft.com/downloads/details.aspx?familyid=b1286b93-3ebd-4ba7-91c4-32c7ca12457b>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=af6c8d03-7633-45b4-ab96-795ee656f2a2>
:: <http://www.microsoft.com/office/ork/2000/appndx/toolbox_localized.htm>
:: URL|ARA|http://download.microsoft.com/download/office2000prem/SP/1/WIN98/AR/o2ksr1adl.exe|updates/office2k/ara/o2ksr1adl.exe
:: URL|CSY|http://download.microsoft.com/download/office2000prem/SP/SR-1a/Win98/CS/O2KSR1ADL.EXE|updates/office2k/csy/o2ksr1adl.exe
:: URL|DAN|http://download.microsoft.com/download/office2000prem/SP/SR-1a/Win98/DA/O2KSR1ADL.EXE|updates/office2k/dan/o2ksr1adl.exe
:: URL|DEU|http://download.microsoft.com/download/office2000prem/SP/1/WIN98/DE/O2KSR1aDL.EXE|updates/office2k/deu/o2ksr1adl.exe
:: URL|ELL|http://download.microsoft.com/download/office2000prem/SP/SR-1a/Win98/EL/O2KSR1ADL.EXE|updates/office2k/ell/o2ksr1adl.exe
:: URL|ENU|http://download.microsoft.com/download/office2000prem/adminup2/SR-1a/WIN98/EN-US/O2KSR1aDL.EXE|updates/office2k/enu/o2ksr1adl.exe
:: URL|ESN|http://download.microsoft.com/download/office2000prem/SP/SR-1a/Win98/ES/o2ksr1adl.EXE|updates/office2k/esn/o2ksr1adl.exe
:: URL|FIN|http://download.microsoft.com/download/office2000prem/SP/SR-1a/Win98/FI/O2KSR1ADL.EXE|updates/office2k/fin/o2ksr1adl.exe
:: URL|FRA|http://download.microsoft.com/download/office2000prem/SP/SR-1a/Win98/FR/o2ksr1adl.EXE|updates/office2k/fra/o2ksr1adl.exe
:: URL|HEB|http://download.microsoft.com/download/office2000prem/SP/1/WIN98/HE/O2KSR1aDL.EXE|updates/office2k/heb/o2ksr1adl.exe
:: URL|HUN|http://download.microsoft.com/download/office2000prem/SP/SR-1a/Win98/HU/O2KSR1ADL.EXE|updates/office2k/hun/o2ksr1adl.exe
:: URL|ITA|http://download.microsoft.com/download/office2000prem/SP/SR-1a/Win98/IT/o2ksr1adl.EXE|updates/office2k/ita/o2ksr1adl.exe
:: URL|JPN|http://download.microsoft.com/download/office2000prem/Patch/000605/WIN98/JA/O2KSR1aDL.EXE|updates/office2k/jpn/o2ksr1adl.exe
:: URL|KOR|http://download.microsoft.com/download/office2000prem/SP/SR-1aORK/WIN98/KO/o2ksr1adl.exe|updates/office2k/kor/o2ksr1adl.exe
:: URL|NLD|http://download.microsoft.com/download/office2000prem/SP/SR-1a/Win98/NL/O2KSR1ADL.EXE|updates/office2k/nld/o2ksr1adl.exe
:: URL|NOR|http://download.microsoft.com/download/office2000prem/SP/SR-1a/Win98/NO/o2ksr1adl.EXE|updates/office2k/nor/o2ksr1adl.exe
:: URL|PLK|http://download.microsoft.com/download/office2000prem/SP/SR-1a/Win98/PL/O2KSR1ADL.EXE|updates/office2k/plk/o2ksr1adl.exe
:: URL|PTB|http://download.microsoft.com/download/office2000prem/SP/SR-1a/Win98/PT-BR/O2KSR1ADL.EXE|updates/office2k/ptb/o2ksr1adl.exe
:: URL|PTG|http://download.microsoft.com/download/office2000prem/SP/SR-1a/Win98/PT/O2KSR1ADL.EXE|updates/office2k/ptg/o2ksr1adl.exe
:: URL|RUS|http://download.microsoft.com/download/office2000prem/SP/SR-1a/Win98/RU/O2KSR1ADL.EXE|updates/office2k/rus/o2ksr1adl.exe
:: URL|SVE|http://download.microsoft.com/download/office2000prem/SP/SR-1a/Win98/SV/O2KSR1ADL.EXE|updates/office2k/sve/o2ksr1adl.exe
:: URL|TRK|http://download.microsoft.com/download/office2000prem/SP/SR-1a/Win98/TR/O2KSR1ADL.EXE|updates/office2k/trk/o2ksr1adl.exe
todo.pl ".reboot-on 194 msiexec /qb /l* %SystemDrive%\netinst\logs\o2ksr1a.txt /p %TEMP%\o2ksr1a\DATA1.msp REBOOT=ReallySuppress"
todo.pl ".reboot-on 194 %Z%\updates\office2k\%WINLANG%\O2KSR1aDL.EXE /t:%TEMP%\o2ksr1a"

:: Use Z_PATH instead of %Z%\ because Office likes to phone home a lot,
:: even with ADDLOCAL=ALL.
:: "REMOVE=WinFax" means do not install the Symantec Fax Starter
:: Edition.  (It shows up as a printer and is therefore annoying.)
:: Thanks to Justin Beckley.

:: Edit install/site/keys.bat and provide your license key
call %Z%\site\keys.bat
if %office2k%==xxxxxxx goto nokey

todo.pl ".reboot-on 194 msiexec /qb /l* %SystemDrive%\netinst\logs\office.txt /i %Z_PATH%\packages\office2k\data1.msi ADDLOCAL=ALL REMOVE=WinFax REBOOT=ReallySuppress NOUSERNAME=1 ALLUSERS=1 DISABLEADVTSHORTCUTS=1 PIDKEY=%office2k%"

if errorlevel 1 exit 1
exit 0

:nokey
@echo *** Unable to get Office license key
@echo ***  (did you forget to edit %Z%\site\keys.bat?)
exit 2

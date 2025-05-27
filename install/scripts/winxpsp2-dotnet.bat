:: NDP 2.0 ASP.Net Security Update (KB917283)
:: <http://www.microsoft.com/technet/security/bulletin/MS06-033.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=56A1777B-9758-489F-8BE8-5177AAF488D1>
:: URL|ALL|http://download.microsoft.com/download/1/8/5/185ebe2d-6dda-4300-bda5-64f527f3367d/NDP20-KB917283-X86.exe|updates/common/ndp20-kb917283-x86.exe
todo.pl ".reboot-on 194 %Z%\updates\common\ndp20-kb917283-x86.exe /passive /q /norestart"

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

:: Microsoft Security Bulletin MS07-040 - Critical
:: Vulnerabilities in .NET Framework Could Allow Remote Code Execution (931212)
:: <http://www.microsoft.com/technet/security/bulletin/MS07-040.mspx>
:: .NET Framework 2.0 SYSTEM.WEB.DLL and MSCOREE.DLL   KB928365
:: URL|ALL|http://download.microsoft.com/download/c/e/4/ce445110-e494-4a45-81db-05852ffba284/NDP20-KB928365-X86.exe|updates/common/NDP20-KB928365-X86.exe
todo.pl ".reboot-on 194 %Z%\updates\common\NDP20-KB928365-X86.exe /passive /q /norestart"

:: Microsoft .NET Framework Version 2.0 Redistributable Package (x86)
:: <http://www.microsoft.com/downloads/details.aspx?familyid=0856EACB-4362-4B0D-8EDD-AAB15C5E04F5>
:: URL|ALL|http://download.microsoft.com/download/5/6/7/567758a3-759e-473e-bf8f-52154438565a/dotnetfx.exe|updates/common/dotnetfx_20.exe
todo.pl ".reboot-on 194 %Z%\updates\common\dotnetfx_20.exe /q /c:\"install /q\""

if not exist %Z%\updates\common\%WINLANG%\langpack.exe goto nolangpack
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
:: Microsoft Security Bulletin   MS07-040
:: ".NET Framework 1.1 Service Pack 1 SYSTEM.WEB.DLL and MSCOREE.DLL Security Update"   KB928366
:: <http://www.microsoft.com/technet/security/bulletin/ms05-004.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=281FB2CD-C715-4F05-A01F-0455D2D9EBFB>
:: URL|ARA|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/ara/NDP1.1sp1-KB928366-X86.exe
:: URL|CSY|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/csy/NDP1.1sp1-KB928366-X86.exe
:: URL|DAN|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/dan/NDP1.1sp1-KB928366-X86.exe
:: URL|DEU|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/deu/NDP1.1sp1-KB928366-X86.exe
:: URL|ELL|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/ell/NDP1.1sp1-KB928366-X86.exe
:: URL|ENU|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/enu/NDP1.1sp1-KB928366-X86.exe
:: URL|ESN|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/esn/NDP1.1sp1-KB928366-X86.exe
:: URL|FIN|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/fin/NDP1.1sp1-KB928366-X86.exe
:: URL|FRA|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/fra/NDP1.1sp1-KB928366-X86.exe
:: URL|HEB|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/hrb/NDP1.1sp1-KB928366-X86.exe
:: URL|HUN|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/hun/NDP1.1sp1-KB928366-X86.exe
:: URL|ITA|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/ita/NDP1.1sp1-KB928366-X86.exe
:: URL|JPN|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/jpn/NDP1.1sp1-KB928366-X86.exe
:: URL|KOR|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/kor/NDP1.1sp1-KB928366-X86.exe
:: URL|NLD|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/nld/NDP1.1sp1-KB928366-X86.exe
:: URL|NOR|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/nor/NDP1.1sp1-KB928366-X86.exe
:: URL|PLK|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/plk/NDP1.1sp1-KB928366-X86.exe
:: URL|PTB|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/ptb/NDP1.1sp1-KB928366-X86.exe
:: URL|PTG|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/ptg/NDP1.1sp1-KB928366-X86.exe
:: URL|RUS|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/rus/NDP1.1sp1-KB928366-X86.exe
:: URL|SVE|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/sve/NDP1.1sp1-KB928366-X86.exe
:: URL|TRK|http://download.microsoft.com/download/6/d/0/6d0e5797-91eb-401a-a61f-58b369302018/NDP1.1sp1-KB928366-X86.exe|updates/common/trk/NDP1.1sp1-KB928366-X86.exe
todo.pl ".reboot-on 194 %Z%\updates\common\%WINLANG%\NDP1.1sp1-KB928366-X86.exe /q /i"

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


:: Install all updates for Windows 2000
@Echo off
:: After installing SP4, install updates for win2ksp4
todo.pl win2ksp4-updates.bat

:: Windows Installer 3.1 Redistributable
:: only installs on Win2000 SP3 or SP4, so installing it after SP4
:: <http://support.microsoft.com/kb/893803>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=889482FC-5F56-4A38-B838-DE776FD4138C>
:: URL|ALL|http://download.microsoft.com/download/1/4/7/147ded26-931c-4daf-9095-ec7baf996f46/WindowsInstaller-KB893803-v2-x86.exe|packages/windowsinstaller/windowsinstaller-kb893803-v2-x86.exe
todo.pl ".reboot-on 194 %Z%\packages\windowsinstaller\windowsinstaller-kb893803-v2-x86.exe /passive /norestart"

:: Windows 2000 Service Pack 4 Network Install for IT Professionals
:: <http://www.microsoft.com/downloads/details.aspx?familyid=1001AAF1-749F-49F4-8010-297BD6CA33A0>
:: URL|ARA|http://download.microsoft.com/download/3/f/8/3f8a308a-eae1-4a2d-927d-1f76d3e60442/w2ksp4_ar.exe|updates/win2k/ara/w2ksp4.exe
:: URL|CSY|http://download.microsoft.com/download/f/d/2/fd2b1d2a-16c8-43ba-b805-518dbff8a438/w2ksp4_cs.exe|updates/win2k/csy/w2ksp4.exe
:: URL|DAN|http://download.microsoft.com/download/7/c/7/7c7b3abd-2bfc-4e0d-b808-f4abdfc1c5f1/w2ksp4_da.exe|updates/win2k/dan/w2ksp4.exe
:: URL|DEU|http://download.microsoft.com/download/c/3/5/c35591e3-52b6-4be0-95d3-ec82fa01ce12/W2KSP4_DE.EXE|updates/win2k/deu/w2ksp4.exe
:: URL|ELL|http://download.microsoft.com/download/1/3/5/135cb641-c2a7-4e1b-95a0-69f75dc31674/w2ksp4_el.exe|updates/win2k/ell/w2ksp4.exe
:: URL|ENU|http://download.microsoft.com/download/e/6/a/e6a04295-d2a8-40d0-a0c5-241bfecd095e/W2KSP4_EN.EXE|updates/win2k/enu/w2ksp4.exe
:: URL|ESN|http://download.microsoft.com/download/0/d/0/0d02572f-e667-4bd7-a2d7-4b1a4328a711/w2ksp4_es.exe|updates/win2k/esn/w2ksp4.exe
:: URL|FIN|http://download.microsoft.com/download/e/7/a/e7ae1b1f-3ef9-43f3-8df6-4bdb954e52c0/w2ksp4_fi.exe|updates/win2k/fin/w2ksp4.exe
:: URL|FRA|http://download.microsoft.com/download/c/f/0/cf065ae8-0c96-47f5-ba2b-3220da77076e/w2ksp4_fr.exe|updates/win2k/fra/w2ksp4.exe
:: URL|HEB|http://download.microsoft.com/download/f/0/6/f06f92c9-0ba8-4522-aa5c-28de26efa7ab/w2ksp4_he.exe|updates/win2k/heb/w2ksp4.exe
:: URL|HUN|http://download.microsoft.com/download/f/2/f/f2f70a3e-943b-4ef3-806b-91a4f2d12df6/W2KSP4_HU.EXE|updates/win2k/hun/w2ksp4.exe
:: URL|ITA|http://download.microsoft.com/download/4/3/9/4399958a-cae3-48cf-9fc3-2a36daab3a5e/w2ksp4_it.exe|updates/win2k/ita/w2ksp4.exe
:: URL|JPN|http://download.microsoft.com/download/a/0/0/a008c376-a5fc-4219-9ba7-7b61d1236fc0/W2KSP4_ja.EXE|updates/win2k/jpn/w2ksp4.exe
:: URL|KOR|http://download.microsoft.com/download/d/3/2/d32db0d3-9420-4568-b0ed-57a3060fb1ea/W2KSP4_KO.EXE|updates/win2k/kor/w2ksp4.exe
:: URL|NLD|http://download.microsoft.com/download/1/b/7/1b7b823b-e760-4aa3-99d6-d9843cf71e7f/w2ksp4_nl.exe|updates/win2k/nld/w2ksp4.exe
:: URL|NOR|http://download.microsoft.com/download/2/4/c/24ce4080-c34c-4636-bc01-8eb900f5021e/w2ksp4_no.exe|updates/win2k/nor/w2ksp4.exe
:: URL|PLK|http://download.microsoft.com/download/a/3/2/a32416d3-941d-424a-9310-21951f74216f/w2ksp4_pl.exe|updates/win2k/plk/w2ksp4.exe
:: URL|PTB|http://download.microsoft.com/download/f/a/0/fa0ac2ef-53b3-4ff0-af13-ba383610e31e/w2ksp4_br.exe|updates/win2k/ptb/w2ksp4.exe
:: URL|PTG|http://download.microsoft.com/download/a/7/4/a74b413f-d85c-4c0f-8170-2bd9b9ac7a7f/w2ksp4_pt.exe|updates/win2k/ptg/w2ksp4.exe
:: URL|RUS|http://download.microsoft.com/download/6/1/1/611e63b8-95ec-40f4-b96c-e676f96d1a95/w2ksp4_ru.exe|updates/win2k/rus/w2ksp4.exe
:: URL|SVE|http://download.microsoft.com/download/4/2/6/4261d8ed-167d-4b45-9757-c0f2828e94fa/w2ksp4_sv.exe|updates/win2k/sve/w2ksp4.exe
:: URL|TRK|http://download.microsoft.com/download/6/a/d/6ad2327b-836f-4e38-9a83-d305793a9a8d/w2ksp4_tr.exe|updates/win2k/trk/w2ksp4.exe
todo.pl ".ignore-err 194 %Z%\updates\win2k\%WINLANG%\W2KSP4.EXE /u /n /q /z" .reboot

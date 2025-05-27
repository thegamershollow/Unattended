:: OPTIONAL: Install Office XP and its updates
@Echo off
:: Reminder: Commands will be executed in reverse order.

:: Uncomment it if you want the compatibility pack installed
:: todo.pl docxconverter.bat

:: Reboot after installing everything (superstition).
todo.pl .reboot

:: Security Update for Microsoft Excel 2002 (KB973471)
:: MS09-067: Description of the security update for Excel 2002: November 10, 2009
:: <http://support.microsoft.com/kb/973471>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=5672c8fc-8509-4962-ad86-ebc0f2575043>
:: URL|ARA|http://download.microsoft.com/download/3/C/8/3C84E2DB-8F5F-42E9-ABE7-8CD835C3D2AB/officexp-KB973471-FullFile-ARA.exe|updates/officexp/officexp-kb973471-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/3/4/7/34778AF5-66C4-44DD-BA18-D2C706DD0282/officexp-KB973471-FullFile-CSY.exe|updates/officexp/officexp-kb973471-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/8/C/3/8C3D77BC-6411-4A1E-9646-17EE445A750E/officexp-KB973471-FullFile-DAN.exe|updates/officexp/officexp-kb973471-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/6/7/3/6731E605-699E-48EC-9B1A-34AF6530682F/officexp-KB973471-FullFile-DEU.exe|updates/officexp/officexp-kb973471-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/5/1/7/517E504A-24C6-4045-988A-6FFBD5574352/officexp-KB973471-FullFile-ELL.exe|updates/officexp/officexp-kb973471-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/F/F/C/FFCEC920-95AD-4622-84D2-BF0DE6908741/officexp-KB973471-FullFile-ENU.exe|updates/officexp/officexp-kb973471-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/1/4/C/14CA3E29-5B7A-45C6-983A-D4BAEDA56DE2/officexp-KB973471-FullFile-ESN.exe|updates/officexp/officexp-kb973471-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/A/4/1/A4146B5D-CABB-46DA-8378-FA1F794D993B/officexp-KB973471-FullFile-FIN.exe|updates/officexp/officexp-kb973471-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/5/3/0/530FAB38-53FD-481C-B62C-5A882E3AF669/officexp-KB973471-FullFile-FRA.exe|updates/officexp/officexp-kb973471-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/3/5/4/3542BEAC-2346-4E13-8E95-D83414A0B3AA/officexp-KB973471-FullFile-HEB.exe|updates/officexp/officexp-kb973471-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/0/E/1/0E190E57-0B1B-4B1C-A573-69BDCE091389/officexp-KB973471-FullFile-HUN.exe|updates/officexp/officexp-kb973471-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/5/5/6/5567215B-E884-4913-99EC-5DC3A52FBD00/officexp-KB973471-FullFile-ITA.exe|updates/officexp/officexp-kb973471-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/A/2/7/A27302DA-4552-4BC7-959A-C24255746F34/officexp-KB973471-FullFile-JPN.exe|updates/officexp/officexp-kb973471-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/6/A/A/6AA6528D-1DDB-48CE-9F88-762B3EB48AF0/officexp-KB973471-FullFile-KOR.exe|updates/officexp/officexp-kb973471-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/2/3/E/23E3A5AD-D70D-4F0D-8A02-839F4728AB8B/officexp-KB973471-FullFile-NLD.exe|updates/officexp/officexp-kb973471-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/9/0/B/90B8F3D7-85E4-4428-A59E-C0D6F3D44431/officexp-KB973471-FullFile-NOR.exe|updates/officexp/officexp-kb973471-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/1/E/C/1EC3B38D-E64F-4FC7-AF0F-27C3EE6BE533/officexp-KB973471-FullFile-PLK.exe|updates/officexp/officexp-kb973471-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/D/2/F/D2F8344B-0BA3-4098-BE92-753B0AA5D8C5/officexp-KB973471-FullFile-PTB.exe|updates/officexp/officexp-kb973471-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/7/0/3/703CCEB8-574E-4E6F-A471-FF6EEE123CA0/officexp-KB973471-FullFile-PTG.exe|updates/officexp/officexp-kb973471-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/E/C/7/EC79859C-FCB4-4834-9DE1-5FC01EE5EEA1/officexp-KB973471-FullFile-RUS.exe|updates/officexp/officexp-kb973471-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/6/C/F/6CF5C471-83FD-4AEA-B3D8-EF3537463CEE/officexp-KB973471-FullFile-SVE.exe|updates/officexp/officexp-kb973471-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/E/9/B/E9B92581-1D9F-408C-B8EE-23EA1C896331/officexp-KB973471-FullFile-TRK.exe|updates/officexp/officexp-kb973471-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB973471-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Word 2002 (KB973444)
:: MS09-068: Description of the security update for Word 2002: November 10, 2009
:: <http://support.microsoft.com/kb/973444>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=0369fae5-958b-4eba-83a4-9c07e701c273>
:: URL|ARA|http://download.microsoft.com/download/F/4/2/F42DA16E-E090-409E-9BD4-9F0C5AF95C1B/officexp-KB973444-FullFile-ARA.exe|updates/officexp/officexp-kb973444-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/0/4/C/04C533D3-6217-447D-B95A-D18353CE7D67/officexp-KB973444-FullFile-CSY.exe|updates/officexp/officexp-kb973444-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/A/8/4/A8427236-F6B2-484F-B4AA-E7EB993C59B8/officexp-KB973444-FullFile-DAN.exe|updates/officexp/officexp-kb973444-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/B/9/C/B9CC652B-604D-49D6-A1ED-8C0500A20D43/officexp-KB973444-FullFile-DEU.exe|updates/officexp/officexp-kb973444-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/E/3/9/E39F10D6-359F-479B-97EB-EC984457F5DB/officexp-KB973444-FullFile-ELL.exe|updates/officexp/officexp-kb973444-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/2/5/5/2552EB29-1D8D-4799-8FF8-932F78C8E800/officexp-KB973444-FullFile-ENU.exe|updates/officexp/officexp-kb973444-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/F/C/2/FC2C5D66-8D09-4A11-B8E1-A67AB016EE54/officexp-KB973444-FullFile-ESN.exe|updates/officexp/officexp-kb973444-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/3/5/D/35DFC50A-2DE5-4CBF-9AA4-98B7B452E1AF/officexp-KB973444-FullFile-FIN.exe|updates/officexp/officexp-kb973444-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/2/F/7/2F75B1F7-3F1D-4F31-8B1E-514F6816A23A/officexp-KB973444-FullFile-FRA.exe|updates/officexp/officexp-kb973444-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/B/C/5/BC5E0592-F627-4936-A0D1-EB90723E29A4/officexp-KB973444-FullFile-HEB.exe|updates/officexp/officexp-kb973444-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/3/B/0/3B0ADB85-E6FF-4C31-AA91-49B8A19CD4B1/officexp-KB973444-FullFile-HUN.exe|updates/officexp/officexp-kb973444-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/B/B/5/BB57FD20-D773-4D38-9494-7DB528BA9EA8/officexp-KB973444-FullFile-ITA.exe|updates/officexp/officexp-kb973444-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/5/E/6/5E6CBCBF-C9F3-40A6-B5C4-FCA272631620/officexp-KB973444-FullFile-JPN.exe|updates/officexp/officexp-kb973444-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/F/B/0/FB0635DE-6491-4EE9-8C36-32DD83747AA8/officexp-KB973444-FullFile-KOR.exe|updates/officexp/officexp-kb973444-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/E/8/E/E8EB25F0-2AD7-4F1C-86D8-AABE950154FF/officexp-KB973444-FullFile-NLD.exe|updates/officexp/officexp-kb973444-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/F/2/8/F28F731E-5C77-456B-A178-009AE1DC4E61/officexp-KB973444-FullFile-NOR.exe|updates/officexp/officexp-kb973444-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/A/2/6/A261FAD8-E7A3-410D-843B-E8C582EFB129/officexp-KB973444-FullFile-PLK.exe|updates/officexp/officexp-kb973444-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/2/8/3/2837BD71-7ED0-4558-9ECE-4FD93427546D/officexp-KB973444-FullFile-PTB.exe|updates/officexp/officexp-kb973444-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/0/1/0/0104BC93-2A2A-4482-9AA7-4D7E7BDF25F0/officexp-KB973444-FullFile-PTG.exe|updates/officexp/officexp-kb973444-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/A/1/5/A156AD97-3F27-4026-8E3B-436EC12BBCC7/officexp-KB973444-FullFile-RUS.exe|updates/officexp/officexp-kb973444-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/C/1/5/C1535CA5-DD21-4DBE-8969-83847ACAD05E/officexp-KB973444-FullFile-SVE.exe|updates/officexp/officexp-kb973444-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/2/5/9/259C8574-1641-4B15-B86D-5698C72DB3B8/officexp-KB973444-FullFile-TRK.exe|updates/officexp/officexp-kb973444-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB973444-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office XP (KB975008)
:: MS09-073: Description of the security update for Office XP: December 8, 2009
:: <http://support.microsoft.com/kb/975008>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=bc3ec3ba-2cec-43ab-b184-c222794231f2>
:: URL|ARA|http://download.microsoft.com/download/C/B/E/CBE22790-FF1A-4A24-A50E-E5D85CADCCEB/officexp-KB975008-FullFile-ARA.exe|updates/officexp/officexp-kb975008-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/D/E/7/DE726D28-1E65-485D-969C-0821D4673E23/officexp-KB975008-FullFile-CSY.exe|updates/officexp/officexp-kb975008-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/E/F/1/EF1389BB-4063-428F-A921-B7259AEED8E9/officexp-KB975008-FullFile-DAN.exe|updates/officexp/officexp-kb975008-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/0/8/5/08559736-123A-4A4F-91C8-C75C5C03C4E7/officexp-KB975008-FullFile-DEU.exe|updates/officexp/officexp-kb975008-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/E/0/0/E003F9FC-07A0-4011-8B28-1229003D94A1/officexp-KB975008-FullFile-ELL.exe|updates/officexp/officexp-kb975008-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/6/0/E/60E85231-7077-4D25-B87F-D1FB4D143BE8/officexp-KB975008-FullFile-ENU.exe|updates/officexp/officexp-kb975008-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/9/2/A/92AEC279-D4C9-480D-B041-CA7B32AEB483/officexp-KB975008-FullFile-ESN.exe|updates/officexp/officexp-kb975008-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/2/1/D/21DF7361-8A59-41FB-8035-E5C2106D5BD3/officexp-KB975008-FullFile-FIN.exe|updates/officexp/officexp-kb975008-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/4/D/E/4DEB8DF9-2F7D-4AA2-B644-D2B8C3E35409/officexp-KB975008-FullFile-FRA.exe|updates/officexp/officexp-kb975008-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/4/3/C/43C86F73-08D1-4E9E-B689-776F7A6C5E9D/officexp-KB975008-FullFile-HEB.exe|updates/officexp/officexp-kb975008-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/B/B/B/BBBBE19F-CF92-4233-97D4-58B8FD5C8527/officexp-KB975008-FullFile-HUN.exe|updates/officexp/officexp-kb975008-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/C/1/F/C1FD2CB9-A625-444A-89EF-66287D170766/officexp-KB975008-FullFile-ITA.exe|updates/officexp/officexp-kb975008-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/1/F/E/1FEC733D-DC26-4BA2-A296-CA72096D653A/officexp-KB975008-FullFile-JPN.exe|updates/officexp/officexp-kb975008-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/2/1/6/216AB723-2AF5-49B0-A517-BEB135CEBDCA/officexp-KB975008-FullFile-KOR.exe|updates/officexp/officexp-kb975008-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/0/4/7/04716B68-F01D-4B4B-93E7-914D13DE30E0/officexp-KB975008-FullFile-NLD.exe|updates/officexp/officexp-kb975008-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/1/0/5/1059B9F9-5706-4847-A0C3-7854F7AF6ED5/officexp-KB975008-FullFile-NOR.exe|updates/officexp/officexp-kb975008-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/0/A/3/0A374A4E-BD63-49AE-9840-369F4007C48F/officexp-KB975008-FullFile-PLK.exe|updates/officexp/officexp-kb975008-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/0/9/9/099E245F-A204-4E68-BDA1-AFBE9881BBA2/officexp-KB975008-FullFile-PTB.exe|updates/officexp/officexp-kb975008-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/6/3/3/633BF481-C274-47CD-A6FF-4F5C99BC3BB5/officexp-KB975008-FullFile-PTG.exe|updates/officexp/officexp-kb975008-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/4/9/4/494D3932-103E-4123-86F2-D04EE0A7EC7E/officexp-KB975008-FullFile-RUS.exe|updates/officexp/officexp-kb975008-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/3/9/B/39BA87A7-CED5-4F86-AD79-42B30258F163/officexp-KB975008-FullFile-SVE.exe|updates/officexp/officexp-kb975008-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/2/6/2/2627E762-4E60-4899-8E12-FA915B4EAE00/officexp-KB975008-FullFile-TRK.exe|updates/officexp/officexp-kb975008-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB975008-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Outlook 2002 (KB973702)
:: <https://www.microsoft.com/en-us/download/details.aspx?id=13666>
:: URL|CSY|http://download.microsoft.com/download/7/8/F/78F1E782-2F42-4205-B3B5-837A4365FD8C/officexp-KB973702-FullFile-CSY.exe|updates/officexp/officexp-kb973702-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/2/A/9/2A9AE986-419A-4C19-B2DE-223FB89992D5/officexp-KB973702-FullFile-DAN.exe|updates/officexp/officexp-kb973702-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/9/5/4/954AEB1C-D607-406A-93D3-5CB005CABD5D/officexp-KB973702-FullFile-DEU.exe|updates/officexp/officexp-kb973702-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/7/6/5/765370E5-13F3-49B1-9A24-A340AC2E4128/officexp-KB973702-FullFile-ELL.exe|updates/officexp/officexp-kb973702-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/0/7/0/0704F0F4-656F-4ABC-9EF0-2A7338393C53/officexp-KB973702-FullFile-ENU.exe|updates/officexp/officexp-kb973702-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/4/7/4/474FB1D6-946A-4EE6-9B39-0FA39F6BC896/officexp-KB973702-FullFile-ESN.exe|updates/officexp/officexp-kb973702-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/D/9/6/D960C0C6-FEA6-42FA-BFE3-4B04EF49C350/officexp-KB973702-FullFile-FIN.exe|updates/officexp/officexp-kb973702-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/2/2/4/224DCDE2-8C3E-4293-93A6-27A6320542ED/officexp-KB973702-FullFile-FRA.exe|updates/officexp/officexp-kb973702-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/4/1/8/418C9B4A-E763-4EAA-BCB3-3BFF3FACB0F3/officexp-KB973702-FullFile-HUN.exe|updates/officexp/officexp-kb973702-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/C/0/3/C0329AE4-E640-419D-BADC-684E371F4156/officexp-KB973702-FullFile-ITA.exe|updates/officexp/officexp-kb973702-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/5/B/D/5BD7336E-3DF6-4FF5-AE09-0D9C4B30B077/officexp-KB973702-FullFile-JPN.exe|updates/officexp/officexp-kb973702-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/6/B/C/6BCD1982-BDC0-4FF7-A52A-BF0DDCBEF5F1/officexp-KB973702-FullFile-KOR.exe|updates/officexp/officexp-kb973702-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/6/0/2/602FC87A-E18A-4A15-B164-B6855082CE41/officexp-KB973702-FullFile-NLD.exe|updates/officexp/officexp-kb973702-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/C/A/C/CAC202BE-3309-41EE-8D7A-A4469A3323E5/officexp-KB973702-FullFile-PLK.exe|updates/officexp/officexp-kb973702-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/7/E/E/7EE164CE-B9D0-4672-88F1-A36D0EFE52A1/officexp-KB973702-FullFile-PTB.exe|updates/officexp/officexp-kb973702-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/8/2/6/82627ED4-742B-4C67-8F0A-05D0B2F3AE6F/officexp-KB973702-FullFile-PTG.exe|updates/officexp/officexp-kb973702-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/1/D/5/1D5479B0-EB5B-4018-800D-B32DC624ECBE/officexp-KB973702-FullFile-RUS.exe|updates/officexp/officexp-kb973702-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/0/C/D/0CD1C468-018B-4262-A29C-8A29AA299769/officexp-KB973702-FullFile-SVE.exe|updates/officexp/officexp-kb973702-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/2/B/4/2B4B34AF-EA7C-4E70-B759-C0C9A9860B51/officexp-KB973702-FullFile-TRK.exe|updates/officexp/officexp-kb973702-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB973702-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office XP Web Components (KB947320)
:: MS09-043: Description of the security update for Office XP Web Components in Office XP: August 11, 2009
:: <http://support.microsoft.com/kb/947320>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=60e2e4e7-aa75-441d-b6fc-7e850bf8e580>
:: URL|ARA|http://download.microsoft.com/download/4/D/B/4DBCBAC4-F647-45C9-B9F4-ACF4976FFDB6/officexp-KB947320-FullFile-ARA.exe|updates/officexp/officexp-kb947320-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/2/5/6/25674E82-8E30-4014-8DBD-53C6C587A8CE/officexp-KB947320-FullFile-CSY.exe|updates/officexp/officexp-kb947320-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/D/2/0/D20DFF16-4673-4788-8AAC-0D4D637C9222/officexp-KB947320-FullFile-DAN.exe|updates/officexp/officexp-kb947320-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/5/F/8/5F8AE092-447E-47FE-85DB-B6CAE9005A96/officexp-KB947320-FullFile-DEU.exe|updates/officexp/officexp-kb947320-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/A/B/6/AB60A311-A7E9-48E3-AD32-127BC7A961B0/officexp-KB947320-FullFile-ELL.exe|updates/officexp/officexp-kb947320-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/0/E/1/0E1C64D7-09DD-44AF-AF9F-9C882B665F57/officexp-KB947320-FullFile-ENU.exe|updates/officexp/officexp-kb947320-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/0/8/4/0841763B-E5C1-4995-AAB6-BFC75A052DF4/officexp-KB947320-FullFile-ESN.exe|updates/officexp/officexp-kb947320-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/9/E/D/9ED25D61-9807-4F62-A45B-8592FEFE56D7/officexp-KB947320-FullFile-FIN.exe|updates/officexp/officexp-kb947320-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/D/9/0/D90C4FF7-D03B-4756-92E7-7E983AEC6491/officexp-KB947320-FullFile-FRA.exe|updates/officexp/officexp-kb947320-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/1/8/1/181D49C3-AFCC-438D-B9C4-308F16135AD6/officexp-KB947320-FullFile-HEB.exe|updates/officexp/officexp-kb947320-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/E/F/1/EF13ACEA-433F-421B-8AFF-53AD09684D96/officexp-KB947320-FullFile-HUN.exe|updates/officexp/officexp-kb947320-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/F/A/6/FA6A9630-4EC8-444A-B299-F71D1CFA1C2D/officexp-KB947320-FullFile-ITA.exe|updates/officexp/officexp-kb947320-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/7/8/1/781F63D7-DF0B-4951-BE9D-1627D7CFCF68/officexp-KB947320-FullFile-JPN.exe|updates/officexp/officexp-kb947320-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/D/B/7/DB76F701-3903-45F0-A876-97E2D7E354F1/officexp-KB947320-FullFile-KOR.exe|updates/officexp/officexp-kb947320-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/8/7/9/8793FE45-0D6E-46DA-81C6-1BB279309AF6/officexp-KB947320-FullFile-NLD.exe|updates/officexp/officexp-kb947320-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/C/D/2/CD285441-FD1F-4D38-8353-435D0A8F170B/officexp-KB947320-FullFile-NOR.exe|updates/officexp/officexp-kb947320-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/7/0/5/70581501-4DDE-4EFE-ADE3-767EFA38D04C/officexp-KB947320-FullFile-PLK.exe|updates/officexp/officexp-kb947320-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/2/6/B/26B2E04B-ED7E-4179-BC29-030BBC0A60C8/officexp-KB947320-FullFile-PTB.exe|updates/officexp/officexp-kb947320-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/D/6/5/D65F8863-7B69-4085-9E34-E304394A04E3/officexp-KB947320-FullFile-PTG.exe|updates/officexp/officexp-kb947320-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/5/9/D/59DECFF3-1B8D-40E6-B868-4C3E31F128F7/officexp-KB947320-FullFile-RUS.exe|updates/officexp/officexp-kb947320-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/C/E/E/CEE5EB47-194F-40D3-B209-EA690975BFA2/officexp-KB947320-FullFile-SVE.exe|updates/officexp/officexp-kb947320-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/7/9/B/79B9881B-894C-4606-BCC6-A2511BA2D37C/officexp-KB947320-FullFile-TRK.exe|updates/officexp/officexp-kb947320-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB947320-FullFile-%WINLANG%.exe /Q"

:: Security Update for Office Web Components 2000 for Microsoft Office XP (KB932031)
:: MS08-017: Description of the security update for the Office XP Web Components: March 11, 2008
:: <http://support.microsoft.com/kb/932031>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=f54d2a5e-c0ed-4f70-9746-38dd61c8e9d7>
:: URL|ARA|http://download.microsoft.com/download/c/7/4/c748e1da-1695-49f9-a6dd-39c3b039b067/officexp-KB932031-FullFile-ARA.exe|updates/officexp/officexp-kb932031-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/c/b/2/cb2c8ba2-06ed-4a31-b517-d12a673fc7b5/officexp-KB932031-FullFile-CSY.exe|updates/officexp/officexp-kb932031-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/3/5/3/3530fcf6-5c1e-40ff-9cbd-0c41158ee692/officexp-KB932031-FullFile-DAN.exe|updates/officexp/officexp-kb932031-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/5/6/f/56f019f2-631f-4337-a635-ee5064ea0eb1/officexp-KB932031-FullFile-DEU.exe|updates/officexp/officexp-kb932031-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/d/e/0/de02695a-a448-44ac-9617-be62c82eaf25/officexp-KB932031-FullFile-ELL.exe|updates/officexp/officexp-kb932031-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/b/0/3/b03c2d8d-7892-4a01-96ec-f8dd7c6a0504/officexp-KB932031-FullFile-ENU.exe|updates/officexp/officexp-kb932031-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/3/5/9/3593bc91-3db4-4ac8-aae4-66833a7c03ba/officexp-KB932031-FullFile-ESN.exe|updates/officexp/officexp-kb932031-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/3/c/8/3c851ffa-439a-47ad-a22e-da49240e31f0/officexp-KB932031-FullFile-FIN.exe|updates/officexp/officexp-kb932031-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/b/e/1/be1955a9-7906-4adf-aa61-41657c312d8b/officexp-KB932031-FullFile-FRA.exe|updates/officexp/officexp-kb932031-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/1/7/d/17d7ebe6-49ad-4449-9f78-8f277f9074a5/officexp-KB932031-FullFile-HEB.exe|updates/officexp/officexp-kb932031-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/e/a/b/eabb39dd-dd9a-4853-bb72-2cb4dd6d7bf4/officexp-KB932031-FullFile-HUN.exe|updates/officexp/officexp-kb932031-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/a/f/9/af931225-ae52-4547-b613-320fb8ba097e/officexp-KB932031-FullFile-ITA.exe|updates/officexp/officexp-kb932031-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/0/4/3/043a484c-4818-40a5-9074-00999d379335/officexp-KB932031-FullFile-JPN.exe|updates/officexp/officexp-kb932031-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/6/0/8/60861122-8704-49c3-8542-c4f7c30e4f31/officexp-KB932031-FullFile-KOR.exe|updates/officexp/officexp-kb932031-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/0/8/e/08e13dbb-afaf-44a0-ab43-21073bd42b07/officexp-KB932031-FullFile-NLD.exe|updates/officexp/officexp-kb932031-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/7/a/e/7ae65b26-4f82-4147-ae6d-26d6d013b985/officexp-KB932031-FullFile-NOR.exe|updates/officexp/officexp-kb932031-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/f/3/7/f372ba54-cbb6-4748-92fe-74c6ab09b7bb/officexp-KB932031-FullFile-PLK.exe|updates/officexp/officexp-kb932031-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/d/c/7/dc7ca1af-2271-4c73-8967-143a37ad759e/officexp-KB932031-FullFile-PTB.exe|updates/officexp/officexp-kb932031-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/f/7/a/f7a135a4-9b4f-4457-b6e6-00d988e96c56/officexp-KB932031-FullFile-PTG.exe|updates/officexp/officexp-kb932031-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/6/d/9/6d9dc06e-b010-4962-b760-de84450e99a9/officexp-KB932031-FullFile-RUS.exe|updates/officexp/officexp-kb932031-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/5/4/a/54a9e59f-d177-454d-bf8e-c8555d0c48dd/officexp-KB932031-FullFile-SVE.exe|updates/officexp/officexp-kb932031-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/9/9/1/991c0602-09ed-4e69-8591-0cd71d898807/officexp-KB932031-FullFile-TRK.exe|updates/officexp/officexp-kb932031-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB932031-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office XP (KB957646)
:: MS09-024: Description of the security update for Office XP: June 9, 2009
:: <http://support.microsoft.com/kb/957646>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=b0ba8c9e-75ee-46bd-9e92-d4e6599309ad>
:: URL|ARA|http://download.microsoft.com/download/3/3/A/33A0B243-F350-4037-A50C-AD831D3F8713/officexp-KB957646-FullFile-ARA.exe|updates/officexp/officexp-kb957646-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/4/0/C/40CA61D1-D775-489D-943B-F0B9E7D59267/officexp-KB957646-FullFile-CSY.exe|updates/officexp/officexp-kb957646-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/8/A/8/8A8D6AB7-FC50-4890-9F12-7C39A92CA916/officexp-KB957646-FullFile-DAN.exe|updates/officexp/officexp-kb957646-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/F/E/4/FE4C0AC6-40B8-4DBC-B0AB-1E8FA021CB17/officexp-KB957646-FullFile-DEU.exe|updates/officexp/officexp-kb957646-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/7/0/8/7080DF35-A6B7-4296-95AF-A18421A9B746/officexp-KB957646-FullFile-ELL.exe|updates/officexp/officexp-kb957646-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/2/F/F/2FF106B3-75F0-41C7-81EE-E76DF50A1EAF/officexp-KB957646-FullFile-ENU.exe|updates/officexp/officexp-kb957646-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/E/4/3/E43A7A3B-4592-4C4D-9FB4-D51E39390917/officexp-KB957646-FullFile-ESN.exe|updates/officexp/officexp-kb957646-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/F/4/5/F4525AEF-075E-4BF3-A704-D072EE33950F/officexp-KB957646-FullFile-FIN.exe|updates/officexp/officexp-kb957646-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/A/3/F/A3F9DF49-CABC-4E93-A9CF-F5738AE3ABF9/officexp-KB957646-FullFile-FRA.exe|updates/officexp/officexp-kb957646-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/D/0/4/D0417014-178C-42C8-B439-0111960FC2F3/officexp-KB957646-FullFile-HEB.exe|updates/officexp/officexp-kb957646-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/2/1/F/21F058C7-B1E5-42EF-B5F0-68FD76564140/officexp-KB957646-FullFile-HUN.exe|updates/officexp/officexp-kb957646-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/7/7/E/77E7AFC9-E224-4E71-8AB1-9ED8EB396ECF/officexp-KB957646-FullFile-ITA.exe|updates/officexp/officexp-kb957646-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/8/1/2/8121F64A-C0BA-4008-AE93-E4E4F7F18DFD/officexp-KB957646-FullFile-JPN.exe|updates/officexp/officexp-kb957646-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/B/C/C/BCCB429A-8B8F-4392-BAB9-4D5456EC6496/officexp-KB957646-FullFile-KOR.exe|updates/officexp/officexp-kb957646-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/3/D/B/3DB9DFA2-77A3-452F-9F7F-D2DC202C9445/officexp-KB957646-FullFile-NLD.exe|updates/officexp/officexp-kb957646-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/B/B/9/BB990227-7D36-489A-B410-F8B63F7DC17D/officexp-KB957646-FullFile-NOR.exe|updates/officexp/officexp-kb957646-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/9/5/B/95B0A206-4262-4017-9EA8-88C73DF5FB34/officexp-KB957646-FullFile-PLK.exe|updates/officexp/officexp-kb957646-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/5/D/8/5D8F89F5-F5BA-47C4-BD1B-29646B161219/officexp-KB957646-FullFile-PTB.exe|updates/officexp/officexp-kb957646-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/C/C/7/CC71FE6B-F23C-43C1-B5E2-193E5C7DD1F9/officexp-KB957646-FullFile-PTG.exe|updates/officexp/officexp-kb957646-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/F/7/0/F700F82E-CFB9-49E1-8410-13DCC90695E3/officexp-KB957646-FullFile-RUS.exe|updates/officexp/officexp-kb957646-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/1/1/A/11A641AF-D237-4185-92E1-A3A8C935BB72/officexp-KB957646-FullFile-SVE.exe|updates/officexp/officexp-kb957646-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/1/7/B/17BD9B98-7AB2-4D3E-B5E2-1CE5C5E86972/officexp-KB957646-FullFile-TRK.exe|updates/officexp/officexp-kb957646-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB957646-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft PowerPoint 2002 (KB948995)
:: MS08-051: Description of the security update for PowerPoint 2002: August 12, 2008
:: <http://support.microsoft.com/kb/948995>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=f8921074-7985-4d42-ac2b-d2f3b1d466ba>
:: URL|ARA|http://download.microsoft.com/download/7/e/9/7e9bc634-bfc7-48f7-8781-b59b3073945e/officexp-KB948995-FullFile-ARA.exe|updates/officexp/officexp-kb948995-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/7/4/f/74f9e39f-3ee4-4fab-927d-929833ae6979/officexp-KB948995-FullFile-CSY.exe|updates/officexp/officexp-kb948995-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/c/a/e/cae7381e-e3a7-497e-9b82-a77dea02bc4c/officexp-KB948995-FullFile-DAN.exe|updates/officexp/officexp-kb948995-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/8/9/b/89bdfe73-d1c9-4ae1-bc0f-9838ba7f22d1/officexp-KB948995-FullFile-DEU.exe|updates/officexp/officexp-kb948995-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/0/2/e/02e4a38b-80b5-4adc-8629-b512ac6d7393/officexp-KB948995-FullFile-ELL.exe|updates/officexp/officexp-kb948995-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/d/e/0/de0d0235-5bd1-4390-8f93-211afe2d4a7f/officexp-KB948995-FullFile-ENU.exe|updates/officexp/officexp-kb948995-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/7/8/4/7847eb0b-889b-4162-85ac-84fab5a4605e/officexp-KB948995-FullFile-ESN.exe|updates/officexp/officexp-kb948995-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/f/c/6/fc64e861-3f64-41b5-909b-f584c24309a5/officexp-KB948995-FullFile-FIN.exe|updates/officexp/officexp-kb948995-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/e/2/b/e2bb2115-2141-4558-9f6b-aafc079b548f/officexp-KB948995-FullFile-FRA.exe|updates/officexp/officexp-kb948995-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/3/6/9/369a5b2a-1568-46c7-89c9-13e3e5dfae02/officexp-KB948995-FullFile-HEB.exe|updates/officexp/officexp-kb948995-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/2/6/f/26f85e5d-a888-4d1e-9c79-d6e9e6456c1a/officexp-KB948995-FullFile-HUN.exe|updates/officexp/officexp-kb948995-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/9/a/2/9a2b21d1-6ed7-417b-9cd8-de95a72e36af/officexp-KB948995-FullFile-ITA.exe|updates/officexp/officexp-kb948995-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/a/2/0/a205ec9e-0e40-405f-80be-1cee0e6c3847/officexp-KB948995-FullFile-JPN.exe|updates/officexp/officexp-kb948995-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/9/5/4/954276d6-eec2-498b-aee4-9fb541cb7077/officexp-KB948995-FullFile-KOR.exe|updates/officexp/officexp-kb948995-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/a/d/2/ad2c5353-4746-4ccb-ad1a-238882b8310a/officexp-KB948995-FullFile-NLD.exe|updates/officexp/officexp-kb948995-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/5/3/2/532f741c-6a8e-47f9-9daf-c6736001e098/officexp-KB948995-FullFile-NOR.exe|updates/officexp/officexp-kb948995-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/3/6/1/36166fd0-3424-4698-93c1-f678f92e848c/officexp-KB948995-FullFile-PLK.exe|updates/officexp/officexp-kb948995-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/0/e/0/0e0da286-4eca-4fef-9516-52e86f6a61b6/officexp-KB948995-FullFile-PTB.exe|updates/officexp/officexp-kb948995-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/f/1/2/f12c9715-61dd-4496-a916-fa1db35b6815/officexp-KB948995-FullFile-PTG.exe|updates/officexp/officexp-kb948995-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/0/7/e/07e85a20-474d-4fde-be69-d1c5af04661b/officexp-KB948995-FullFile-RUS.exe|updates/officexp/officexp-kb948995-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/2/3/6/236c3e4e-65b5-48aa-8f8d-f9a0d050c6a3/officexp-KB948995-FullFile-SVE.exe|updates/officexp/officexp-kb948995-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/3/d/f/3dff532a-d0ea-45b3-92fc-8ff5946754d9/officexp-KB948995-FullFile-TRK.exe|updates/officexp/officexp-kb948995-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB948995-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office XP (KB953405)
:: MS08-052 and MS08-055: Description of the security update for Office XP: September 9, 2008
:: <http://support.microsoft.com/kb/953405>
:: <http://www.microsoft.com/DOWNLOADS/details.aspx?familyid=EF3DE64C-FC17-4500-9DA4-A3BBA97FDA6D>
:: URL|ARA|http://download.microsoft.com/download/f/8/1/f81d1605-4346-4d46-b5be-f39cd6cc7524/officexp-KB953405-FullFile-ARA.exe|updates/officexp/officexp-kb953405-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/4/f/4/4f4e15e3-9e82-4f99-81f4-6893583a492f/officexp-KB953405-FullFile-CSY.exe|updates/officexp/officexp-kb953405-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/6/a/f/6afeb97c-7fc4-4800-8b2f-5e2c2f4a000e/officexp-KB953405-FullFile-DAN.exe|updates/officexp/officexp-kb953405-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/5/7/a/57a9285b-29d0-4ee7-ae90-762bf62cc2f9/officexp-KB953405-FullFile-DEU.exe|updates/officexp/officexp-kb953405-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/c/4/a/c4a233e3-ffce-4e21-a1b7-761614b906b0/officexp-KB953405-FullFile-ELL.exe|updates/officexp/officexp-kb953405-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/d/c/a/dca1182f-cde1-4d98-9552-5db0360592c7/officexp-KB953405-FullFile-ENU.exe|updates/officexp/officexp-kb953405-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/2/c/a/2ca3640b-50e4-43bd-b809-78c1130d5cb9/officexp-KB953405-FullFile-ESN.exe|updates/officexp/officexp-kb953405-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/4/d/8/4d818d15-3efc-4f92-ba90-45f0c50e5cba/officexp-KB953405-FullFile-FIN.exe|updates/officexp/officexp-kb953405-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/0/b/3/0b35911b-069e-43c8-aec8-1298ab2d103b/officexp-KB953405-FullFile-FRA.exe|updates/officexp/officexp-kb953405-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/d/2/8/d28fdafc-5f44-4257-8aa8-9b33d06dc971/officexp-KB953405-FullFile-HEB.exe|updates/officexp/officexp-kb953405-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/7/b/f/7bf4305b-4d87-44ce-827f-78914bf3f412/officexp-KB953405-FullFile-HUN.exe|updates/officexp/officexp-kb953405-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/3/3/0/33021be8-2431-4cd9-b830-414b3ebda6a7/officexp-KB953405-FullFile-ITA.exe|updates/officexp/officexp-kb953405-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/8/b/1/8b1dec26-782e-4b03-bfd4-c5b2f8784325/officexp-KB953405-FullFile-JPN.exe|updates/officexp/officexp-kb953405-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/7/0/4/70491c9d-5f91-4856-8002-049a45f58104/officexp-KB953405-FullFile-KOR.exe|updates/officexp/officexp-kb953405-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/3/2/d/32d909cc-0d89-4c86-98b2-51b5dc1e7302/officexp-KB953405-FullFile-NLD.exe|updates/officexp/officexp-kb953405-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/7/6/0/760d082c-4781-4626-bd29-1cd0d257d26b/officexp-KB953405-FullFile-NOR.exe|updates/officexp/officexp-kb953405-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/d/9/8/d98334f3-e899-4c45-81cd-1f095eeded9a/officexp-KB953405-FullFile-PLK.exe|updates/officexp/officexp-kb953405-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/8/a/a/8aa27b59-2c02-49d4-a21c-91abef706644/officexp-KB953405-FullFile-PTB.exe|updates/officexp/officexp-kb953405-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/3/0/a/30af4c9d-5a2c-4ccf-a0ee-6ab5e572ebd7/officexp-KB953405-FullFile-PTG.exe|updates/officexp/officexp-kb953405-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/c/b/6/cb64bc75-af55-4a2e-a51e-56c8dee9293e/officexp-KB953405-FullFile-RUS.exe|updates/officexp/officexp-kb953405-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/b/a/2/ba2b855b-7ad7-4a33-b882-0bc29d51f9a0/officexp-KB953405-FullFile-SVE.exe|updates/officexp/officexp-kb953405-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/d/f/8/df8fac3d-a6cd-48d5-8d68-f34c580c7c3f/officexp-KB953405-FullFile-TRK.exe|updates/officexp/officexp-kb953405-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB953405-FullFile-%WINLANG%.exe /Q"

:: Security Update for Office XP (KB956464)
:: MS08-056: Description of the security update for Microsoft Office XP: October 14, 2008
:: <http://support.microsoft.com/kb/956464>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=B1AEE2D5-BFA0-40E3-91B6-98BF65524E8C>
:: URL|ARA|http://download.microsoft.com/download/f/a/6/fa65955d-042f-4804-a488-3f92047cf5ff/officexp-KB956464-FullFile-ARA.exe|updates/officexp/officexp-kb956464-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/7/9/a/79a0e10b-cc39-4081-b228-89936a44e550/officexp-KB956464-FullFile-CSY.exe|updates/officexp/officexp-kb956464-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/4/f/b/4fb70420-2f2d-446e-87ee-7b65dc1c4339/officexp-KB956464-FullFile-DAN.exe|updates/officexp/officexp-kb956464-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/d/5/1/d5165f32-d28d-446f-a21c-b7706d281966/officexp-KB956464-FullFile-DEU.exe|updates/officexp/officexp-kb956464-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/1/5/b/15b4f56e-7418-47e6-8087-cc7c8778f27a/officexp-KB956464-FullFile-ELL.exe|updates/officexp/officexp-kb956464-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/1/6/2/162af730-5450-4566-a6a1-ac3630dd0fa3/officexp-KB956464-FullFile-ENU.exe|updates/officexp/officexp-kb956464-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/f/b/f/fbf77645-6bdc-43ef-9147-e231a5a6299f/officexp-KB956464-FullFile-ESN.exe|updates/officexp/officexp-kb956464-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/d/0/f/d0fdaaa3-6fc1-487f-8e81-529c6f9c8676/officexp-KB956464-FullFile-FIN.exe|updates/officexp/officexp-kb956464-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/8/a/6/8a69581c-60d9-4f2c-9a74-e706c53c17eb/officexp-KB956464-FullFile-FRA.exe|updates/officexp/officexp-kb956464-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/0/6/3/06383208-5a82-4771-a1e8-2a65e186ed53/officexp-KB956464-FullFile-HEB.exe|updates/officexp/officexp-kb956464-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/2/3/c/23c6f6ab-ee79-40bf-94ca-ebf81ff6e2c1/officexp-KB956464-FullFile-HUN.exe|updates/officexp/officexp-kb956464-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/a/0/0/a00cdc0b-7ad4-4ef0-8a80-5b6bf8e6e641/officexp-KB956464-FullFile-ITA.exe|updates/officexp/officexp-kb956464-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/8/9/6/89649350-dcab-4b8d-b749-00cad12eaab2/officexp-KB956464-FullFile-JPN.exe|updates/officexp/officexp-kb956464-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/7/d/0/7d0ef2d1-4ea2-4933-b4c0-73cf6fd477f9/officexp-KB956464-FullFile-KOR.exe|updates/officexp/officexp-kb956464-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/9/5/5/9558bd9d-2b0f-4359-bcb4-bbb8101be614/officexp-KB956464-FullFile-NLD.exe|updates/officexp/officexp-kb956464-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/f/a/d/fade15f3-4b0f-47ee-bf40-66e26cdf0016/officexp-KB956464-FullFile-NOR.exe|updates/officexp/officexp-kb956464-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/d/5/6/d56f66b2-290f-4b36-8213-8d9c61bd9b7c/officexp-KB956464-FullFile-PLK.exe|updates/officexp/officexp-kb956464-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/2/2/c/22c56627-59a9-413e-8c00-4f8cf0fc9d59/officexp-KB956464-FullFile-PTB.exe|updates/officexp/officexp-kb956464-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/f/5/0/f502f122-41e8-4a4b-a7d0-c42e2b7a5385/officexp-KB956464-FullFile-PTG.exe|updates/officexp/officexp-kb956464-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/c/6/3/c63dd114-c71f-4dc1-b14c-5dca6750db41/officexp-KB956464-FullFile-RUS.exe|updates/officexp/officexp-kb956464-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/9/5/7/957ef70b-01db-411a-8d8f-854250bb1890/officexp-KB956464-FullFile-SVE.exe|updates/officexp/officexp-kb956464-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/0/9/4/09499842-c6d3-40de-8719-d67ed0bb0058/officexp-KB956464-FullFile-TRK.exe|updates/officexp/officexp-kb956464-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB956464-FullFile-%WINLANG%.exe /Q"

:: Security Update for Office XP: WordPerfect 5.x Converter (KB873379)
:: <http://support.microsoft.com/?kbid=873379>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=10A6CEB3-7B94-4F74-A5A0-60C31CE2F57B>
:: URL|ARA|http://download.microsoft.com/download/8/2/c/82c801e0-f93d-48c7-ba3c-ddad906adf38/officexp-kb873379-fullfile-ara.exe|updates/officexp/officexp-kb873379-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/9/b/f/9bfe51a6-b8b8-4ff1-b392-287a8a52e65d/officexp-kb873379-fullfile-csy.exe|updates/officexp/officexp-kb873379-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/5/a/7/5a7b0c14-45c5-4061-a33b-2e532834b859/officexp-kb873379-fullfile-dan.exe|updates/officexp/officexp-kb873379-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/5/6/2/56223f6d-b460-4bc9-8343-a80c14641462/officexp-kb873379-fullfile-deu.exe|updates/officexp/officexp-kb873379-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/e/7/0/e70e4d86-c0aa-447e-bc3e-3444d1976733/officexp-kb873379-fullfile-ell.exe|updates/officexp/officexp-kb873379-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/d/4/8/d484bbde-75c0-472e-af88-2e754997f273/officexp-kb873379-fullfile-enu.exe|updates/officexp/officexp-kb873379-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/a/9/2/a92b637c-1466-445e-9252-009b2af45c46/officexp-kb873379-fullfile-esn.exe|updates/officexp/officexp-kb873379-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/a/b/d/abd6962b-1cc8-4b72-bf16-b46a8510b98b/officexp-kb873379-fullfile-fin.exe|updates/officexp/officexp-kb873379-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/1/a/9/1a903427-7942-47af-9a34-73b9f851f373/officexp-kb873379-fullfile-fra.exe|updates/officexp/officexp-kb873379-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/e/c/e/ece3fbd8-4a29-49d2-ab76-a5dd43665b76/officexp-kb873379-fullfile-heb.exe|updates/officexp/officexp-kb873379-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/0/f/a/0fab1568-8a01-4e54-a1ac-eb4d2e47d40f/officexp-kb873379-fullfile-hun.exe|updates/officexp/officexp-kb873379-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/f/9/0/f908ed1c-9f32-4855-bdfe-6c313fbae140/officexp-kb873379-fullfile-ita.exe|updates/officexp/officexp-kb873379-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/2/8/f/28fdb387-ed2f-46d5-95f5-3665e3ce9f52/officexp-kb873379-fullfile-jpn.exe|updates/officexp/officexp-kb873379-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/1/9/0/1901f2ad-a96c-4ee9-86da-6995572209ae/officexp-kb873379-fullfile-kor.exe|updates/officexp/officexp-kb873379-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/3/d/2/3d2b2a23-7ad1-4baf-b6e1-fdae0d768017/officexp-kb873379-fullfile-nld.exe|updates/officexp/officexp-kb873379-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/b/2/9/b297107a-3f73-4502-ab88-3a2f75c6e049/officexp-kb873379-fullfile-nor.exe|updates/officexp/officexp-kb873379-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/d/2/6/d26c1e96-fc59-46ce-afea-eaaf98920fa5/officexp-kb873379-fullfile-plk.exe|updates/officexp/officexp-kb873379-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/e/d/a/edafaea0-dd52-415f-a887-336aedc5e987/officexp-kb873379-fullfile-ptb.exe|updates/officexp/officexp-kb873379-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/2/1/2/212d5342-b5c9-40f1-a9c0-de2a69b3f013/officexp-kb873379-fullfile-ptg.exe|updates/officexp/officexp-kb873379-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/5/1/b/51b17201-0a1e-4768-a656-2eeaef27c06b/officexp-kb873379-fullfile-rus.exe|updates/officexp/officexp-kb873379-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/b/4/c/b4cee13a-022f-4d37-b14d-8156b2403b86/officexp-kb873379-fullfile-sve.exe|updates/officexp/officexp-kb873379-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/3/8/e/38e414d1-e733-4681-8dd9-2edc458b1666/officexp-kb873379-fullfile-trk.exe|updates/officexp/officexp-kb873379-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-kb873379-fullfile-%WINLANG%.exe /Q"

:: Security Update for PowerPoint 2002 (KB905758)
:: Description of the security update for PowerPoint 2002: March 14, 2006
:: <http://support.microsoft.com/kb/905758>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=C74CB45B-CF92-4EFC-8DBE-DBF4BDEBE215>
:: URL|ARA|http://download.microsoft.com/download/4/c/8/4c811666-d2a1-40ac-bb8a-75e909f83328/officexp-KB905758-FullFile-ARA.exe|updates/officexp/officexp-kb905758-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/9/b/a/9ba49196-c6b0-48d0-b8f8-47fa1e534223/officexp-KB905758-FullFile-CSY.exe|updates/officexp/officexp-kb905758-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/9/c/9/9c9a2c1d-d137-4cd1-9d37-e6c0bb42a636/officexp-KB905758-FullFile-DAN.exe|updates/officexp/officexp-kb905758-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/9/2/a/92a583a0-cafc-4e30-89b9-21d32c0e9497/officexp-KB905758-FullFile-DEU.exe|updates/officexp/officexp-kb905758-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/2/4/a/24a41750-3086-4bbb-91b2-d71d7d43fa98/officexp-KB905758-FullFile-ELL.exe|updates/officexp/officexp-kb905758-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/e/c/2/ec238e91-c560-4bf3-bc57-7eb0cfc90236/officexp-KB905758-FullFile-ENU.exe|updates/officexp/officexp-kb905758-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/c/d/5/cd539a9a-942b-4e82-a6b8-78044d733471/officexp-KB905758-FullFile-ESN.exe|updates/officexp/officexp-kb905758-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/c/3/1/c318a837-add5-4f3a-8769-2e5bff6b1f78/officexp-KB905758-FullFile-FIN.exe|updates/officexp/officexp-kb905758-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/d/f/7/df7585b0-a5d4-4c2a-86c9-be41dca4ec44/officexp-KB905758-FullFile-FRA.exe|updates/officexp/officexp-kb905758-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/e/6/b/e6b93413-6d49-4695-939e-febf0430a5d1/officexp-KB905758-FullFile-HEB.exe|updates/officexp/officexp-kb905758-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/f/e/f/fefb078f-22d2-4bae-8a50-2359c4f48006/officexp-KB905758-FullFile-HUN.exe|updates/officexp/officexp-kb905758-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/2/e/a/2ea4d62d-c41d-4307-adda-149061359227/officexp-KB905758-FullFile-ITA.exe|updates/officexp/officexp-kb905758-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/9/1/8/91863fdf-2a70-40a1-a50a-390db69d204a/officexp-KB905758-FullFile-JPN.exe|updates/officexp/officexp-kb905758-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/a/b/3/ab39bfc2-921e-4d48-ab62-535e1fa10449/officexp-KB905758-FullFile-KOR.exe|updates/officexp/officexp-kb905758-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/2/8/a/28acbe55-1d15-47be-9631-fd63914a072d/officexp-KB905758-FullFile-NLD.exe|updates/officexp/officexp-kb905758-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/3/2/6/326db4c6-9b04-428e-96e1-90d47c66a407/officexp-KB905758-FullFile-NOR.exe|updates/officexp/officexp-kb905758-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/8/5/8/8581aad8-4062-4517-9595-6ff7b19a9ab4/officexp-KB905758-FullFile-PLK.exe|updates/officexp/officexp-kb905758-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/8/d/f/8df3d3c3-3e90-4494-94ba-d47ca4013a38/officexp-KB905758-FullFile-PTB.exe|updates/officexp/officexp-kb905758-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/5/9/f/59ffb58a-149e-4dcf-a692-004bd8351208/officexp-KB905758-FullFile-PTG.exe|updates/officexp/officexp-kb905758-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/8/1/7/81727d43-109f-4935-9728-8d4d224d000f/officexp-KB905758-FullFile-RUS.exe|updates/officexp/officexp-kb905758-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/1/4/e/14e080c0-9489-4038-b5ac-f8eb4ed50184/officexp-KB905758-FullFile-SVE.exe|updates/officexp/officexp-kb905758-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/b/4/2/b42f1191-4c84-4959-b944-8341b033bc30/officexp-KB905758-FullFile-TRK.exe|updates/officexp/officexp-kb905758-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB905758-FullFile-%WINLANG%.exe /Q"

:: Security Update for Outlook 2002 (KB905649)
:: Description of the Security Update for Outlook 2002: March 14, 2006
:: <http://support.microsoft.com/kb/905649>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=9B0D4441-4F88-4B59-A4F3-6FB558EF8135>
:: URL|ARA|http://download.microsoft.com/download/b/1/b/b1b53a10-4147-4866-bdc4-f544fc254563/officexp-KB905649-FullFile-ARA.exe|updates/officexp/officexp-kb905649-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/9/4/e/94edfd44-870c-4659-adad-5b286b5fdc5f/officexp-KB905649-FullFile-CSY.exe|updates/officexp/officexp-kb905649-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/d/5/9/d5999b3d-1df1-41af-aba7-e884967120a2/officexp-KB905649-FullFile-DAN.exe|updates/officexp/officexp-kb905649-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/8/0/9/8090baf8-9495-4739-b15c-2cac8edd3c45/officexp-KB905649-FullFile-DEU.exe|updates/officexp/officexp-kb905649-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/f/4/c/f4cd5bec-c191-428e-af3c-24674a8ba1a0/officexp-KB905649-FullFile-ELL.exe|updates/officexp/officexp-kb905649-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/0/5/f/05f62863-4568-4203-ae8a-b845cfab6e06/officexp-KB905649-FullFile-ENU.exe|updates/officexp/officexp-kb905649-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/b/4/9/b49f8fa5-c77e-4d07-973b-6375011f95c9/officexp-KB905649-FullFile-ESN.exe|updates/officexp/officexp-kb905649-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/1/6/2/162ef82e-d853-4f7b-9dc0-0f2fecc37619/officexp-KB905649-FullFile-FIN.exe|updates/officexp/officexp-kb905649-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/c/7/a/c7a53b21-adec-4d3e-9797-6597e31b81c5/officexp-KB905649-FullFile-FRA.exe|updates/officexp/officexp-kb905649-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/6/d/c/6dcb3057-4356-4d98-accc-d195952176b0/officexp-KB905649-FullFile-HEB.exe|updates/officexp/officexp-kb905649-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/9/6/4/964f76d3-4dd6-4b54-b638-872018756764/officexp-KB905649-FullFile-HUN.exe|updates/officexp/officexp-kb905649-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/4/4/4/444e48a3-d633-4cdd-b188-ddc9eceec8c2/officexp-KB905649-FullFile-ITA.exe|updates/officexp/officexp-kb905649-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/c/c/4/cc4058fb-0ed7-4dd6-9ae3-1935286b67db/officexp-KB905649-FullFile-JPN.exe|updates/officexp/officexp-kb905649-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/a/6/8/a680b3f3-1b2d-456d-9d6a-13973613f90a/officexp-KB905649-FullFile-KOR.exe|updates/officexp/officexp-kb905649-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/4/6/5/4651d84a-4014-4b62-9279-b0094f816a20/officexp-KB905649-FullFile-NLD.exe|updates/officexp/officexp-kb905649-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/a/c/c/acced7bf-17c3-41c8-a38e-9a166f6f9d34/officexp-KB905649-FullFile-NOR.exe|updates/officexp/officexp-kb905649-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/8/e/7/8e76d424-a15e-43ca-b123-7803ae637f51/officexp-KB905649-FullFile-PLK.exe|updates/officexp/officexp-kb905649-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/1/e/e/1ee1747a-ec86-4853-98c2-4a7c10d868b5/officexp-KB905649-FullFile-PTB.exe|updates/officexp/officexp-kb905649-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/6/8/6/686788f3-73e8-49e5-92d9-2e176996508c/officexp-KB905649-FullFile-PTG.exe|updates/officexp/officexp-kb905649-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/d/b/2/db2c5a10-21df-4b6c-a005-367e06c5d26f/officexp-KB905649-FullFile-RUS.exe|updates/officexp/officexp-kb905649-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/1/3/d/13dbc042-81d8-40f9-925b-5a01d30fe806/officexp-KB905649-FullFile-SVE.exe|updates/officexp/officexp-kb905649-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/7/9/a/79a312c7-dcdd-49dd-9d33-ef34b52ff750/officexp-KB905649-FullFile-TRK.exe|updates/officexp/officexp-kb905649-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB905649-FullFile-%WINLANG%.exe /Q"

:: Security Update for SharePoint Team Services (KB911701)
:: Description of the security update for SharePoint Team Services: April 11, 2006
:: <http://support.microsoft.com/kb/911701>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=EEE40662-39E6-4C07-8241-1AC4F5D24FFC>
:: URL|ARA|http://download.microsoft.com/download/0/a/f/0afb8e16-7817-41dc-9335-2f195c1ee6ab/officexp-KB911701-FullFile-ARA.exe|updates/officexp/officexp-kb911701-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/7/b/7/7b715fc0-b7a4-4a99-943f-0e04c8d6d714/officexp-KB911701-FullFile-CSY.exe|updates/officexp/officexp-kb911701-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/7/e/6/7e6eebb8-b1c6-4b3b-a1b0-89c4848e8b6e/officexp-KB911701-FullFile-DAN.exe|updates/officexp/officexp-kb911701-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/f/5/1/f51d8a18-6b8c-4bae-9a71-7af8e019a82b/officexp-KB911701-FullFile-DEU.exe|updates/officexp/officexp-kb911701-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/f/9/4/f941521e-0bb8-425e-887f-fcc8d2cead36/officexp-KB911701-FullFile-ELL.exe|updates/officexp/officexp-kb911701-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/4/3/d/43dbb8ee-10a2-44a7-baa6-eea7884e3375/officexp-KB911701-FullFile-ENU.exe|updates/officexp/officexp-kb911701-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/f/2/8/f2869658-c0d5-44d0-b595-278154a9e80e/officexp-KB911701-FullFile-ESN.exe|updates/officexp/officexp-kb911701-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/7/2/5/7251f175-fc7b-404f-a63f-acb4c63badad/officexp-KB911701-FullFile-FIN.exe|updates/officexp/officexp-kb911701-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/d/b/7/db7270f0-08e9-428e-89c7-5468d18b45a1/officexp-KB911701-FullFile-FRA.exe|updates/officexp/officexp-kb911701-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/d/2/7/d27eab5c-86b3-42f0-8d1d-0cb669198479/officexp-KB911701-FullFile-HEB.exe|updates/officexp/officexp-kb911701-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/8/d/5/8d55e300-3304-4876-8a70-f1378c10504a/officexp-KB911701-FullFile-HUN.exe|updates/officexp/officexp-kb911701-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/e/9/f/e9fe7ede-ce81-42c2-aba7-71ecbd00b98c/officexp-KB911701-FullFile-ITA.exe|updates/officexp/officexp-kb911701-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/7/e/7/7e7a9088-ff86-4c95-8aae-e89a23827631/officexp-KB911701-FullFile-JPN.exe|updates/officexp/officexp-kb911701-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/9/b/c/9bcc5ab3-2302-40d3-9e52-c63c9ceb4fcd/officexp-KB911701-FullFile-KOR.exe|updates/officexp/officexp-kb911701-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/5/c/1/5c113adc-e1c9-46f3-a35a-64b927044410/officexp-KB911701-FullFile-NLD.exe|updates/officexp/officexp-kb911701-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/f/1/9/f1997d9d-3b21-4cb2-a623-4aac4267fcfc/officexp-KB911701-FullFile-NOR.exe|updates/officexp/officexp-kb911701-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/4/b/2/4b265045-83f8-44fe-a812-10cbbbfcf96a/officexp-KB911701-FullFile-PLK.exe|updates/officexp/officexp-kb911701-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/4/5/6/456756ac-1d47-48a5-9f49-d968e7307292/officexp-KB911701-FullFile-PTB.exe|updates/officexp/officexp-kb911701-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/d/6/8/d687cc6f-eee5-47d2-b8b0-fb6fd67802e6/officexp-KB911701-FullFile-PTG.exe|updates/officexp/officexp-kb911701-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/3/5/e/35ebc170-4736-4a26-ae3b-1e3e8f006caa/officexp-KB911701-FullFile-RUS.exe|updates/officexp/officexp-kb911701-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/8/f/9/8f914b8f-51a3-40c6-bde9-a3e3d837f455/officexp-KB911701-FullFile-SVE.exe|updates/officexp/officexp-kb911701-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/d/f/2/df276b87-9e46-4001-a52d-d8d9f7c3af1c/officexp-KB911701-FullFile-TRK.exe|updates/officexp/officexp-kb911701-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB911701-FullFile-%WINLANG%.exe /Q"

:: Security Update for Office XP (KB920816)
:: Description of the security update for Office XP, for Project 2002, and for Visio 2002: February 13, 2007
:: <http://support.microsoft.com/kb/920816>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=85C5162C-FC35-40B4-AD04-ADD247950423>
:: URL|ARA|http://download.microsoft.com/download/d/f/4/df4a7b5e-e80c-4892-8209-38e5152c9a85/officexp-KB920816-FullFile-ARA.exe|updates/officexp/officexp-kb920816-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/a/d/7/ad76083b-6d5e-4b3c-b0a4-5b2c9b3b905e/officexp-KB920816-FullFile-CSY.exe|updates/officexp/officexp-kb920816-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/0/0/b/00b39cf2-ab01-4223-9972-c7287d50c304/officexp-KB920816-FullFile-DAN.exe|updates/officexp/officexp-kb920816-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/e/5/0/e5096fe4-c0a2-471c-93d2-27a873a87a42/officexp-KB920816-FullFile-DEU.exe|updates/officexp/officexp-kb920816-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/b/3/a/b3a00458-bde2-4951-a293-d6257871e389/officexp-KB920816-FullFile-ELL.exe|updates/officexp/officexp-kb920816-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/7/b/6/7b6523ce-6b0c-423c-b047-b5be96e1bf39/officexp-KB920816-FullFile-ENU.exe|updates/officexp/officexp-kb920816-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/9/f/a/9fa62750-f0b8-4d13-a818-1dde39b978d8/officexp-KB920816-FullFile-ESN.exe|updates/officexp/officexp-kb920816-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/e/8/2/e821608f-eb9b-4e22-a1d6-63aae5a41cdc/officexp-KB920816-FullFile-FIN.exe|updates/officexp/officexp-kb920816-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/8/a/e/8aecf0a5-facd-4d7e-a248-865e0fd71925/officexp-KB920816-FullFile-FRA.exe|updates/officexp/officexp-kb920816-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/c/3/9/c3902773-7f32-4575-a11d-e7d0bf2358fc/officexp-KB920816-FullFile-HEB.exe|updates/officexp/officexp-kb920816-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/4/7/0/470ebfbd-1f67-4f52-a591-5eb308085bf1/officexp-KB920816-FullFile-HUN.exe|updates/officexp/officexp-kb920816-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/d/0/9/d096f978-2547-4cb7-9a48-5011dd5857aa/officexp-KB920816-FullFile-ITA.exe|updates/officexp/officexp-kb920816-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/5/9/1/5916a60c-6b97-4917-aabe-67acacb1990d/officexp-KB920816-FullFile-JPN.exe|updates/officexp/officexp-kb920816-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/1/5/9/15992fe5-5299-477f-894c-5fc42f78b8cf/officexp-KB920816-FullFile-KOR.exe|updates/officexp/officexp-kb920816-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/9/5/f/95f08856-6f24-4fb2-af56-19cf2648b08c/officexp-KB920816-FullFile-NLD.exe|updates/officexp/officexp-kb920816-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/e/7/9/e7950bac-ab63-4713-a968-8c0d1f20b592/officexp-KB920816-FullFile-NOR.exe|updates/officexp/officexp-kb920816-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/8/e/6/8e66b25f-cfa4-4651-812b-86267d9bcea0/officexp-KB920816-FullFile-PLK.exe|updates/officexp/officexp-kb920816-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/0/f/f/0ff6d507-1f07-4bc9-b93d-e1b98094536e/officexp-KB920816-FullFile-PTB.exe|updates/officexp/officexp-kb920816-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/9/b/2/9b29fc7c-f35c-4c1f-84f2-67ff089cfe9d/officexp-KB920816-FullFile-PTG.exe|updates/officexp/officexp-kb920816-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/3/9/a/39a57771-ca1f-4365-bd38-672829e4062e/officexp-KB920816-FullFile-RUS.exe|updates/officexp/officexp-kb920816-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/4/0/3/403154aa-42b8-41a6-a89a-12265746ab69/officexp-KB920816-FullFile-SVE.exe|updates/officexp/officexp-kb920816-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/5/2/b/52bab9e2-e613-472e-a404-7d01331ea461/officexp-KB920816-FullFile-TRK.exe|updates/officexp/officexp-kb920816-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB920816-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office XP (KB944423)
:: MS08-013: Description of the security update for Office XP: February 12, 2008
:: <http://support.microsoft.com/kb/944423>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=3E147B1A-F3BE-465F-8587-7F3A33D6A6E5>
:: URL|ARA|http://download.microsoft.com/download/e/6/f/e6fa38c1-b9f9-4e25-b501-06aa473120e0/officexp-KB944423-FullFile-ARA.exe|updates/officexp/officexp-kb944423-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/6/a/c/6ac543a6-35d1-4942-b279-5b1214766d21/officexp-KB944423-FullFile-CSY.exe|updates/officexp/officexp-kb944423-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/8/b/8/8b8cd064-e3ba-4186-9071-42eb07612e35/officexp-KB944423-FullFile-DAN.exe|updates/officexp/officexp-kb944423-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/c/a/2/ca240915-5398-4772-85be-0ddf3eb776ed/officexp-KB944423-FullFile-DEU.exe|updates/officexp/officexp-kb944423-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/f/e/d/feddc76a-e35c-421f-b612-0699704cf8e4/officexp-KB944423-FullFile-ELL.exe|updates/officexp/officexp-kb944423-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/8/5/9/8590454c-0468-4504-a676-cf4864ad641a/officexp-KB944423-FullFile-ENU.exe|updates/officexp/officexp-kb944423-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/6/7/b/67be1399-c11a-4b10-a3da-62ccdba12732/officexp-KB944423-FullFile-ESN.exe|updates/officexp/officexp-kb944423-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/1/7/5/1753ddf7-04d5-4e21-9ce2-ab174ce2b74b/officexp-KB944423-FullFile-FIN.exe|updates/officexp/officexp-kb944423-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/3/5/c/35ca01a6-7998-43af-ab63-8877c6d064c8/officexp-KB944423-FullFile-FRA.exe|updates/officexp/officexp-kb944423-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/6/b/b/6bbeefe3-88b2-4f5d-9832-d2465d1bc972/officexp-KB944423-FullFile-HEB.exe|updates/officexp/officexp-kb944423-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/5/3/6/5360f12a-572d-4e95-8b0a-eb7e7bd3e141/officexp-KB944423-FullFile-HUN.exe|updates/officexp/officexp-kb944423-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/5/9/e/59e5f6fd-8437-4e0d-9339-bb9c72de8a82/officexp-KB944423-FullFile-ITA.exe|updates/officexp/officexp-kb944423-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/4/b/c/4bc80d89-0548-40d8-a8ef-8528cf341664/officexp-KB944423-FullFile-JPN.exe|updates/officexp/officexp-kb944423-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/6/7/4/674192cd-43ad-411a-b937-fc040b6b5f6b/officexp-KB944423-FullFile-KOR.exe|updates/officexp/officexp-kb944423-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/e/4/e/e4e70e15-5e84-4dd0-913b-5560b1ae6275/officexp-KB944423-FullFile-NLD.exe|updates/officexp/officexp-kb944423-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/a/2/8/a28d2432-bd5a-47ab-ac25-c36792e30732/officexp-KB944423-FullFile-NOR.exe|updates/officexp/officexp-kb944423-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/f/9/1/f91a88e4-bbb3-4c73-9757-4c2f9f4f128f/officexp-KB944423-FullFile-PLK.exe|updates/officexp/officexp-kb944423-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/e/f/9/ef9ca5a3-0244-4ae6-b7d2-c1101f5b1edd/officexp-KB944423-FullFile-PTB.exe|updates/officexp/officexp-kb944423-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/4/c/1/4c18a88f-0fce-42d3-be6b-0e7016c3778b/officexp-KB944423-FullFile-PTG.exe|updates/officexp/officexp-kb944423-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/b/5/6/b56b9f5b-8c08-47c6-8aed-edc10ee98325/officexp-KB944423-FullFile-RUS.exe|updates/officexp/officexp-kb944423-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/7/1/9/719a6674-4a06-4d53-9f2d-4f7e4b1e1936/officexp-KB944423-FullFile-SVE.exe|updates/officexp/officexp-kb944423-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/d/8/1/d8122c61-ace9-4157-b998-508346a38a21/officexp-KB944423-FullFile-TRK.exe|updates/officexp/officexp-kb944423-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB944423-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Publisher 2002 (KB950129)
:: MS08-027: Description of the security bulletin for Publisher 2002: May 13, 2008
:: <http://support.microsoft.com/kb/950129>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=DF623784-6E26-42C0-9E21-E7960B849E1E>
:: URL|ARA|http://download.microsoft.com/download/b/3/6/b3616447-f4f2-4564-bbbb-0bf1f4a26f76/officexp-KB950129-FullFile-ARA.exe|updates/officexp/officexp-kb950129-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/0/c/9/0c9b8f20-3945-49b5-85dd-f485368d6fb2/officexp-KB950129-FullFile-CSY.exe|updates/officexp/officexp-kb950129-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/f/4/a/f4abcf0d-05c2-4368-a0ce-7579de6e5ec7/officexp-KB950129-FullFile-DAN.exe|updates/officexp/officexp-kb950129-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/3/e/7/3e73a3eb-bae1-4803-bf36-b3007f817b52/officexp-KB950129-FullFile-DEU.exe|updates/officexp/officexp-kb950129-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/b/c/c/bccb453c-0e8f-40f8-9ead-652f5344015d/officexp-KB950129-FullFile-ELL.exe|updates/officexp/officexp-kb950129-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/4/1/0/41039d20-8720-496f-99f9-10fe67f91510/officexp-KB950129-FullFile-ENU.exe|updates/officexp/officexp-kb950129-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/b/c/9/bc91af71-76d4-4546-acd5-a48deaec4d14/officexp-KB950129-FullFile-ESN.exe|updates/officexp/officexp-kb950129-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/2/0/3/203099c4-9156-497a-906c-9e447b99fd78/officexp-KB950129-FullFile-FIN.exe|updates/officexp/officexp-kb950129-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/f/8/a/f8a7bb5c-b75a-450e-8a63-e314172bd57c/officexp-KB950129-FullFile-FRA.exe|updates/officexp/officexp-kb950129-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/2/a/c/2ac8a421-b17c-4b43-b081-c6898e635a48/officexp-KB950129-FullFile-HEB.exe|updates/officexp/officexp-kb950129-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/9/8/8/98833de4-2fa2-4bd3-a74f-85c4bcc882f3/officexp-KB950129-FullFile-HUN.exe|updates/officexp/officexp-kb950129-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/6/c/3/6c32ef98-5e50-4f67-b854-87cb0b71dfc3/officexp-KB950129-FullFile-ITA.exe|updates/officexp/officexp-kb950129-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/7/c/4/7c462ee8-44cc-4d79-ba9e-ce150df9528c/officexp-KB950129-FullFile-JPN.exe|updates/officexp/officexp-kb950129-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/9/9/d/99d4e036-a467-42d9-af35-445f203f1345/officexp-KB950129-FullFile-KOR.exe|updates/officexp/officexp-kb950129-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/9/c/8/9c81c7ce-03fc-4f0d-a729-39df45826975/officexp-KB950129-FullFile-NLD.exe|updates/officexp/officexp-kb950129-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/2/9/6/296137b4-9db1-43e6-bc4b-107006473d89/officexp-KB950129-FullFile-NOR.exe|updates/officexp/officexp-kb950129-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/f/5/e/f5eb3b73-ccfa-402f-be29-ad1f363316ee/officexp-KB950129-FullFile-PLK.exe|updates/officexp/officexp-kb950129-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/2/0/8/2086c400-ced4-4197-a57a-c982f4571d53/officexp-KB950129-FullFile-PTB.exe|updates/officexp/officexp-kb950129-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/c/2/4/c242eaf9-182b-4462-b352-ab53e15fd427/officexp-KB950129-FullFile-PTG.exe|updates/officexp/officexp-kb950129-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/d/8/2/d82328ae-b07e-4ee8-a989-6a4c865aa7b1/officexp-KB950129-FullFile-RUS.exe|updates/officexp/officexp-kb950129-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/1/8/c/18c7e324-811d-4ccd-8371-20bb90777a7d/officexp-KB950129-FullFile-SVE.exe|updates/officexp/officexp-kb950129-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/d/2/8/d28ec71e-a3a6-4a20-be3e-a6a104cd31d8/officexp-KB950129-FullFile-TRK.exe|updates/officexp/officexp-kb950129-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB950129-FullFile-%WINLANG%.exe /Q"

:: Security Update for Access Snapshot Viewer 2002 (KB955440)
:: MS08-041: Description of the security update for Access Snapshot Viewer 2002: August 12, 2008
:: <http://support.microsoft.com/kb/955440>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=34B655F8-1922-4246-94CA-ED381C3E3B13>
:: URL|ARA|http://download.microsoft.com/download/5/0/2/5025ccae-714b-42b5-88b8-3af30048ad14/officexp-KB955440-FullFile-ARA.exe|updates/officexp/officexp-kb955440-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/d/6/1/d61dfa3c-6591-4528-b105-1415a3046e7f/officexp-KB955440-FullFile-CSY.exe|updates/officexp/officexp-kb955440-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/7/6/a/76ae17dc-dbae-4434-b36f-4af3e4c88ec8/officexp-KB955440-FullFile-DAN.exe|updates/officexp/officexp-kb955440-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/a/7/4/a7494a7f-d8a6-4c4f-8736-050f4b9cc98d/officexp-KB955440-FullFile-DEU.exe|updates/officexp/officexp-kb955440-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/1/5/c/15c00ea5-f5ae-41ce-b88e-75e9fced3935/officexp-KB955440-FullFile-ELL.exe|updates/officexp/officexp-kb955440-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/b/c/9/bc990adb-36ab-45d6-a508-1f2371fe7251/officexp-KB955440-FullFile-ENU.exe|updates/officexp/officexp-kb955440-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/2/f/7/2f742a84-3c94-4e8d-8c4d-364ad297a612/officexp-KB955440-FullFile-ESN.exe|updates/officexp/officexp-kb955440-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/a/1/b/a1b0f53e-852f-4ed9-8bdd-774972dc3bf7/officexp-KB955440-FullFile-FIN.exe|updates/officexp/officexp-kb955440-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/7/f/a/7fa9f606-c629-499f-96cc-5083d6eff4f0/officexp-KB955440-FullFile-FRA.exe|updates/officexp/officexp-kb955440-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/7/a/7/7a7277ff-19d2-40f8-adb8-25ae8de68272/officexp-KB955440-FullFile-HEB.exe|updates/officexp/officexp-kb955440-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/f/2/7/f27f59f1-f7a4-4535-ad89-9146365acd92/officexp-KB955440-FullFile-HUN.exe|updates/officexp/officexp-kb955440-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/6/3/f/63f0565c-6e2f-4ee3-8898-d58384f7aa31/officexp-KB955440-FullFile-ITA.exe|updates/officexp/officexp-kb955440-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/c/5/0/c50c2fd8-394f-467f-8923-0e8b484e465a/officexp-KB955440-FullFile-JPN.exe|updates/officexp/officexp-kb955440-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/3/1/a/31aa8985-f08e-4b79-b439-e5178b098baa/officexp-KB955440-FullFile-KOR.exe|updates/officexp/officexp-kb955440-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/b/4/9/b49c3035-cd9c-444f-a5a1-2759eb1e7bda/officexp-KB955440-FullFile-NLD.exe|updates/officexp/officexp-kb955440-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/e/d/5/ed58a343-6c55-48e2-bb3a-284853138ac6/officexp-KB955440-FullFile-NOR.exe|updates/officexp/officexp-kb955440-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/f/b/7/fb7123f1-3d0e-4933-bf1b-97f1ffe4c88c/officexp-KB955440-FullFile-PLK.exe|updates/officexp/officexp-kb955440-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/0/e/b/0eb420d5-3afc-48dd-9b6f-08fcf68a0bd4/officexp-KB955440-FullFile-PTB.exe|updates/officexp/officexp-kb955440-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/9/b/e/9beb6ae2-d728-4a15-94d7-b678d2fc5f5c/officexp-KB955440-FullFile-PTG.exe|updates/officexp/officexp-kb955440-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/1/a/c/1acf8e21-89fd-45b3-8064-3032d6fa38e2/officexp-KB955440-FullFile-RUS.exe|updates/officexp/officexp-kb955440-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/1/9/a/19ab05d3-98ac-4b22-91c7-73338ca38e21/officexp-KB955440-FullFile-SVE.exe|updates/officexp/officexp-kb955440-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/c/8/e/c8ec042b-a33b-4998-9f5e-287d3e9467d1/officexp-KB955440-FullFile-TRK.exe|updates/officexp/officexp-kb955440-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB955440-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office XP (KB921596)
:: MS08-044: Description of the security update for the Office XP graphic filters: August 12, 2008
:: <http://support.microsoft.com/kb/921596>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=BF566CE6-23DA-45E5-9C2B-C47331D30E79>
:: URL|ARA|http://download.microsoft.com/download/0/8/b/08b5b399-0dea-4a49-a5e1-b9c29a520ad4/officexp-KB921596-FullFile-ARA.exe|updates/officexp/officexp-kb921596-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/e/5/1/e51530d0-6376-4fca-acb0-3ae1715a3b2f/officexp-KB921596-FullFile-CSY.exe|updates/officexp/officexp-kb921596-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/c/0/0/c0048000-1e03-4757-90fb-545d21341004/officexp-KB921596-FullFile-DAN.exe|updates/officexp/officexp-kb921596-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/0/7/8/078d309e-b5e8-467e-a2fe-72b48576e0b0/officexp-KB921596-FullFile-DEU.exe|updates/officexp/officexp-kb921596-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/6/5/1/651f0964-8779-469c-9f91-f79c83708cee/officexp-KB921596-FullFile-ELL.exe|updates/officexp/officexp-kb921596-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/d/2/8/d28c1337-e3c1-4a77-9537-a68683e7aabe/officexp-KB921596-FullFile-ENU.exe|updates/officexp/officexp-kb921596-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/d/7/7/d77f2931-d742-40bb-af8d-b6a71e61f37f/officexp-KB921596-FullFile-ESN.exe|updates/officexp/officexp-kb921596-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/1/a/4/1a4c9ee5-d2ae-40bd-9f30-73d1300b7bae/officexp-KB921596-FullFile-FIN.exe|updates/officexp/officexp-kb921596-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/1/7/f/17f5e4a3-db89-4480-94eb-dec1da8a958b/officexp-KB921596-FullFile-FRA.exe|updates/officexp/officexp-kb921596-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/3/1/d/31d5938c-c26a-4bcc-bccf-3909d2a7258a/officexp-KB921596-FullFile-HEB.exe|updates/officexp/officexp-kb921596-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/f/8/6/f8627ad0-542b-4d76-9608-830f644dd750/officexp-KB921596-FullFile-HUN.exe|updates/officexp/officexp-kb921596-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/2/7/3/273ea2cb-6da7-400c-b9d2-c6df06898cd5/officexp-KB921596-FullFile-ITA.exe|updates/officexp/officexp-kb921596-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/1/c/2/1c29a23d-cbff-46d5-9d55-8ff540f0c473/officexp-KB921596-FullFile-JPN.exe|updates/officexp/officexp-kb921596-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/2/0/f/20f08405-a9c5-43f2-9df8-1ed0a199b0a2/officexp-KB921596-FullFile-KOR.exe|updates/officexp/officexp-kb921596-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/a/b/b/abb46486-17b2-4acd-b1c2-bc16628a1a4d/officexp-KB921596-FullFile-NLD.exe|updates/officexp/officexp-kb921596-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/2/5/a/25a42b82-eb4a-4179-bb39-204caee4430b/officexp-KB921596-FullFile-NOR.exe|updates/officexp/officexp-kb921596-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/f/0/5/f051df89-09f9-43f9-a747-55444bd31427/officexp-KB921596-FullFile-PLK.exe|updates/officexp/officexp-kb921596-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/9/7/2/972c9e82-7360-478d-8310-a1c209960f4a/officexp-KB921596-FullFile-PTB.exe|updates/officexp/officexp-kb921596-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/b/3/4/b341e90b-1fbc-42b1-a7c4-241cb48c765e/officexp-KB921596-FullFile-PTG.exe|updates/officexp/officexp-kb921596-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/e/f/8/ef8983d7-f50e-451c-8b7b-79083b8d6085/officexp-KB921596-FullFile-RUS.exe|updates/officexp/officexp-kb921596-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/4/9/7/4971e4d1-6f47-40b7-adfa-2662418fc984/officexp-KB921596-FullFile-SVE.exe|updates/officexp/officexp-kb921596-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/1/3/e/13ef39bc-28e3-460d-9303-ef6941a31359/officexp-KB921596-FullFile-TRK.exe|updates/officexp/officexp-kb921596-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB921596-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft PowerPoint 2002 (KB948995)
:: MS08-051: Description of the security update for PowerPoint 2002: August 12, 2008
:: <http://support.microsoft.com/kb/948995>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=F8921074-7985-4D42-AC2B-D2F3B1D466BA>
:: URL|ARA|http://download.microsoft.com/download/7/e/9/7e9bc634-bfc7-48f7-8781-b59b3073945e/officexp-KB948995-FullFile-ARA.exe|updates/officexp/officexp-kb948995-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/7/4/f/74f9e39f-3ee4-4fab-927d-929833ae6979/officexp-KB948995-FullFile-CSY.exe|updates/officexp/officexp-kb948995-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/c/a/e/cae7381e-e3a7-497e-9b82-a77dea02bc4c/officexp-KB948995-FullFile-DAN.exe|updates/officexp/officexp-kb948995-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/8/9/b/89bdfe73-d1c9-4ae1-bc0f-9838ba7f22d1/officexp-KB948995-FullFile-DEU.exe|updates/officexp/officexp-kb948995-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/0/2/e/02e4a38b-80b5-4adc-8629-b512ac6d7393/officexp-KB948995-FullFile-ELL.exe|updates/officexp/officexp-kb948995-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/d/e/0/de0d0235-5bd1-4390-8f93-211afe2d4a7f/officexp-KB948995-FullFile-ENU.exe|updates/officexp/officexp-kb948995-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/7/8/4/7847eb0b-889b-4162-85ac-84fab5a4605e/officexp-KB948995-FullFile-ESN.exe|updates/officexp/officexp-kb948995-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/f/c/6/fc64e861-3f64-41b5-909b-f584c24309a5/officexp-KB948995-FullFile-FIN.exe|updates/officexp/officexp-kb948995-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/e/2/b/e2bb2115-2141-4558-9f6b-aafc079b548f/officexp-KB948995-FullFile-FRA.exe|updates/officexp/officexp-kb948995-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/3/6/9/369a5b2a-1568-46c7-89c9-13e3e5dfae02/officexp-KB948995-FullFile-HEB.exe|updates/officexp/officexp-kb948995-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/2/6/f/26f85e5d-a888-4d1e-9c79-d6e9e6456c1a/officexp-KB948995-FullFile-HUN.exe|updates/officexp/officexp-kb948995-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/9/a/2/9a2b21d1-6ed7-417b-9cd8-de95a72e36af/officexp-KB948995-FullFile-ITA.exe|updates/officexp/officexp-kb948995-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/a/2/0/a205ec9e-0e40-405f-80be-1cee0e6c3847/officexp-KB948995-FullFile-JPN.exe|updates/officexp/officexp-kb948995-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/9/5/4/954276d6-eec2-498b-aee4-9fb541cb7077/officexp-KB948995-FullFile-KOR.exe|updates/officexp/officexp-kb948995-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/a/d/2/ad2c5353-4746-4ccb-ad1a-238882b8310a/officexp-KB948995-FullFile-NLD.exe|updates/officexp/officexp-kb948995-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/5/3/2/532f741c-6a8e-47f9-9daf-c6736001e098/officexp-KB948995-FullFile-NOR.exe|updates/officexp/officexp-kb948995-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/3/6/1/36166fd0-3424-4698-93c1-f678f92e848c/officexp-KB948995-FullFile-PLK.exe|updates/officexp/officexp-kb948995-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/0/e/0/0e0da286-4eca-4fef-9516-52e86f6a61b6/officexp-KB948995-FullFile-PTB.exe|updates/officexp/officexp-kb948995-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/f/1/2/f12c9715-61dd-4496-a916-fa1db35b6815/officexp-KB948995-FullFile-PTG.exe|updates/officexp/officexp-kb948995-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/0/7/e/07e85a20-474d-4fde-be69-d1c5af04661b/officexp-KB948995-FullFile-RUS.exe|updates/officexp/officexp-kb948995-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/2/3/6/236c3e4e-65b5-48aa-8f8d-f9a0d050c6a3/officexp-KB948995-FullFile-SVE.exe|updates/officexp/officexp-kb948995-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/3/d/f/3dff532a-d0ea-45b3-92fc-8ff5946754d9/officexp-KB948995-FullFile-TRK.exe|updates/officexp/officexp-kb948995-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\officexp\officexp-KB948995-FullFile-%WINLANG%.exe /Q"

:: Office XP Service Pack 3 (SP3)
:: <http://support.microsoft.com/?kbid=832671>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=85af7bfd-6f69-4289-8bd1-eb966bcdfb5e>
:: URL|ARA|http://download.microsoft.com/download/0/d/e/0debd2ea-a3c6-4d63-94dd-84d81c6260c7/OfficeXpSp3-kb832671-fullfile-ara.exe|updates/officexp/officexpsp3-kb832671-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/7/5/0/750640ad-59cd-4763-8480-5c8d95b85511/OfficeXpSp3-kb832671-fullfile-csy.exe|updates/officexp/officexpsp3-kb832671-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/3/0/4/304ef26c-5bcf-4bb4-a491-0f19f4ecaa84/OfficeXpSp3-kb832671-fullfile-dan.exe|updates/officexp/officexpsp3-kb832671-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/3/d/b/3db9e4bc-bd49-45bf-93d2-dcffb0c6a3b4/OfficeXpSp3-kb832671-fullfile-deu.exe|updates/officexp/officexpsp3-kb832671-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/e/7/c/e7cc5717-b29e-479d-b407-edc64303fdf2/OfficeXpSp3-kb832671-fullfile-ell.exe|updates/officexp/officexpsp3-kb832671-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/9/1/f/91ffc6b2-0745-470b-8dd3-1285b85db12b/OfficeXpSp3-kb832671-fullfile-enu.exe|updates/officexp/officexpsp3-kb832671-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/f/b/e/fbe59942-ed69-4d58-ac98-d93fe44f191a/OfficeXpSp3-kb832671-fullfile-esn.exe|updates/officexp/officexpsp3-kb832671-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/c/e/7/ce7740f4-63c7-4406-a94d-3f26d9a8b133/OfficeXpSp3-kb832671-fullfile-fin.exe|updates/officexp/officexpsp3-kb832671-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/4/2/0/4200177e-90c4-473e-89e3-afc23720bc97/OfficeXpSp3-kb832671-fullfile-fra.exe|updates/officexp/officexpsp3-kb832671-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/3/c/7/3c7bc266-5ca6-45ed-9001-58e0d2869b98/OfficeXpSp3-kb832671-fullfile-heb.exe|updates/officexp/officexpsp3-kb832671-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/2/1/7/2172f67a-ff41-4343-af8d-9f97a2271d82/OfficeXpSp3-kb832671-fullfile-hun.exe|updates/officexp/officexpsp3-kb832671-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/a/a/4/aa4adf57-df3a-4fcb-be66-4da178b2f8df/OfficeXpSp3-kb832671-fullfile-ita.exe|updates/officexp/officexpsp3-kb832671-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/2/0/2/202b86d7-5b15-4420-8b5c-5f80ba92d453/OfficeXpSp3-kb832671-fullfile-jpn.exe|updates/officexp/officexpsp3-kb832671-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/8/a/2/8a257d8a-2da0-483b-a1fd-8ffe867bb2b1/OfficeXpSp3-kb832671-fullfile-kor.exe|updates/officexp/officexpsp3-kb832671-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/5/1/0/5105aa00-a754-4dfd-819f-3cbcb753dacc/OfficeXpSp3-kb832671-fullfile-nld.exe|updates/officexp/officexpsp3-kb832671-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/d/4/3/d436b209-3c2c-431d-bbf5-1ec3f483ab08/OfficeXpSp3-kb832671-fullfile-nor.exe|updates/officexp/officexpsp3-kb832671-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/c/c/d/ccd9f9e1-0383-46d4-8479-8abe6db49db6/OfficeXpSp3-kb832671-fullfile-plk.exe|updates/officexp/officexpsp3-kb832671-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/5/9/e/59e4114d-1d09-4a16-b776-8117304840d9/OfficeXpSp3-kb832671-fullfile-ptb.exe|updates/officexp/officexpsp3-kb832671-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/8/9/2/89262b7b-81e6-4c73-a0c8-699413858f29/OfficeXpSp3-kb832671-fullfile-ptg.exe|updates/officexp/officexpsp3-kb832671-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/d/9/e/d9edc340-90fc-4641-b70a-92de18717d2a/OfficeXpSp3-kb832671-fullfile-rus.exe|updates/officexp/officexpsp3-kb832671-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/2/1/7/217be725-a7b9-40cc-8a16-5a546a0018f8/OfficeXpSp3-kb832671-fullfile-sve.exe|updates/officexp/officexpsp3-kb832671-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/8/0/4/804be6c3-1403-4479-a050-b7c0a8daae3b/OfficeXpSp3-kb832671-fullfile-trk.exe|updates/officexp/officexpsp3-kb832671-fullfile-trk.exe
todo.pl "%Z%\updates\officexp\officexpsp3-kb832671-fullfile-%WINLANG%.exe /r:n /q /c:\"msiexec /qb /l* c:\netinst\logs\oxpsp3.txt /p MAINSP3ff.msp REBOOT=ReallySuppress\""

:: Edit install/site/keys.bat and provide your license key
call %Z%\site\keys.bat
if %officexp%==xxxxxxx goto nokey

todo.pl ".reboot-on 194 %Z%\packages\officexp\setuppls.exe /qb /l* %SystemDrive%\netinst\logs\officexp.txt ADDLOCAL=ALL NOUSERNAME=1 PIDKEY=%officexp%"

if errorlevel 1 exit 1
exit 0

:nokey
@echo *** Unable to get Office license key
@echo ***  (did you forget to edit %Z%\site\keys.bat?)
exit 2

:: OPTIONAL: Install Office 2003 and its updates
@Echo off
:: Reminder: Commands will be executed in reverse order.

:: Uncomment it if you want the compatibility pack installed
todo.pl docxconverter.bat

:: Security Update for Publisher 2003 (KB2878299)
:: <https://www.microsoft.com/en-us/download/details.aspx?id=42403>
:: URL|CSY|http://download.microsoft.com/download/E/F/9/EF962C0D-5D10-4FC9-B591-45DF08D4EF58/office2003-KB2878299-FullFile-CSY.exe|updates/office2003/office2003-kb2878299-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/9/E/5/9E515036-FBBA-4BCC-A41B-85131FA4F4CE/office2003-KB2878299-FullFile-DAN.exe|updates/office2003/office2003-kb2878299-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/E/D/C/EDC35ED9-8E54-4CA5-968D-465AC4F7FEEA/office2003-KB2878299-FullFile-DEU.exe|updates/office2003/office2003-kb2878299-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/A/4/D/A4D37122-075B-4F47-9376-AA011A5D6021/office2003-KB2878299-FullFile-ELL.exe|updates/office2003/office2003-kb2878299-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/1/6/9/16964054-A7F0-4DFD-BC62-219560375E01/office2003-KB2878299-FullFile-ENU.exe|updates/office2003/office2003-kb2878299-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/1/D/4/1D4B9D72-A427-442C-B621-DA787595546F/office2003-KB2878299-FullFile-ESN.exe|updates/office2003/office2003-kb2878299-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/3/C/6/3C64C18E-5589-4FED-A4CE-2F83BBFC18D8/office2003-KB2878299-FullFile-FIN.exe|updates/office2003/office2003-kb2878299-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/F/D/F/FDF22AF6-180D-479A-82CD-33CD45951065/office2003-KB2878299-FullFile-FRA.exe|updates/office2003/office2003-kb2878299-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/1/1/3/11315EA1-25B4-45AC-A871-6DA1039DFD37/office2003-KB2878299-FullFile-HUN.exe|updates/office2003/office2003-kb2878299-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/5/A/6/5A6CC54B-BE4B-4845-A3BA-C99AAD443D10/office2003-KB2878299-FullFile-ITA.exe|updates/office2003/office2003-kb2878299-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/1/3/E/13E34336-7D84-43EF-97EA-07C6ABD879FD/office2003-KB2878299-FullFile-JPN.exe|updates/office2003/office2003-kb2878299-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/8/4/F/84F5D459-6136-4C0E-A555-4E7846096F61/office2003-KB2878299-FullFile-KOR.exe|updates/office2003/office2003-kb2878299-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/A/1/F/A1FD8B8D-6E5E-445F-95E8-BFE9733FB48A/office2003-KB2878299-FullFile-NLD.exe|updates/office2003/office2003-kb2878299-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/7/D/6/7D61F1B3-DAD3-43ED-8E43-C0DE5E7D3D70/office2003-KB2878299-FullFile-PLK.exe|updates/office2003/office2003-kb2878299-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/0/8/B/08B5D43A-5B7D-4219-8082-A3ED8805708C/office2003-KB2878299-FullFile-PTB.exe|updates/office2003/office2003-kb2878299-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/8/A/9/8A9EDAB3-FE3B-4A23-9232-9CE78D23BBD3/office2003-KB2878299-FullFile-PTG.exe|updates/office2003/office2003-kb2878299-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/6/9/F/69F8905D-136A-4075-92AE-030514B943E3/office2003-KB2878299-FullFile-RUS.exe|updates/office2003/office2003-kb2878299-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/4/9/E/49E5AA5C-8E15-4F05-9B87-812A4FA363D3/office2003-KB2878299-FullFile-SVE.exe|updates/office2003/office2003-kb2878299-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/6/B/8/6B8D5A77-0221-4038-9232-A651F8C4B85B/office2003-KB2878299-FullFile-TRK.exe|updates/office2003/office2003-kb2878299-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB2878299-FullFile-%WINLANG%.exe /Q"

:: Security Update for Office 2003 (KB2850047)
:: <http://www.microsoft.com/es-es/download/details.aspx?id=41426>
:: URL|CSY|http://download.microsoft.com/download/E/7/B/E7B22B53-16C5-4662-AC0B-72333D19F215/office2003-KB2850047-FullFile-CSY.exe|updates/office2003/office2003-kb2850047-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/C/C/F/CCF98A67-0256-42C1-8157-ED54E935C73A/office2003-KB2850047-FullFile-DAN.exe|updates/office2003/office2003-kb2850047-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/B/F/9/BF98BC3E-8F04-4EB4-B0BD-00CF76C3CD77/office2003-KB2850047-FullFile-DEU.exe|updates/office2003/office2003-kb2850047-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/8/A/E/8AE694F7-F80F-4B84-986F-274DB8C52715/office2003-KB2850047-FullFile-ELL.exe|updates/office2003/office2003-kb2850047-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/5/7/8/57834265-630B-42B1-9B5F-E50A0202EBF1/office2003-KB2850047-FullFile-ENU.exe|updates/office2003/office2003-kb2850047-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/1/9/F/19F37892-F2E2-4397-B9C4-D1EE488F4F08/office2003-KB2850047-FullFile-ESN.exe|updates/office2003/office2003-kb2850047-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/D/1/1/D11D1995-D7F4-4E64-9557-F1538374B995/office2003-KB2850047-FullFile-FIN.exe|updates/office2003/office2003-kb2850047-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/3/7/9/3796BBE6-E8C1-49B0-9461-9CCAD1479A79/office2003-KB2850047-FullFile-FRA.exe|updates/office2003/office2003-kb2850047-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/2/E/E/2EE1EE8A-51B8-4F73-A398-BC7709BF90D0/office2003-KB2850047-FullFile-HUN.exe|updates/office2003/office2003-kb2850047-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/E/7/F/E7F8CFB0-FFF6-4E72-8430-C47BA7C5E158/office2003-KB2850047-FullFile-ITA.exe|updates/office2003/office2003-kb2850047-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/C/3/3/C33E0467-BF5F-4684-938C-562FBD41FB1E/office2003-KB2850047-FullFile-JPN.exe|updates/office2003/office2003-kb2850047-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/4/6/0/4605B641-FEAD-4DEC-B8E4-611D34E4CC68/office2003-KB2850047-FullFile-KOR.exe|updates/office2003/office2003-kb2850047-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/C/B/5/CB5F80C5-8E35-4DC3-B60A-8AAF4BB5E910/office2003-KB2850047-FullFile-NLD.exe|updates/office2003/office2003-kb2850047-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/5/C/B/5CBAA27E-FF6F-473D-BCA6-7E6C7B643065/office2003-KB2850047-FullFile-PLK.exe|updates/office2003/office2003-kb2850047-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/C/F/3/CF39462D-BA0F-42DF-9BDD-7627708AADAD/office2003-KB2850047-FullFile-PTB.exe|updates/office2003/office2003-kb2850047-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/B/A/A/BAA232FA-9502-475B-B8DD-D873A0317E53/office2003-KB2850047-FullFile-PTG.exe|updates/office2003/office2003-kb2850047-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/F/F/5/FF58F7B0-C92A-4AB6-9CD3-F251388F33A6/office2003-KB2850047-FullFile-RUS.exe|updates/office2003/office2003-kb2850047-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/5/6/D/56DA2EEE-0ADB-439E-8E5D-79B16016C42D/office2003-KB2850047-FullFile-SVE.exe|updates/office2003/office2003-kb2850047-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/E/7/F/E7FDE9C4-F34B-4B1D-B3C5-FF5AC508D3A5/office2003-KB2850047-FullFile-TRK.exe|updates/office2003/office2003-kb2850047-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB2850047-FullFile-%WINLANG%.exe /Q"

:: Security Update for Word 2003 (KB2878303)
:: <http://www.microsoft.com/es-es/download/details.aspx?id=42408>
:: URL|CSY|http://download.microsoft.com/download/C/4/F/C4F98EBF-E514-4EF3-8639-2EB6293DAB2C/office2003-KB2878303-FullFile-CSY.exe|updates/office2003/office2003-kb2878303-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/2/2/D/22DD1386-A761-41DD-9C8B-73A6FA5186E6/office2003-KB2878303-FullFile-DAN.exe|updates/office2003/office2003-kb2878303-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/F/B/F/FBF37C8F-506E-48A0-B1A1-20B51CFA5AE3/office2003-KB2878303-FullFile-DEU.exe|updates/office2003/office2003-kb2878303-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/1/6/A/16A84E3F-DE37-4099-8A61-66CA89D6BD70/office2003-KB2878303-FullFile-ELL.exe|updates/office2003/office2003-kb2878303-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/0/8/2/082CFE97-37DD-4D71-8473-83A18ABC68D4/office2003-KB2878303-FullFile-ENU.exe|updates/office2003/office2003-kb2878303-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/9/4/6/946C2C49-85E8-4D46-A440-20B730431A39/office2003-KB2878303-FullFile-ESN.exe|updates/office2003/office2003-kb2878303-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/E/5/1/E515823E-EC3E-4406-ACA2-1EF52FF4833D/office2003-KB2878303-FullFile-FIN.exe|updates/office2003/office2003-kb2878303-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/0/4/C/04CF3970-9827-40C2-8797-093242255141/office2003-KB2878303-FullFile-FRA.exe|updates/office2003/office2003-kb2878303-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/D/A/B/DAB84543-F2B5-4762-ABCD-BC8681BB985D/office2003-KB2878303-FullFile-HUN.exe|updates/office2003/office2003-kb2878303-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/E/2/8/E28401CC-FEA9-4BAA-9D79-BB9AEE3E928A/office2003-KB2878303-FullFile-ITA.exe|updates/office2003/office2003-kb2878303-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/0/C/E/0CE07783-255F-4BBA-B8DB-6083E0F776EB/office2003-KB2878303-FullFile-JPN.exe|updates/office2003/office2003-kb2878303-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/A/A/9/AA91F741-4CFC-4ECE-9A38-586EC9D1B046/office2003-KB2878303-FullFile-KOR.exe|updates/office2003/office2003-kb2878303-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/3/1/0/31006124-4802-4896-A8B9-70392DC39DDE/office2003-KB2878303-FullFile-NLD.exe|updates/office2003/office2003-kb2878303-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/D/1/D/D1D38810-B14A-4C60-BB3B-64FF01DD14E5/office2003-KB2878303-FullFile-PLK.exe|updates/office2003/office2003-kb2878303-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/A/F/0/AF0487BA-A99E-4D84-A1F2-62E6AFF43E77/office2003-KB2878303-FullFile-PTB.exe|updates/office2003/office2003-kb2878303-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/4/6/4/4646AD80-17A5-4F66-9EFA-1E9B4BA29CD1/office2003-KB2878303-FullFile-PTG.exe|updates/office2003/office2003-kb2878303-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/4/6/6/466DDEEC-A5B3-4C79-8936-B88467909EFC/office2003-KB2878303-FullFile-RUS.exe|updates/office2003/office2003-kb2878303-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/6/F/6/6F6B7CC5-E944-44DB-9941-CB7BB179DDD4/office2003-KB2878303-FullFile-SVE.exe|updates/office2003/office2003-kb2878303-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/4/6/0/46008E40-54DC-420E-A453-4987D5F6C745/office2003-KB2878303-FullFile-TRK.exe|updates/office2003/office2003-kb2878303-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB2878303-FullFile-%WINLANG%.exe /Q"

:: Security Update for Office 2003 (KB2825621)
:: <https://www.microsoft.com/en-us/download/details.aspx?id=40180>
:: URL|CSY|http://download.microsoft.com/download/4/8/8/48899344-E3B0-4641-A1AD-AB5EBE702023/office2003-KB2825621-FullFile-CSY.exe|updates/office2003/office2003-kb2825621-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/7/8/5/7855449E-3606-4D0C-846B-24702A1C3271/office2003-KB2825621-FullFile-DAN.exe|updates/office2003/office2003-kb2825621-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/D/0/5/D0532471-64CB-4672-84D3-98D95E4CFA99/office2003-KB2825621-FullFile-DEU.exe|updates/office2003/office2003-kb2825621-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/9/7/A/97A53856-1CEA-42DD-86DE-F11A2F4E9D44/office2003-KB2825621-FullFile-ELL.exe|updates/office2003/office2003-kb2825621-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/2/C/B/2CB938CC-248D-4102-8D42-3787933C78D1/office2003-KB2825621-FullFile-ENU.exe|updates/office2003/office2003-kb2825621-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/4/4/2/442FF96E-9523-4B3A-AE78-C8136FDC09D7/office2003-KB2825621-FullFile-ESN.exe|updates/office2003/office2003-kb2825621-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/9/C/E/9CE3ED65-B073-4F1A-A28B-E96685A4DC9F/office2003-KB2825621-FullFile-FIN.exe|updates/office2003/office2003-kb2825621-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/9/0/F/90F3C64A-6436-4FB0-8BCE-1AD668FE2F01/office2003-KB2825621-FullFile-FRA.exe|updates/office2003/office2003-kb2825621-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/0/6/3/0632AA88-983B-4ED7-8F4C-5D838F9BE057/office2003-KB2825621-FullFile-HUN.exe|updates/office2003/office2003-kb2825621-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/D/3/6/D3630597-E665-49C8-AE17-F77CE3D35450/office2003-KB2825621-FullFile-ITA.exe|updates/office2003/office2003-kb2825621-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/5/1/5/515B20D2-7B82-46D1-9665-ADA80F836A87/office2003-KB2825621-FullFile-JPN.exe|updates/office2003/office2003-kb2825621-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/A/0/9/A097C330-63A0-419D-B7EE-9F7ECD9C1326/office2003-KB2825621-FullFile-KOR.exe|updates/office2003/office2003-kb2825621-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/B/4/9/B49A3179-8CF2-4A14-AA77-5824A7BC30CB/office2003-KB2825621-FullFile-NLD.exe|updates/office2003/office2003-kb2825621-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/9/9/2/992C6335-4333-495A-A797-BD823EE96ABC/office2003-KB2825621-FullFile-PLK.exe|updates/office2003/office2003-kb2825621-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/6/3/8/63847C80-9336-46AE-AB71-EDF2DD433BAB/office2003-KB2825621-FullFile-PTB.exe|updates/office2003/office2003-kb2825621-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/7/F/C/7FCEC224-66F5-4F34-931C-B895747ED3CC/office2003-KB2825621-FullFile-PTG.exe|updates/office2003/office2003-kb2825621-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/3/E/F/3EFF9F7F-3C2D-4381-8710-42F069EEA01B/office2003-KB2825621-FullFile-RUS.exe|updates/office2003/office2003-kb2825621-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/C/F/2/CF215760-3852-41BB-A611-019CEC27CA72/office2003-KB2825621-FullFile-SVE.exe|updates/office2003/office2003-kb2825621-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/3/1/A/31AEC688-ADBD-4E90-B235-9332BFF556B4/office2003-KB2825621-FullFile-TRK.exe|updates/office2003/office2003-kb2825621-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB2825621-FullFile-%WINLANG%.exe /Q"

:: Security Update for Office 2003 (KB2817474)
:: <https://www.microsoft.com/en-us/download/details.aspx?id=40191>
:: URL|CSY|http://download.microsoft.com/download/6/8/8/6882D12B-64F4-4AE4-BC28-A2B69715D88A/office2003-KB2817474-FullFile-CSY.exe|updates/office2003/office2003-kb2817474-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/A/0/4/A04C62E7-9EAD-4823-8282-3A19E8FE3E15/office2003-KB2817474-FullFile-DAN.exe|updates/office2003/office2003-kb2817474-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/B/8/C/B8CC5BC9-2235-4D89-8D52-FA55032674C7/office2003-KB2817474-FullFile-DEU.exe|updates/office2003/office2003-kb2817474-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/0/E/B/0EBC72A0-5918-4F05-9737-0C0C02C1F66A/office2003-KB2817474-FullFile-ELL.exe|updates/office2003/office2003-kb2817474-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/5/B/3/5B3729B7-D6BF-448B-816D-E385D8FF726F/office2003-KB2817474-FullFile-ENU.exe|updates/office2003/office2003-kb2817474-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/C/C/4/CC4E111D-1575-4FC6-9A02-FAF01693AF57/office2003-KB2817474-FullFile-ESN.exe|updates/office2003/office2003-kb2817474-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/4/E/0/4E0C5631-2DFA-449A-9B99-C144B616A38C/office2003-KB2817474-FullFile-FIN.exe|updates/office2003/office2003-kb2817474-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/5/8/F/58FCCC43-5732-40AB-B06E-B0A82DA2F1AE/office2003-KB2817474-FullFile-FRA.exe|updates/office2003/office2003-kb2817474-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/3/F/D/3FD43626-6ADB-4C0D-8306-C14BD1962EC6/office2003-KB2817474-FullFile-HUN.exe|updates/office2003/office2003-kb2817474-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/6/F/0/6F04C725-E889-4ABF-9B48-080C019C9559/office2003-KB2817474-FullFile-ITA.exe|updates/office2003/office2003-kb2817474-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/3/5/4/35408D93-3B8F-489F-A24E-16982D718275/office2003-KB2817474-FullFile-JPN.exe|updates/office2003/office2003-kb2817474-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/7/F/4/7F4140ED-5EFA-49E2-BA79-A71E5F1660A5/office2003-KB2817474-FullFile-KOR.exe|updates/office2003/office2003-kb2817474-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/C/E/3/CE3AB9C0-DDDF-45E5-AC35-517638ADFAD2/office2003-KB2817474-FullFile-NLD.exe|updates/office2003/office2003-kb2817474-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/2/B/A/2BA4E5E0-43D9-43A3-A10A-8F8D67D82293/office2003-KB2817474-FullFile-PLK.exe|updates/office2003/office2003-kb2817474-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/2/9/8/2987F02A-3B39-4427-B95D-8CAAE36B15B8/office2003-KB2817474-FullFile-PTB.exe|updates/office2003/office2003-kb2817474-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/3/7/0/3709DAAD-6FA7-496F-A14F-A52B175405EF/office2003-KB2817474-FullFile-PTG.exe|updates/office2003/office2003-kb2817474-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/8/1/3/813FDD19-651A-47F1-A81E-F285DE655D5E/office2003-KB2817474-FullFile-RUS.exe|updates/office2003/office2003-kb2817474-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/1/A/E/1AECBCCA-10AA-4424-8779-7D65F3D6AB9F/office2003-KB2817474-FullFile-SVE.exe|updates/office2003/office2003-kb2817474-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/A/B/A/ABAF2842-EBCE-46DB-9CEA-5B1A84A93BC1/office2003-KB2817474-FullFile-TRK.exe|updates/office2003/office2003-kb2817474-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB2817474-FullFile-%WINLANG%.exe /Q"

:: Security Update for Excel 2003 (KB2810048)
:: <https://www.microsoft.com/en-us/download/details.aspx?id=40169>
:: URL|CSY|http://download.microsoft.com/download/D/8/4/D8450E83-A744-4C10-9BA9-96D12FFB1F38/office2003-KB2810048-FullFile-CSY.exe|updates/office2003/office2003-kb2810048-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/F/1/1/F116535D-7699-419F-84D0-B9190F167D4F/office2003-KB2810048-FullFile-DAN.exe|updates/office2003/office2003-kb2810048-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/D/C/5/DC552D28-3E53-485D-AB3A-F25BA3127BCD/office2003-KB2810048-FullFile-DEU.exe|updates/office2003/office2003-kb2810048-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/B/9/E/B9E0ED04-48A5-4685-96DD-0FD0FEDCDAF8/office2003-KB2810048-FullFile-ELL.exe|updates/office2003/office2003-kb2810048-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/7/C/F/7CF81E45-37AA-4C93-B61F-B29DC0926815/office2003-KB2810048-FullFile-ENU.exe|updates/office2003/office2003-kb2810048-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/4/E/9/4E91CDB2-1785-4FDD-8160-E79F67D5F548/office2003-KB2810048-FullFile-ESN.exe|updates/office2003/office2003-kb2810048-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/5/4/A/54A4FB56-9424-461F-B8A9-ED339400B86B/office2003-KB2810048-FullFile-FIN.exe|updates/office2003/office2003-kb2810048-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/1/B/F/1BFE5B4E-637C-4C1A-A77E-89557B4BD7E7/office2003-KB2810048-FullFile-FRA.exe|updates/office2003/office2003-kb2810048-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/3/1/C/31CEBC8E-6353-44D3-8AF1-8BA0A00A1052/office2003-KB2810048-FullFile-HUN.exe|updates/office2003/office2003-kb2810048-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/5/3/6/536F6DA2-B4A8-436E-896B-532CF2F1BBF3/office2003-KB2810048-FullFile-ITA.exe|updates/office2003/office2003-kb2810048-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/9/0/9/909053BA-6F7B-43B6-8F78-DB29087B823D/office2003-KB2810048-FullFile-JPN.exe|updates/office2003/office2003-kb2810048-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/4/2/2/4222BE08-4570-493E-ACD5-15F97D8C6CB2/office2003-KB2810048-FullFile-KOR.exe|updates/office2003/office2003-kb2810048-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/C/1/C/C1C51BC4-8106-4A74-A003-F4AC7619994F/office2003-KB2810048-FullFile-NLD.exe|updates/office2003/office2003-kb2810048-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/9/4/D/94D5C297-9015-4243-8401-5B65E0A9C2CD/office2003-KB2810048-FullFile-PLK.exe|updates/office2003/office2003-kb2810048-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/3/7/2/372B7CF8-5319-41CB-A10F-81BC4658AF69/office2003-KB2810048-FullFile-PTB.exe|updates/office2003/office2003-kb2810048-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/5/F/C/5FC77C79-95FD-4840-8D46-C3366F2D22D3/office2003-KB2810048-FullFile-PTG.exe|updates/office2003/office2003-kb2810048-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/6/E/F/6EF43E66-5766-4155-BAC6-C3EB4DA8608E/office2003-KB2810048-FullFile-RUS.exe|updates/office2003/office2003-kb2810048-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/A/D/1/AD13EB9F-4D66-4584-96F4-E93AE30BB4D9/office2003-KB2810048-FullFile-SVE.exe|updates/office2003/office2003-kb2810048-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/A/7/A/A7A447C7-1DBD-45E9-9321-A72EAEEBBA9A/office2003-KB2810048-FullFile-TRK.exe|updates/office2003/office2003-kb2810048-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB2810048-FullFile-%WINLANG%.exe /Q"

:: Security Update for Office 2003 (KB2760574)
:: <http://www.microsoft.com/es-es/download/details.aspx?id=36361>
:: URL|CSY|http://download.microsoft.com/download/0/7/8/0783F1CF-30A8-429D-AB13-5167C5482467/office2003-KB2760574-FullFile-CSY.exe|updates/office2003/office2003-kb2760574-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/3/9/9/39998EFA-F3E7-4E58-86D7-9AA37BB90553/office2003-KB2760574-FullFile-DAN.exe|updates/office2003/office2003-kb2760574-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/C/5/1/C5153135-9A60-4F42-B37A-5491619F952F/office2003-KB2760574-FullFile-DEU.exe|updates/office2003/office2003-kb2760574-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/D/6/4/D644E4FB-A704-423F-8FB2-86D86CCBA94C/office2003-KB2760574-FullFile-ELL.exe|updates/office2003/office2003-kb2760574-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/7/F/F/7FFFDAED-7377-4A7F-AB81-EFF2834B70AF/office2003-KB2760574-FullFile-ENU.exe|updates/office2003/office2003-kb2760574-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/0/2/A/02A2A7C3-4B55-4D2A-9FC9-92DDF1431180/office2003-KB2760574-FullFile-ESN.exe|updates/office2003/office2003-kb2760574-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/1/A/D/1AD0D55E-B265-4EAD-B5BD-3486D8465EF0/office2003-KB2760574-FullFile-FIN.exe|updates/office2003/office2003-kb2760574-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/5/0/E/50E57D6B-3D47-40E5-AAC8-67D62F168657/office2003-KB2760574-FullFile-FRA.exe|updates/office2003/office2003-kb2760574-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/6/B/A/6BA661B4-172C-43AE-AEF8-E83DB4C56EF3/office2003-KB2760574-FullFile-HUN.exe|updates/office2003/office2003-kb2760574-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/9/B/7/9B70FE0E-18B2-4E2A-BE51-4566E1895438/office2003-KB2760574-FullFile-ITA.exe|updates/office2003/office2003-kb2760574-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/3/F/D/3FDABEAD-AC13-4374-AFF9-A50FA34951A2/office2003-KB2760574-FullFile-JPN.exe|updates/office2003/office2003-kb2760574-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/2/1/B/21BD4F06-B7FE-4573-8A36-8238CE0CA772/office2003-KB2760574-FullFile-KOR.exe|updates/office2003/office2003-kb2760574-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/F/9/A/F9AE682A-4E03-407A-AAA1-1114F5D9C0A4/office2003-KB2760574-FullFile-NLD.exe|updates/office2003/office2003-kb2760574-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/2/4/6/2466EFA9-4961-44EB-8F53-0301757AF31D/office2003-KB2760574-FullFile-PLK.exe|updates/office2003/office2003-kb2760574-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/6/E/1/6E183C5C-346C-4CBF-A5BC-7FFA9253DFDF/office2003-KB2760574-FullFile-PTB.exe|updates/office2003/office2003-kb2760574-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/8/A/B/8ABAFE47-B48A-49AA-B4B4-93E716CFD7C0/office2003-KB2760574-FullFile-PTG.exe|updates/office2003/office2003-kb2760574-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/8/C/A/8CADAD3D-3076-4395-8D0A-DB6C04DEB217/office2003-KB2760574-FullFile-RUS.exe|updates/office2003/office2003-kb2760574-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/7/0/D/70D0E5FB-AA16-473D-B4C8-F19B2C14B607/office2003-KB2760574-FullFile-SVE.exe|updates/office2003/office2003-kb2760574-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/3/0/3/303DC3AF-5930-4C8F-9B12-75DDCCEE6A7D/office2003-KB2760574-FullFile-TRK.exe|updates/office2003/office2003-kb2760574-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB2760574-FullFile-%WINLANG%.exe /Q"

:: Security Update for Office 2003 (KB2760494)
:: <https://www.microsoft.com/en-us/download/details.aspx?id=41120>
:: URL|CSY|http://download.microsoft.com/download/0/3/F/03F86B2D-85C7-44E7-BF1D-7A0837F64F66/office2003-KB2760494-FullFile-CSY.exe|updates/office2003/office2003-kb2760494-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/D/4/1/D41A4C1D-DDF4-4F7D-A4EF-D1B1079FC7F2/office2003-KB2760494-FullFile-DAN.exe|updates/office2003/office2003-kb2760494-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/7/0/F/70F4D3EE-D750-4F1A-955A-29E8EC7FC5D1/office2003-KB2760494-FullFile-DEU.exe|updates/office2003/office2003-kb2760494-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/1/6/6/1665362B-B9DF-474C-A695-6115BA19D294/office2003-KB2760494-FullFile-ELL.exe|updates/office2003/office2003-kb2760494-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/B/1/9/B19A76A2-3B09-4C64-AE69-756134B9F8A3/office2003-KB2760494-FullFile-ENU.exe|updates/office2003/office2003-kb2760494-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/8/A/F/8AFF8037-D83B-4609-8D4F-F46281C17C5D/office2003-KB2760494-FullFile-ESN.exe|updates/office2003/office2003-kb2760494-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/1/9/5/19543279-5B9E-469B-ACE8-DE895A920846/office2003-KB2760494-FullFile-FIN.exe|updates/office2003/office2003-kb2760494-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/3/3/B/33B3CEC9-A90C-43C0-B2AB-4A1A5F9EFAA4/office2003-KB2760494-FullFile-FRA.exe|updates/office2003/office2003-kb2760494-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/9/6/4/964C5EF9-E3A6-4718-8C48-99862D7599A8/office2003-KB2760494-FullFile-HUN.exe|updates/office2003/office2003-kb2760494-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/2/E/1/2E120DEC-F38B-41EF-AF99-58E6015FB949/office2003-KB2760494-FullFile-ITA.exe|updates/office2003/office2003-kb2760494-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/5/0/C/50CB3210-B200-4AE7-81C6-7D3C45A794E7/office2003-KB2760494-FullFile-JPN.exe|updates/office2003/office2003-kb2760494-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/7/A/8/7A8771AA-D24C-4A93-872C-F8929B7711FD/office2003-KB2760494-FullFile-KOR.exe|updates/office2003/office2003-kb2760494-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/6/1/7/61797266-1466-476D-9BCE-44109A9A2311/office2003-KB2760494-FullFile-NLD.exe|updates/office2003/office2003-kb2760494-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/5/5/B/55BC94AF-EF21-4D62-9356-D3F51F770C37/office2003-KB2760494-FullFile-PLK.exe|updates/office2003/office2003-kb2760494-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/1/A/1/1A1F5BCE-173E-47A9-9930-C22D1A18E50A/office2003-KB2760494-FullFile-PTB.exe|updates/office2003/office2003-kb2760494-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/0/B/4/0B42A4D8-28BD-4F92-827E-C2BC6F7077D4/office2003-KB2760494-FullFile-PTG.exe|updates/office2003/office2003-kb2760494-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/3/6/1/3610D6AE-204C-45FF-80ED-1769C82EE893/office2003-KB2760494-FullFile-RUS.exe|updates/office2003/office2003-kb2760494-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/8/E/5/8E5AF981-5AEE-472E-9511-D67BC21596AF/office2003-KB2760494-FullFile-SVE.exe|updates/office2003/office2003-kb2760494-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/1/7/C/17CF110D-F99C-45BF-BC70-BE40285BEFAB/office2003-KB2760494-FullFile-TRK.exe|updates/office2003/office2003-kb2760494-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB2760494-FullFile-%WINLANG%.exe /Q"

:: Security Update for Office 2003 (KB2726929)
:: <https://www.microsoft.com/en-us/download/details.aspx?id=36010>
:: URL|CSY|http://download.microsoft.com/download/1/0/C/10C100F3-2F40-4286-8BD6-777FFCD6FCC6/office2003-KB2726929-FullFile-CSY.exe|updates/office2003/office2003-kb2726929-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/7/2/8/7284F7E4-92AD-4921-8FFE-F32F1579A854/office2003-KB2726929-FullFile-DAN.exe|updates/office2003/office2003-kb2726929-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/3/2/0/32056E8C-4304-4C66-A07C-F57EBE7AD204/office2003-KB2726929-FullFile-DEU.exe|updates/office2003/office2003-kb2726929-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/A/7/4/A74554FC-71A3-46EA-ADB2-247159BDA2CD/office2003-KB2726929-FullFile-ELL.exe|updates/office2003/office2003-kb2726929-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/D/E/F/DEF8B35D-C1D4-43C0-8C57-39BF5B9DC074/office2003-KB2726929-FullFile-ENU.exe|updates/office2003/office2003-kb2726929-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/B/B/4/BB45308F-41E9-4CF0-8BE6-D9F7E0BBAB1C/office2003-KB2726929-FullFile-ESN.exe|updates/office2003/office2003-kb2726929-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/5/E/1/5E1492F1-7FF6-46FD-BA7A-141B19449890/office2003-KB2726929-FullFile-FIN.exe|updates/office2003/office2003-kb2726929-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/1/B/D/1BDCA245-9458-47EA-B4CE-69E3CCA97E7A/office2003-KB2726929-FullFile-FRA.exe|updates/office2003/office2003-kb2726929-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/2/7/6/276C6701-ABD3-4848-AE48-B6B9D01237F1/office2003-KB2726929-FullFile-HUN.exe|updates/office2003/office2003-kb2726929-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/2/7/E/27EADCE0-DFA2-40B2-8DA1-23509C274B78/office2003-KB2726929-FullFile-ITA.exe|updates/office2003/office2003-kb2726929-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/7/F/1/7F19A3A8-15BD-4BE1-B2B0-DAED792CA028/office2003-KB2726929-FullFile-JPN.exe|updates/office2003/office2003-kb2726929-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/C/5/C/C5CB3AE5-9D66-4BEE-8260-F1B80B35455F/office2003-KB2726929-FullFile-KOR.exe|updates/office2003/office2003-kb2726929-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/C/E/A/CEAE66A6-0539-4B49-95AC-7132C61A70A3/office2003-KB2726929-FullFile-NLD.exe|updates/office2003/office2003-kb2726929-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/B/1/9/B19F4553-7FE2-4AEE-9398-49765884D4D9/office2003-KB2726929-FullFile-PLK.exe|updates/office2003/office2003-kb2726929-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/C/1/A/C1ADFF54-2A5A-4980-868C-958EA5AA5138/office2003-KB2726929-FullFile-PTB.exe|updates/office2003/office2003-kb2726929-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/C/D/C/CDC105A4-E38F-425B-A117-5D5589AFFE7B/office2003-KB2726929-FullFile-PTG.exe|updates/office2003/office2003-kb2726929-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/A/9/1/A91858C9-9C18-4476-90C7-76EB9C2BA37C/office2003-KB2726929-FullFile-RUS.exe|updates/office2003/office2003-kb2726929-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/9/B/A/9BA2A02B-2AE9-4C1F-B89D-655E81CEE5BA/office2003-KB2726929-FullFile-SVE.exe|updates/office2003/office2003-kb2726929-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/5/3/E/53E3528D-5C75-4B05-9115-A328BDAD95E6/office2003-KB2726929-FullFile-TRK.exe|updates/office2003/office2003-kb2726929-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB2726929-FullFile-%WINLANG%.exe /Q"

:: Security Update for Office 2003 (KB2687626)
:: <https://www.microsoft.com/en-us/download/details.aspx?id=35717>
:: URL|CSY|http://download.microsoft.com/download/0/8/B/08B392CE-4FBE-48F9-88F1-4114538729C7/office2003-KB2687626-FullFile-CSY.exe|updates/office2003/office2003-kb2687626-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/E/A/5/EA5D5D3B-731F-4801-93B0-12E630CF111E/office2003-KB2687626-FullFile-DAN.exe|updates/office2003/office2003-kb2687626-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/A/4/0/A40E765C-E2F0-4618-9EF7-467B9D873D20/office2003-KB2687626-FullFile-DEU.exe|updates/office2003/office2003-kb2687626-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/F/8/5/F850B45D-2E43-4C6B-8E64-80C42D61A2AD/office2003-KB2687626-FullFile-ELL.exe|updates/office2003/office2003-kb2687626-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/9/9/1/99192713-FE59-48D7-9D3B-8646F240FD2D/office2003-KB2687626-FullFile-ENU.exe|updates/office2003/office2003-kb2687626-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/2/0/3/20323662-C3B0-4928-AF3B-B439528F1E89/office2003-KB2687626-FullFile-ESN.exe|updates/office2003/office2003-kb2687626-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/3/A/8/3A8934F8-D617-4643-BCE7-AB7640674C00/office2003-KB2687626-FullFile-FIN.exe|updates/office2003/office2003-kb2687626-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/A/0/C/A0C4FAA4-3A67-4F03-AA42-302EB5FC023B/office2003-KB2687626-FullFile-FRA.exe|updates/office2003/office2003-kb2687626-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/A/7/4/A7421A95-03FC-4513-9414-8E4E69887BEE/office2003-KB2687626-FullFile-HUN.exe|updates/office2003/office2003-kb2687626-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/8/C/4/8C463766-1418-4A7F-AD2F-115DE8226537/office2003-KB2687626-FullFile-ITA.exe|updates/office2003/office2003-kb2687626-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/9/A/F/9AF87897-465D-4DCA-A31A-193FFAA0258A/office2003-KB2687626-FullFile-JPN.exe|updates/office2003/office2003-kb2687626-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/1/E/0/1E0DA169-99B6-4C72-B470-EA745A0F9E17/office2003-KB2687626-FullFile-KOR.exe|updates/office2003/office2003-kb2687626-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/D/5/1/D5103DCB-D441-4FB0-9513-97E706B18224/office2003-KB2687626-FullFile-NLD.exe|updates/office2003/office2003-kb2687626-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/9/0/C/90C29E58-B4C0-495A-A514-861E88F827F3/office2003-KB2687626-FullFile-PLK.exe|updates/office2003/office2003-kb2687626-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/D/3/6/D36FEF84-E795-4BBB-A709-2B598F314FE2/office2003-KB2687626-FullFile-PTB.exe|updates/office2003/office2003-kb2687626-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/7/0/D/70D5E95E-06E7-41FD-894A-07566F95517B/office2003-KB2687626-FullFile-PTG.exe|updates/office2003/office2003-kb2687626-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/4/7/A/47A350BA-F5A5-4876-9A2D-5C559B045CA8/office2003-KB2687626-FullFile-RUS.exe|updates/office2003/office2003-kb2687626-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/7/5/7/7577C16E-AE42-40F6-92A3-FBEF74859930/office2003-KB2687626-FullFile-SVE.exe|updates/office2003/office2003-kb2687626-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/8/D/6/8D608F04-58BA-4FE2-AED3-B63F4E73E45D/office2003-KB2687626-FullFile-TRK.exe|updates/office2003/office2003-kb2687626-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB2687626-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office PowerPoint 2003 (KB2535812)
:: <https://www.microsoft.com/en-us/download/details.aspx?id=6179>
:: URL|CSY|http://download.microsoft.com/download/B/E/E/BEEB1C3B-9E7B-42AF-9ABB-7AD4DFF19E0C/office2003-KB2535812-FullFile-CSY.exe|updates/office2003/office2003-kb2535812-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/4/B/B/4BBB2988-9AE3-44BD-8AE2-3A84E7E72147/office2003-KB2535812-FullFile-DAN.exe|updates/office2003/office2003-kb2535812-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/A/6/2/A623F8C0-96ED-414B-8712-FF8539A656CC/office2003-KB2535812-FullFile-DEU.exe|updates/office2003/office2003-kb2535812-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/7/4/9/749A32D5-32F7-45AB-9438-13FDEABD6796/office2003-KB2535812-FullFile-ELL.exe|updates/office2003/office2003-kb2535812-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/F/5/4/F5415F34-944E-411C-92FD-0D8DE7E4BAD4/office2003-KB2535812-FullFile-ENU.exe|updates/office2003/office2003-kb2535812-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/B/3/9/B39BDC2E-E543-4D00-84F1-6A2E8F55E70F/office2003-KB2535812-FullFile-ESN.exe|updates/office2003/office2003-kb2535812-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/9/A/4/9A479433-8402-442C-8C41-69F63E5D458A/office2003-KB2535812-FullFile-FIN.exe|updates/office2003/office2003-kb2535812-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/A/C/1/AC1B0737-412D-47C0-B716-F20A9419E49A/office2003-KB2535812-FullFile-FRA.exe|updates/office2003/office2003-kb2535812-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/A/3/4/A3410457-31BB-4453-A391-7538AB2C3FB9/office2003-KB2535812-FullFile-HUN.exe|updates/office2003/office2003-kb2535812-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/3/9/F/39FEFAC6-C401-405D-A525-940E355C8F87/office2003-KB2535812-FullFile-ITA.exe|updates/office2003/office2003-kb2535812-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/2/4/E/24E60F44-2D25-46DF-A25F-6071EF5D2A40/office2003-KB2535812-FullFile-JPN.exe|updates/office2003/office2003-kb2535812-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/D/6/2/D6207025-95B2-4BE3-B0EC-4794D114618E/office2003-KB2535812-FullFile-KOR.exe|updates/office2003/office2003-kb2535812-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/3/4/A/34A867BA-07FC-4E74-AE1F-3282BA0B6676/office2003-KB2535812-FullFile-NLD.exe|updates/office2003/office2003-kb2535812-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/F/9/2/F927AB07-0E7A-4275-93E9-D6FEDBCC8B5A/office2003-KB2535812-FullFile-PLK.exe|updates/office2003/office2003-kb2535812-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/4/9/1/49162813-71F8-4AF3-92AB-B21410A4C8BA/office2003-KB2535812-FullFile-PTB.exe|updates/office2003/office2003-kb2535812-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/7/7/2/77229EAD-FD1B-4823-B266-D9AF7B2227A8/office2003-KB2535812-FullFile-PTG.exe|updates/office2003/office2003-kb2535812-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/2/C/0/2C086C42-3446-4463-BEE7-6F5342A9E346/office2003-KB2535812-FullFile-RUS.exe|updates/office2003/office2003-kb2535812-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/8/9/9/8991AB59-A35A-4C54-B137-36E19B41DE84/office2003-KB2535812-FullFile-SVE.exe|updates/office2003/office2003-kb2535812-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/7/3/C/73CEF8A0-2B93-49F7-86D4-E746C3110E2F/office2003-KB2535812-FullFile-TRK.exe|updates/office2003/office2003-kb2535812-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB2535812-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office 2003 (KB2493523)
:: <https://www.microsoft.com/en-us/download/details.aspx?id=26781>
:: URL|CSY|http://download.microsoft.com/download/1/D/5/1D576559-99D9-4A6F-BFCB-B62155580977/office2003-KB2493523-FullFile-CSY.exe|updates/office2003/office2003-kb2493523-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/8/2/3/823BAC1A-4922-43D8-9769-6576B3A2381B/office2003-KB2493523-FullFile-DAN.exe|updates/office2003/office2003-kb2493523-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/A/7/6/A7698B3B-49FC-480D-89CC-637AE991A5A9/office2003-KB2493523-FullFile-DEU.exe|updates/office2003/office2003-kb2493523-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/8/E/9/8E943BA1-3879-454C-9CA2-9653464F02FF/office2003-KB2493523-FullFile-ELL.exe|updates/office2003/office2003-kb2493523-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/F/D/B/FDB84C18-4D71-4E09-9A11-427C9666470E/office2003-KB2493523-FullFile-ENU.exe|updates/office2003/office2003-kb2493523-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/1/3/6/136B8932-AB32-4220-A5FB-4DCEA1BD5AE7/office2003-KB2493523-FullFile-ESN.exe|updates/office2003/office2003-kb2493523-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/6/A/6/6A64825B-C12B-4081-ACCD-45AB9B0EE469/office2003-KB2493523-FullFile-FIN.exe|updates/office2003/office2003-kb2493523-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/9/D/A/9DA35823-C3F5-41F0-B1B7-5B93D31CFDA9/office2003-KB2493523-FullFile-FRA.exe|updates/office2003/office2003-kb2493523-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/5/9/7/59797F63-FE6E-4E4E-BD98-51B0F3414B9C/office2003-KB2493523-FullFile-HUN.exe|updates/office2003/office2003-kb2493523-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/2/D/C/2DC95024-0CE8-4715-962B-79537493BC4B/office2003-KB2493523-FullFile-ITA.exe|updates/office2003/office2003-kb2493523-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/0/5/6/05643146-3D1F-4B40-B670-E883DE28399E/office2003-KB2493523-FullFile-JPN.exe|updates/office2003/office2003-kb2493523-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/2/E/7/2E79CDB8-D049-4F80-8C0D-DEFD8874B3BB/office2003-KB2493523-FullFile-KOR.exe|updates/office2003/office2003-kb2493523-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/6/6/3/663C382B-0730-4640-810D-08DDFA6224AA/office2003-KB2493523-FullFile-NLD.exe|updates/office2003/office2003-kb2493523-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/F/4/7/F470BA32-8259-4782-8636-A4AC2087EFDB/office2003-KB2493523-FullFile-PLK.exe|updates/office2003/office2003-kb2493523-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/3/5/4/3540328B-F6EE-49FC-9819-A2C408D8273B/office2003-KB2493523-FullFile-PTB.exe|updates/office2003/office2003-kb2493523-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/F/1/6/F1637542-588E-4CA4-82F7-D8C9CB6EF618/office2003-KB2493523-FullFile-PTG.exe|updates/office2003/office2003-kb2493523-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/F/B/9/FB906346-747B-4614-89D0-29DDD9A78C72/office2003-KB2493523-FullFile-RUS.exe|updates/office2003/office2003-kb2493523-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/E/2/B/E2BD0931-82BA-4DC4-8E39-1F52E14F50F5/office2003-KB2493523-FullFile-SVE.exe|updates/office2003/office2003-kb2493523-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/0/2/5/0251A0D1-64EA-4A7D-A365-23271B4EC2BF/office2003-KB2493523-FullFile-TRK.exe|updates/office2003/office2003-kb2493523-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB2493523-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office Outlook 2003 (KB2293428)
:: <https://www.microsoft.com/en-us/download/details.aspx?id=23351>
:: URL|CSY|http://download.microsoft.com/download/5/E/0/5E02528A-1CFA-485A-B80C-7770B03F9B4B/office2003-KB2293428-FullFile-CSY.exe|updates/office2003/office2003-kb2293428-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/3/8/C/38C9CD27-C2B0-4CA0-A2ED-A2A169C15135/office2003-KB2293428-FullFile-DAN.exe|updates/office2003/office2003-kb2293428-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/E/D/A/EDA6435C-12A7-4B0D-8EB9-AE2A4D4502B5/office2003-KB2293428-FullFile-DEU.exe|updates/office2003/office2003-kb2293428-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/1/8/D/18DADE44-0A78-4382-ABC3-B5EF8E0A6418/office2003-KB2293428-FullFile-ELL.exe|updates/office2003/office2003-kb2293428-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/0/8/4/084CE8BF-8603-40E5-A9DD-81BB8389A771/office2003-KB2293428-FullFile-ENU.exe|updates/office2003/office2003-kb2293428-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/2/C/0/2C08973E-E778-4C6D-8CD7-9435196C2D4B/office2003-KB2293428-FullFile-ESN.exe|updates/office2003/office2003-kb2293428-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/A/9/A/A9AB0753-37D7-436D-9408-C368298A7E81/office2003-KB2293428-FullFile-FIN.exe|updates/office2003/office2003-kb2293428-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/0/E/C/0EC80375-5F39-4592-8AE2-23825E6047A7/office2003-KB2293428-FullFile-FRA.exe|updates/office2003/office2003-kb2293428-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/D/7/F/D7FA6705-7109-4D5D-933A-C40C0A128CAF/office2003-KB2293428-FullFile-HUN.exe|updates/office2003/office2003-kb2293428-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/4/6/1/46149C8F-7ECE-4748-81D8-5C17D431859F/office2003-KB2293428-FullFile-ITA.exe|updates/office2003/office2003-kb2293428-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/6/9/D/69D4DDAA-CA4B-4E09-BA28-CEF2350033F6/office2003-KB2293428-FullFile-JPN.exe|updates/office2003/office2003-kb2293428-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/9/9/2/99247468-E655-462D-B213-7EEBA1C760E4/office2003-KB2293428-FullFile-KOR.exe|updates/office2003/office2003-kb2293428-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/E/A/7/EA7AE663-C510-44DD-B51B-6F6DAD1AB2F0/office2003-KB2293428-FullFile-NLD.exe|updates/office2003/office2003-kb2293428-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/1/5/B/15BCFD52-F944-480F-A327-21B75B1A028E/office2003-KB2293428-FullFile-PLK.exe|updates/office2003/office2003-kb2293428-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/F/D/9/FD9DB442-69FE-4314-96C6-CF1EF0C86235/office2003-KB2293428-FullFile-PTB.exe|updates/office2003/office2003-kb2293428-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/6/2/D/62DD85F8-EB2B-4359-9839-3242D4EB42DB/office2003-KB2293428-FullFile-PTG.exe|updates/office2003/office2003-kb2293428-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/8/E/F/8EF12A07-D017-409B-961B-BB21F55188EB/office2003-KB2293428-FullFile-RUS.exe|updates/office2003/office2003-kb2293428-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/0/4/B/04B77523-08D6-4CC2-B24E-8F94FD3D6DED/office2003-KB2293428-FullFile-SVE.exe|updates/office2003/office2003-kb2293428-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/1/A/6/1A6A6135-DD86-4DE7-8CA4-6F2F051B748E/office2003-KB2293428-FullFile-TRK.exe|updates/office2003/office2003-kb2293428-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB2293428-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office 2003 (KB2289163)
:: <https://www.microsoft.com/en-us/download/details.aspx?id=11805>
:: URL|CSY|http://download.microsoft.com/download/3/2/C/32CE4EE0-FECF-484E-9E15-84FF3B6E0B76/office2003-KB2289163-FullFile-CSY.exe|updates/office2003/office2003-kb2289163-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/E/B/6/EB69E0D6-60CA-461A-8C49-E30090DE5947/office2003-KB2289163-FullFile-DAN.exe|updates/office2003/office2003-kb2289163-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/0/D/4/0D41EF4A-6B3F-4EEF-9030-026FD855B94A/office2003-KB2289163-FullFile-DEU.exe|updates/office2003/office2003-kb2289163-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/2/9/D/29D4EAD0-C9A5-45C4-B6B6-379668F3DC5F/office2003-KB2289163-FullFile-ELL.exe|updates/office2003/office2003-kb2289163-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/3/D/7/3D7C668D-3D48-472B-91D2-19CBA9BAEE74/office2003-KB2289163-FullFile-ENU.exe|updates/office2003/office2003-kb2289163-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/7/1/5/7153E393-ED1D-4E03-94F1-019AEE2E40CB/office2003-KB2289163-FullFile-ESN.exe|updates/office2003/office2003-kb2289163-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/D/4/0/D4036B8C-E349-42F9-948F-90E4FF8AD6C2/office2003-KB2289163-FullFile-FIN.exe|updates/office2003/office2003-kb2289163-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/C/9/0/C904F6B1-7C3C-41CB-9168-DA71F93490E1/office2003-KB2289163-FullFile-FRA.exe|updates/office2003/office2003-kb2289163-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/D/A/7/DA77BE04-4BD9-4602-A22A-D9E8E0EB7E06/office2003-KB2289163-FullFile-HUN.exe|updates/office2003/office2003-kb2289163-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/0/1/D/01D800C4-95F3-460F-BF26-B858A09505D3/office2003-KB2289163-FullFile-ITA.exe|updates/office2003/office2003-kb2289163-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/6/5/8/65842F5B-ABD8-4931-81A4-960672C6663E/office2003-KB2289163-FullFile-JPN.exe|updates/office2003/office2003-kb2289163-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/2/1/E/21E68F7D-E07C-4251-A591-7D4AEBA5B2A4/office2003-KB2289163-FullFile-KOR.exe|updates/office2003/office2003-kb2289163-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/F/4/D/F4D7F7A9-0057-4DD7-BDE5-AC4409F88413/office2003-KB2289163-FullFile-NLD.exe|updates/office2003/office2003-kb2289163-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/2/2/4/22448AD8-370F-4D93-806C-45680374C035/office2003-KB2289163-FullFile-PLK.exe|updates/office2003/office2003-kb2289163-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/1/E/6/1E6DE3D0-AF87-4C57-94FA-9378CC8479B6/office2003-KB2289163-FullFile-PTB.exe|updates/office2003/office2003-kb2289163-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/8/2/B/82B25D11-F2E5-438F-BD52-3B6902357729/office2003-KB2289163-FullFile-PTG.exe|updates/office2003/office2003-kb2289163-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/3/7/2/3729A662-8E16-451A-A8C1-FFA18D93A411/office2003-KB2289163-FullFile-RUS.exe|updates/office2003/office2003-kb2289163-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/B/2/9/B29BCAD3-FE36-4212-A32C-B5E3D9EBD162/office2003-KB2289163-FullFile-SVE.exe|updates/office2003/office2003-kb2289163-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/E/E/2/EE266723-A541-4C59-8637-A1FFA303DD5B/office2003-KB2289163-FullFile-TRK.exe|updates/office2003/office2003-kb2289163-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB2289163-FullFile-%WINLANG%.exe /Q"

::: Security Update for Microsoft Office 2003 (KB2288613)
:: <https://www.microsoft.com/en-us/download/details.aspx?id=23997>
:: URL|CSY|http://download.microsoft.com/download/8/1/9/8197ADC0-59A1-4B0F-95B1-F972DB279EF0/office2003-KB2288613-FullFile-CSY.exe|updates/office2003/office2003-kb2288613-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/9/D/6/9D638FDC-66E1-477A-B193-9B00A5FFC306/office2003-KB2288613-FullFile-DAN.exe|updates/office2003/office2003-kb2288613-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/5/A/4/5A4F178A-AF39-40AD-B0A7-F3E9BCFE0255/office2003-KB2288613-FullFile-DEU.exe|updates/office2003/office2003-kb2288613-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/8/9/3/8938C2CA-BAA6-4655-99AE-232C5D178B9B/office2003-KB2288613-FullFile-ELL.exe|updates/office2003/office2003-kb2288613-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/0/5/7/0576FC54-78CC-4989-AAD8-AFE1831B9527/office2003-KB2288613-FullFile-ENU.exe|updates/office2003/office2003-kb2288613-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/0/8/8/088D0BD4-256E-40A7-A4B0-6AA964267B21/office2003-KB2288613-FullFile-ESN.exe|updates/office2003/office2003-kb2288613-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/6/B/8/6B89583B-3A81-4246-85D7-5F07D420A24E/office2003-KB2288613-FullFile-FIN.exe|updates/office2003/office2003-kb2288613-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/A/1/D/A1D4AE2C-AFCB-4263-8C10-066AE2EF1151/office2003-KB2288613-FullFile-FRA.exe|updates/office2003/office2003-kb2288613-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/8/F/F/8FF3CE64-C89A-4E1F-A5F5-24637CF09A49/office2003-KB2288613-FullFile-HUN.exe|updates/office2003/office2003-kb2288613-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/1/8/8/1885A04F-5BE0-4A9F-B6ED-7937301929C8/office2003-KB2288613-FullFile-ITA.exe|updates/office2003/office2003-kb2288613-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/B/D/7/BD7D2EC1-45F0-4623-82A9-73AE4C468858/office2003-KB2288613-FullFile-JPN.exe|updates/office2003/office2003-kb2288613-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/A/C/F/ACF3A5F3-6F5A-4671-A689-D9CF82432AC6/office2003-KB2288613-FullFile-KOR.exe|updates/office2003/office2003-kb2288613-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/A/3/9/A39F84E7-4FF6-4E9F-B70D-06DD0C60AA30/office2003-KB2288613-FullFile-NLD.exe|updates/office2003/office2003-kb2288613-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/8/3/2/832E48B5-D9B8-4741-8969-88301BB3DAFD/office2003-KB2288613-FullFile-PLK.exe|updates/office2003/office2003-kb2288613-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/3/3/A/33A568C9-D0BE-44D6-BB43-F9D18B64A4B4/office2003-KB2288613-FullFile-PTB.exe|updates/office2003/office2003-kb2288613-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/0/5/8/058E225F-0458-4D05-B760-D2511494D51B/office2003-KB2288613-FullFile-PTG.exe|updates/office2003/office2003-kb2288613-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/8/9/0/89066422-FF5D-4CC3-A616-EA5B32055D75/office2003-KB2288613-FullFile-RUS.exe|updates/office2003/office2003-kb2288613-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/8/0/2/802352B4-4B37-48CF-A831-29143410351C/office2003-KB2288613-FullFile-SVE.exe|updates/office2003/office2003-kb2288613-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/8/8/C/88CFD524-9ED1-469F-A2FE-74E741BC4649/office2003-KB2288613-FullFile-TRK.exe|updates/office2003/office2003-kb2288613-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB2288613-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office Access 2003 (KB981716)
:: <http://www.microsoft.com/en-us/download/details.aspx?id=10213>
:: URL|CSY|http://download.microsoft.com/download/F/8/0/F80A2EAC-9058-4B1B-B121-B553DF65E7E2/office2003-KB981716-FullFile-CSY.exe|updates/office2003/office2003-kb981716-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/9/0/9/9093E8F4-81A2-43DD-A31A-3051E2C0876B/office2003-KB981716-FullFile-DAN.exe|updates/office2003/office2003-kb981716-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/2/E/5/2E571676-FC01-45BB-BF4E-F875CE869F44/office2003-KB981716-FullFile-DEU.exe|updates/office2003/office2003-kb981716-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/C/7/8/C78A9C4B-3C81-43BB-99DC-626F4190E985/office2003-KB981716-FullFile-ELL.exe|updates/office2003/office2003-kb981716-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/7/6/F/76F19EFF-22DC-45CE-B7A3-2CCE67C1C2EC/office2003-KB981716-FullFile-ENU.exe|updates/office2003/office2003-kb981716-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/C/6/1/C61F8735-6529-4DF5-8E35-C3E3651DF463/office2003-KB981716-FullFile-ESN.exe|updates/office2003/office2003-kb981716-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/0/0/F/00F88894-9CCD-4868-8960-2718C2173439/office2003-KB981716-FullFile-FIN.exe|updates/office2003/office2003-kb981716-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/B/1/6/B169C28E-10B1-4A4A-AC12-9E1EAC246FEE/office2003-KB981716-FullFile-FRA.exe|updates/office2003/office2003-kb981716-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/1/F/B/1FB8DF7C-8E81-4FAD-A52D-B9E6E3497686/office2003-KB981716-FullFile-HUN.exe|updates/office2003/office2003-kb981716-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/C/8/3/C83F9B0E-AFD6-4600-965C-F1C20E6146A4/office2003-KB981716-FullFile-ITA.exe|updates/office2003/office2003-kb981716-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/1/D/6/1D674983-AC78-48B4-BCB1-93C826F562CE/office2003-KB981716-FullFile-JPN.exe|updates/office2003/office2003-kb981716-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/9/7/4/9741BF35-6DE1-406F-8868-64F62E12B6BB/office2003-KB981716-FullFile-KOR.exe|updates/office2003/office2003-kb981716-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/E/F/F/EFF1C08A-A369-450C-A329-4301C87D3FD8/office2003-KB981716-FullFile-NLD.exe|updates/office2003/office2003-kb981716-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/A/4/E/A4E7C4B0-17A9-4EB0-9570-35E27CAFA83D/office2003-KB981716-FullFile-PLK.exe|updates/office2003/office2003-kb981716-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/C/B/F/CBFD0ACD-87BE-4154-A5F4-0DE35ACA0E89/office2003-KB981716-FullFile-PTB.exe|updates/office2003/office2003-kb981716-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/6/D/2/6D2BB41C-F6BD-4F7F-8A39-4E84F65B025C/office2003-KB981716-FullFile-PTG.exe|updates/office2003/office2003-kb981716-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/3/C/F/3CFC86B4-C8AF-445C-AB63-00A416FE3CE5/office2003-KB981716-FullFile-RUS.exe|updates/office2003/office2003-kb981716-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/3/F/9/3F9CE8A2-3E66-4D33-A9AA-8DC0D5EA04DD/office2003-KB981716-FullFile-SVE.exe|updates/office2003/office2003-kb981716-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/F/F/8/FF8A7FF6-D569-461D-BF6E-2A6573FD03F0/office2003-KB981716-FullFile-TRK.exe|updates/office2003/office2003-kb981716-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB981716-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office InfoPath 2003 (KB980923)
:: <https://www.microsoft.com/en-us/download/details.aspx?id=6021>
:: URL|CSY|http://download.microsoft.com/download/7/4/6/74686976-D760-4485-9CD7-C090EEBBE2E4/office2003-KB980923-FullFile-CSY.exe|updates/office2003/office2003-kb980923-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/2/9/0/29038EAE-C745-45E4-B323-965AB5704142/office2003-KB980923-FullFile-DAN.exe|updates/office2003/office2003-kb980923-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/1/4/D/14DEFA5F-FE21-47C8-AC25-CBCE8643C4EB/office2003-KB980923-FullFile-DEU.exe|updates/office2003/office2003-kb980923-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/1/4/6/1464D954-D942-43D2-8EDF-D587F14C5C7D/office2003-KB980923-FullFile-ELL.exe|updates/office2003/office2003-kb980923-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/A/A/F/AAFE4DD5-DBA8-4854-B6CA-122FAD076589/office2003-KB980923-FullFile-ENU.exe|updates/office2003/office2003-kb980923-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/1/3/8/138CE957-06B3-4FD2-9F72-3217C60D14B5/office2003-KB980923-FullFile-ESN.exe|updates/office2003/office2003-kb980923-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/2/4/2/242FD261-1076-4C10-BF62-976B9104FDF0/office2003-KB980923-FullFile-FIN.exe|updates/office2003/office2003-kb980923-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/B/B/E/BBEEE3A4-E4EE-4DA0-8C4C-200824760637/office2003-KB980923-FullFile-FRA.exe|updates/office2003/office2003-kb980923-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/D/0/0/D00767ED-3B7C-45D6-9D97-5A8A0DDD1084/office2003-KB980923-FullFile-HUN.exe|updates/office2003/office2003-kb980923-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/2/7/A/27AA0638-5893-49D4-AA83-A81E53292F2A/office2003-KB980923-FullFile-ITA.exe|updates/office2003/office2003-kb980923-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/0/0/B/00BB815D-71C5-4812-A816-180878DE14AF/office2003-KB980923-FullFile-JPN.exe|updates/office2003/office2003-kb980923-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/7/6/D/76D09840-C571-44AD-ACC3-51C5FDFD1CC5/office2003-KB980923-FullFile-KOR.exe|updates/office2003/office2003-kb980923-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/A/C/5/AC5D4151-F598-409E-8182-37594FD25F03/office2003-KB980923-FullFile-NLD.exe|updates/office2003/office2003-kb980923-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/F/7/A/F7A98F74-AE4D-4C1F-8001-31C79CDED78E/office2003-KB980923-FullFile-PLK.exe|updates/office2003/office2003-kb980923-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/E/2/F/E2FCDA7C-98EC-4031-99B2-841AFD2F4AC6/office2003-KB980923-FullFile-PTB.exe|updates/office2003/office2003-kb980923-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/C/B/9/CB9C3FB9-ECD7-4111-AEB7-F115C3ABFBCB/office2003-KB980923-FullFile-PTG.exe|updates/office2003/office2003-kb980923-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/9/7/1/971CBF2B-D059-4DEB-8C07-23DD8C5E81D6/office2003-KB980923-FullFile-RUS.exe|updates/office2003/office2003-kb980923-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/A/B/7/AB725B72-F38A-4763-A7FA-33AE8C70F515/office2003-KB980923-FullFile-SVE.exe|updates/office2003/office2003-kb980923-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/8/0/1/80131C12-1BB7-4A3A-9732-28A7D30119C5/office2003-KB980923-FullFile-TRK.exe|updates/office2003/office2003-kb980923-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB980923-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office Outlook 2003 (KB980373)
:: <https://www.microsoft.com/en-us/download/details.aspx?id=12701>
:: URL|CSY|http://download.microsoft.com/download/F/2/F/F2F7EE1B-6DFA-4AC3-A04F-D4F64282E374/office2003-KB980373-FullFile-CSY.exe|updates/office2003/office2003-kb980373-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/F/F/9/FF9C5153-D5EB-474E-9FEF-661C94B1B403/office2003-KB980373-FullFile-DAN.exe|updates/office2003/office2003-kb980373-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/7/D/7/7D7295D3-9F2C-48AC-9707-EB12F69617DF/office2003-KB980373-FullFile-DEU.exe|updates/office2003/office2003-kb980373-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/C/3/6/C36DABC0-FE19-4633-8DB7-7ACBC5892221/office2003-KB980373-FullFile-ELL.exe|updates/office2003/office2003-kb980373-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/C/A/6/CA6D40D6-547C-489A-83A0-AE0EA8DE457C/office2003-KB980373-FullFile-ENU.exe|updates/office2003/office2003-kb980373-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/0/0/2/0021888B-DC0C-4131-BB4C-C7F68CC56D92/office2003-KB980373-FullFile-ESN.exe|updates/office2003/office2003-kb980373-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/E/C/C/ECC1A9CE-F905-4B4F-8ACE-8A9569171A88/office2003-KB980373-FullFile-FIN.exe|updates/office2003/office2003-kb980373-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/B/A/A/BAA57E7F-B6A1-48C1-87CD-2EA9138302BC/office2003-KB980373-FullFile-FRA.exe|updates/office2003/office2003-kb980373-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/2/4/3/2439D02B-2575-46F4-8F5D-38AABDD04AE0/office2003-KB980373-FullFile-HUN.exe|updates/office2003/office2003-kb980373-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/F/3/2/F32D3B4A-FDC8-4E94-806D-F5C0BCB73890/office2003-KB980373-FullFile-ITA.exe|updates/office2003/office2003-kb980373-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/2/A/0/2A060013-E91A-4CF4-A355-2AF0356211B5/office2003-KB980373-FullFile-JPN.exe|updates/office2003/office2003-kb980373-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/E/6/1/E615C15A-E6F3-4129-9DAA-8DE4B240984C/office2003-KB980373-FullFile-KOR.exe|updates/office2003/office2003-kb980373-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/B/A/1/BA196572-FB12-4CC8-A904-A83C9D00466A/office2003-KB980373-FullFile-NLD.exe|updates/office2003/office2003-kb980373-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/B/B/A/BBA9E37A-1E44-445D-A0E3-75A6600AD57C/office2003-KB980373-FullFile-PLK.exe|updates/office2003/office2003-kb980373-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/C/D/D/CDD9A305-D7F9-4A74-891D-0C1EA2593296/office2003-KB980373-FullFile-PTB.exe|updates/office2003/office2003-kb980373-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/8/7/C/87C2E8EC-450A-4830-9F69-518BE6FF8CE6/office2003-KB980373-FullFile-PTG.exe|updates/office2003/office2003-kb980373-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/3/B/7/3B7D6D3C-4FF7-432D-83C8-D303935CF87A/office2003-KB980373-FullFile-RUS.exe|updates/office2003/office2003-kb980373-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/E/F/8/EF81AD8C-8E8E-41B8-A359-4CCCA3E864A8/office2003-KB980373-FullFile-SVE.exe|updates/office2003/office2003-kb980373-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/8/A/A/8AA57128-D4D8-4258-B3DA-0231CA470209/office2003-KB980373-FullFile-TRK.exe|updates/office2003/office2003-kb980373-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB980373-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office 2003 (KB974554)
:: <https://www.microsoft.com/en-us/download/details.aspx?id=21694>
:: URL|CSY|http://download.microsoft.com/download/7/3/0/730F9BF2-35C2-412C-B78F-D0D408B14ACB/office2003-KB974554-FullFile-CSY.exe|updates/office2003/office2003-kb974554-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/2/F/9/2F904D33-6680-4DD8-B79D-86EFC0446ADE/office2003-KB974554-FullFile-DAN.exe|updates/office2003/office2003-kb974554-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/9/D/C/9DC94DD1-05E4-401E-863B-BADF2590A0B6/office2003-KB974554-FullFile-DEU.exe|updates/office2003/office2003-kb974554-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/C/D/4/CD4D323D-4DBE-4820-A36D-4CE36B5E9B55/office2003-KB974554-FullFile-ELL.exe|updates/office2003/office2003-kb974554-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/5/8/4/58479934-5BEA-4427-9709-F3E84C04DAF3/office2003-KB974554-FullFile-ENU.exe|updates/office2003/office2003-kb974554-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/3/1/C/31CD6081-5786-4BE6-B1B4-DF7B87326365/office2003-KB974554-FullFile-ESN.exe|updates/office2003/office2003-kb974554-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/D/0/8/D085DF65-42E2-45EB-B6C4-999203C5AC3E/office2003-KB974554-FullFile-FIN.exe|updates/office2003/office2003-kb974554-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/5/2/9/5298FA14-B66F-4E63-B267-822ECBAE23FB/office2003-KB974554-FullFile-FRA.exe|updates/office2003/office2003-kb974554-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/8/0/7/807B2B35-9CA9-4D98-9F48-F0884ADEBE0F/office2003-KB974554-FullFile-HUN.exe|updates/office2003/office2003-kb974554-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/E/8/1/E817C9B1-7A5D-4B08-AE3F-01AD59C6D869/office2003-KB974554-FullFile-ITA.exe|updates/office2003/office2003-kb974554-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/0/5/1/05168911-7AE2-4A28-9B7F-87471D32D968/office2003-KB974554-FullFile-JPN.exe|updates/office2003/office2003-kb974554-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/B/B/3/BB3DE9C4-3FD3-4675-8DCE-D7AC7E10BA3A/office2003-KB974554-FullFile-KOR.exe|updates/office2003/office2003-kb974554-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/E/3/0/E3096075-E4B4-48DF-AF8C-BF8E3B86E478/office2003-KB974554-FullFile-NLD.exe|updates/office2003/office2003-kb974554-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/2/F/6/2F6AE913-135F-4340-AD16-307117798DE5/office2003-KB974554-FullFile-PLK.exe|updates/office2003/office2003-kb974554-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/2/5/A/25A13A64-5FE2-45C0-AD10-DCFB09723412/office2003-KB974554-FullFile-PTB.exe|updates/office2003/office2003-kb974554-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/B/8/3/B83E55E4-0E3F-4240-8ECF-7F4BD30EA6EA/office2003-KB974554-FullFile-PTG.exe|updates/office2003/office2003-kb974554-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/6/E/A/6EA9A8CE-A28C-49A8-8F3D-A3E20026A2AC/office2003-KB974554-FullFile-RUS.exe|updates/office2003/office2003-kb974554-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/5/9/4/5940CB43-ADCB-485E-A766-3B058FDDE687/office2003-KB974554-FullFile-SVE.exe|updates/office2003/office2003-kb974554-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/7/2/8/7287D6F8-B33B-4985-BDCA-411616BBE60D/office2003-KB974554-FullFile-TRK.exe|updates/office2003/office2003-kb974554-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB974554-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office Excel 2003 (KB973475)
:: MS09-067: Description of the security update for Excel 2003: November 10, 2009
:: <http://support.microsoft.com/kb/973475>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=6a6a0f5d-17dc-4a34-b9a0-0774aa287ba5>
:: URL|ARA|http://download.microsoft.com/download/2/3/E/23EEA416-F1D7-4F59-851B-34430312FFD6/office2003-KB973475-FullFile-ARA.exe|updates/office2003/office2003-kb973475-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/F/7/4/F742D15F-622F-4E74-BEAD-0D0F8549FA90/office2003-KB973475-FullFile-CSY.exe|updates/office2003/office2003-kb973475-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/E/1/D/E1D3D102-6007-42DB-9265-26EFCF4F4CAC/office2003-KB973475-FullFile-DAN.exe|updates/office2003/office2003-kb973475-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/5/2/B/52B4885A-CDE3-4196-8873-8EB1B70A9AD3/office2003-KB973475-FullFile-DEU.exe|updates/office2003/office2003-kb973475-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/2/E/0/2E05872C-DC10-4116-9D07-B31D0112349C/office2003-KB973475-FullFile-ELL.exe|updates/office2003/office2003-kb973475-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/4/F/3/4F32F5A0-F0CA-4C86-9132-8BA364595D54/office2003-KB973475-FullFile-ENU.exe|updates/office2003/office2003-kb973475-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/F/B/8/FB84DDA0-4719-4985-8B3D-69EC4ADD0970/office2003-KB973475-FullFile-ESN.exe|updates/office2003/office2003-kb973475-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/1/E/7/1E73544B-1726-4711-927F-AF4105C709A9/office2003-KB973475-FullFile-FIN.exe|updates/office2003/office2003-kb973475-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/2/6/5/26584F5B-31B9-4D01-ADE3-6D9C782FD05C/office2003-KB973475-FullFile-FRA.exe|updates/office2003/office2003-kb973475-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/D/B/F/DBF0BCCB-4DA9-4353-A3ED-EC51E13321AA/office2003-KB973475-FullFile-HEB.exe|updates/office2003/office2003-kb973475-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/2/5/4/25429F94-DD97-4AFC-9F7B-248D7333C402/office2003-KB973475-FullFile-HUN.exe|updates/office2003/office2003-kb973475-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/F/B/F/FBF52C76-E36D-4694-89BE-29AB409017B1/office2003-KB973475-FullFile-ITA.exe|updates/office2003/office2003-kb973475-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/C/B/0/CB0C3B38-50A3-4E0F-909A-E167B9D87E46/office2003-KB973475-FullFile-JPN.exe|updates/office2003/office2003-kb973475-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/0/D/2/0D271052-54C7-4694-A9AF-66F77C0FC49F/office2003-KB973475-FullFile-KOR.exe|updates/office2003/office2003-kb973475-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/3/C/1/3C14A024-5F29-4C83-A37C-0C62BF438B0C/office2003-KB973475-FullFile-NLD.exe|updates/office2003/office2003-kb973475-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/C/0/2/C027EB56-C9C6-4929-A359-7B36437A2C7F/office2003-KB973475-FullFile-NOR.exe|updates/office2003/office2003-kb973475-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/7/D/4/7D4D3FF7-CE3F-4D76-8B20-6FEAB67AC85E/office2003-KB973475-FullFile-PLK.exe|updates/office2003/office2003-kb973475-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/C/B/7/CB7CA988-E80D-4D3F-9D5C-81B2A6040147/office2003-KB973475-FullFile-PTB.exe|updates/office2003/office2003-kb973475-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/D/F/8/DF80282F-3145-435C-8BE3-EBC2F400566B/office2003-KB973475-FullFile-PTG.exe|updates/office2003/office2003-kb973475-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/2/6/0/260EF50F-D72E-4098-91BE-981B87B49642/office2003-KB973475-FullFile-RUS.exe|updates/office2003/office2003-kb973475-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/C/B/A/CBA55A8A-4AD1-472C-9297-56C32546246F/office2003-KB973475-FullFile-SVE.exe|updates/office2003/office2003-kb973475-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/F/9/8/F9820265-8486-43FA-BEA8-65DB08321BBE/office2003-KB973475-FullFile-TRK.exe|updates/office2003/office2003-kb973475-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB973475-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office Word 2003 (KB973443)
:: MS09-068: Description of the security update for Word 2003: November 10, 2009
:: <http://support.microsoft.com/kb/973443>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=6b77bc62-bcbb-4b9a-97d1-a49ca0582e54>
:: URL|ARA|http://download.microsoft.com/download/3/A/1/3A1EE3C7-875C-46EF-800A-D8A21DD607CF/office2003-KB973443-FullFile-ARA.exe|updates/office2003/office2003-kb973443-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/4/6/2/462AA940-68C1-47C4-863F-2B7E2874CEAE/office2003-KB973443-FullFile-CSY.exe|updates/office2003/office2003-kb973443-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/D/3/4/D3450FB4-0DD9-4FA5-8202-6E1477EC1449/office2003-KB973443-FullFile-DAN.exe|updates/office2003/office2003-kb973443-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/7/B/E/7BE38492-CF4D-4BD2-B0E2-CA6AF2E773A6/office2003-KB973443-FullFile-DEU.exe|updates/office2003/office2003-kb973443-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/6/0/0/600446EA-5BC4-4B66-821F-2C942C190265/office2003-KB973443-FullFile-ELL.exe|updates/office2003/office2003-kb973443-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/3/D/5/3D560F43-6B79-4AC8-A456-3B7F98C915AD/office2003-KB973443-FullFile-ENU.exe|updates/office2003/office2003-kb973443-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/6/4/0/6405938F-6B10-4FE4-923A-F4F65B109C68/office2003-KB973443-FullFile-ESN.exe|updates/office2003/office2003-kb973443-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/B/A/4/BA4E64EA-974C-49C9-8FA5-7E07432CBFE9/office2003-KB973443-FullFile-FIN.exe|updates/office2003/office2003-kb973443-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/0/F/8/0F874C62-AE9C-4342-97A1-2C08F39A3D72/office2003-KB973443-FullFile-FRA.exe|updates/office2003/office2003-kb973443-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/A/6/E/A6E29BB8-7B98-4730-AFFA-517033CCC1A9/office2003-KB973443-FullFile-HEB.exe|updates/office2003/office2003-kb973443-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/2/A/7/2A7B8242-FB06-4886-9056-8B5A205C8B93/office2003-KB973443-FullFile-HUN.exe|updates/office2003/office2003-kb973443-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/6/2/2/622D5D05-C3EF-4E71-BF91-AF9803E79071/office2003-KB973443-FullFile-ITA.exe|updates/office2003/office2003-kb973443-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/5/A/1/5A1377EF-BF22-44DB-8B1D-0C777C3E7D9B/office2003-KB973443-FullFile-JPN.exe|updates/office2003/office2003-kb973443-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/3/9/C/39C46768-2E03-4661-ADE1-9C32F1D6ADA5/office2003-KB973443-FullFile-KOR.exe|updates/office2003/office2003-kb973443-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/8/E/8/8E82378E-0CC2-4D49-8BFC-1FF63062879B/office2003-KB973443-FullFile-NLD.exe|updates/office2003/office2003-kb973443-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/4/E/8/4E8FEE6D-CF06-418D-B439-5724F9AC85D8/office2003-KB973443-FullFile-NOR.exe|updates/office2003/office2003-kb973443-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/F/5/9/F5961C80-5B78-4251-85D9-DA11F35919B3/office2003-KB973443-FullFile-PLK.exe|updates/office2003/office2003-kb973443-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/C/5/E/C5ECC315-6666-4DA6-9238-5F8CB6DAF04B/office2003-KB973443-FullFile-PTB.exe|updates/office2003/office2003-kb973443-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/A/6/F/A6F24545-B0B0-4945-A181-82E6C8552508/office2003-KB973443-FullFile-PTG.exe|updates/office2003/office2003-kb973443-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/4/3/2/43297299-9FE1-4088-AED8-571F686D8A36/office2003-KB973443-FullFile-RUS.exe|updates/office2003/office2003-kb973443-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/0/5/4/05423613-1C2E-4F74-9113-8EC7FFDAC0B1/office2003-KB973443-FullFile-SVE.exe|updates/office2003/office2003-kb973443-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/C/1/1/C1197653-B3DD-4268-BC75-54FAF455F0E7/office2003-KB973443-FullFile-TRK.exe|updates/office2003/office2003-kb973443-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB973443-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office 2003 (KB975051)
:: MS09-073: Description of the security update for Office 2003: December 8, 2009
:: <http://support.microsoft.com/kb/975051>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=b4a4126c-b0b3-4db2-b6f5-0e67519c2a5f>
:: URL|ARA|http://download.microsoft.com/download/3/1/A/31A4A002-BA31-4B8D-9725-5FA8E690E65D/office2003-KB975051-FullFile-ARA.exe|updates/office2003/office2003-kb975051-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/9/3/A/93A05205-B3CF-4B0D-9103-78D1F60D6168/office2003-KB975051-FullFile-CSY.exe|updates/office2003/office2003-kb975051-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/2/3/C/23C89840-1789-4B54-999D-B3FC0C30CCA0/office2003-KB975051-FullFile-DAN.exe|updates/office2003/office2003-kb975051-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/6/F/0/6F00C18E-8860-414C-A8BA-DE64B6CAF13C/office2003-KB975051-FullFile-DEU.exe|updates/office2003/office2003-kb975051-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/5/E/E/5EEBDF76-7B7A-4460-8D34-94241240BBEC/office2003-KB975051-FullFile-ELL.exe|updates/office2003/office2003-kb975051-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/9/A/8/9A872E65-757E-495F-93E1-1605BEA0D43E/office2003-KB975051-FullFile-ENU.exe|updates/office2003/office2003-kb975051-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/6/9/2/692D8FF9-34B4-4BB4-A252-DFBD2B44CC1D/office2003-KB975051-FullFile-ESN.exe|updates/office2003/office2003-kb975051-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/4/5/8/458276B3-FB94-4E47-8AFC-6D9BC0087A62/office2003-KB975051-FullFile-FIN.exe|updates/office2003/office2003-kb975051-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/4/8/3/48395DF8-268D-4F95-96BB-19EB84A78F6E/office2003-KB975051-FullFile-FRA.exe|updates/office2003/office2003-kb975051-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/2/A/3/2A3A506E-AE67-4CFB-9BE6-692F55FBF29D/office2003-KB975051-FullFile-HEB.exe|updates/office2003/office2003-kb975051-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/D/0/E/D0E4F542-DE97-44E7-828E-28698A09520A/office2003-KB975051-FullFile-HUN.exe|updates/office2003/office2003-kb975051-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/2/3/9/239D2371-D5CE-4D52-9AF7-A7B416B9AA43/office2003-KB975051-FullFile-ITA.exe|updates/office2003/office2003-kb975051-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/2/6/8/268A0040-7CEE-4579-9BD8-C1AD3983B955/office2003-KB975051-FullFile-JPN.exe|updates/office2003/office2003-kb975051-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/8/B/0/8B015E36-8D96-43EB-8E12-EA048F1C9112/office2003-KB975051-FullFile-KOR.exe|updates/office2003/office2003-kb975051-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/A/0/0/A00FE63B-F499-4A13-932A-EA363F0F757F/office2003-KB975051-FullFile-NLD.exe|updates/office2003/office2003-kb975051-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/6/8/B/68B7706E-817F-42F4-AC92-F963B134B8FE/office2003-KB975051-FullFile-NOR.exe|updates/office2003/office2003-kb975051-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/8/5/8/85835AA6-04A3-4B3B-864E-69781CD611E4/office2003-KB975051-FullFile-PLK.exe|updates/office2003/office2003-kb975051-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/7/A/D/7ADF3A6B-353C-42D0-A9A9-45F6C232317F/office2003-KB975051-FullFile-PTB.exe|updates/office2003/office2003-kb975051-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/3/F/4/3F46BE01-DFF0-477B-A351-F5B5A0B94FF8/office2003-KB975051-FullFile-PTG.exe|updates/office2003/office2003-kb975051-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/4/E/A/4EA92185-CCC1-4698-BF7C-04E1AFFE5754/office2003-KB975051-FullFile-RUS.exe|updates/office2003/office2003-kb975051-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/6/5/1/6515AD55-CBF2-462E-B004-091C4D2B9BBA/office2003-KB975051-FullFile-SVE.exe|updates/office2003/office2003-kb975051-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/7/5/7/7570E7D9-4D68-4446-82E2-9FA38A8BA444/office2003-KB975051-FullFile-TRK.exe|updates/office2003/office2003-kb975051-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB975051-FullFile-%WINLANG%.exe /Q"

:: Download Security Update for Microsoft Office Outlook 2003 (KB973705) from Official Microsoft Download Center
:: <https://www.microsoft.com/en-us/download/details.aspx?id=11403>
:: URL|CSY|http://download.microsoft.com/download/4/0/F/40F59EE6-33D2-49F0-B581-B98F78497B0F/office2003-KB973705-FullFile-CSY.exe|updates/office2003/office2003-kb973705-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/C/C/C/CCCC998A-AD34-465D-AA81-A6FC46A2BAE3/office2003-KB973705-FullFile-DAN.exe|updates/office2003/office2003-kb973705-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/0/D/6/0D651A5B-B9C8-45CE-A3B7-3DB7EDF8B8CF/office2003-KB973705-FullFile-DEU.exe|updates/office2003/office2003-kb973705-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/F/9/1/F919BD2E-1642-412D-BE3E-3FE3459683E9/office2003-KB973705-FullFile-ELL.exe|updates/office2003/office2003-kb973705-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/4/5/2/4524AF4E-684F-4CAD-AEE5-2F8326865859/office2003-KB973705-FullFile-ENU.exe|updates/office2003/office2003-kb973705-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/F/C/1/FC1E1FA2-2482-4268-9AAE-1E37E9F7783C/office2003-KB973705-FullFile-ESN.exe|updates/office2003/office2003-kb973705-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/9/3/8/938BF2DE-FF8A-48FE-BEBF-287B58EDC47A/office2003-KB973705-FullFile-FIN.exe|updates/office2003/office2003-kb973705-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/8/8/1/881CB3E9-3E5F-44A1-9BE8-990774560B87/office2003-KB973705-FullFile-FRA.exe|updates/office2003/office2003-kb973705-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/8/7/F/87FF5E5D-C667-4F9E-9701-2B283B124E03/office2003-KB973705-FullFile-HUN.exe|updates/office2003/office2003-kb973705-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/8/7/3/8735100D-3977-4426-BE9A-909D7A59275F/office2003-KB973705-FullFile-ITA.exe|updates/office2003/office2003-kb973705-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/B/D/6/BD69FA11-4909-4209-92B7-389A5ADB7420/office2003-KB973705-FullFile-JPN.exe|updates/office2003/office2003-kb973705-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/6/B/9/6B96C176-3E1A-48D7-8668-9D44CD085E60/office2003-KB973705-FullFile-KOR.exe|updates/office2003/office2003-kb973705-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/5/B/8/5B8135CF-6B17-46DA-BB5D-35704A6FD55D/office2003-KB973705-FullFile-NLD.exe|updates/office2003/office2003-kb973705-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/8/E/D/8ED23238-B120-4B47-AB52-A24B0551B1D1/office2003-KB973705-FullFile-PLK.exe|updates/office2003/office2003-kb973705-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/9/A/B/9ABFD732-5CA7-43EC-B3F8-1E6304BFA2B8/office2003-KB973705-FullFile-PTB.exe|updates/office2003/office2003-kb973705-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/A/B/5/AB5FA1D1-4B2D-4330-9CA4-ECBDA136A480/office2003-KB973705-FullFile-PTG.exe|updates/office2003/office2003-kb973705-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/9/B/1/9B1BF990-07CF-42CC-8122-2F6073D6C60C/office2003-KB973705-FullFile-RUS.exe|updates/office2003/office2003-kb973705-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/D/8/8/D88124B0-7FF9-4291-867D-905EF93646BB/office2003-KB973705-FullFile-SVE.exe|updates/office2003/office2003-kb973705-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/E/0/B/E0B1132C-A31B-497D-B2E7-4406C0F9C54A/office2003-KB973705-FullFile-TRK.exe|updates/office2003/office2003-kb973705-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB973705-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft PowerPoint 2003 (KB957784)
:: MS09-017: Description of the security update for PowerPoint 2003: May 12, 2009
:: <http://support.microsoft.com/kb/957784>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=ccfa978b-3340-40db-a45d-c880ba36b106>
:: URL|ARA|http://download.microsoft.com/download/5/3/E/53E33A40-9ED9-45F0-B03E-A77D7CA6B3E6/office2003-KB957784-FullFile-ARA.exe|updates/office2003/office2003-kb957784-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/D/E/A/DEAE31B6-F659-416D-8635-FA8A7355BFA6/office2003-KB957784-FullFile-CSY.exe|updates/office2003/office2003-kb957784-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/6/C/C/6CC1A1C5-0D11-4373-A97A-ED982D2A5A27/office2003-KB957784-FullFile-DAN.exe|updates/office2003/office2003-kb957784-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/5/7/3/5730B63F-F5C6-499C-A625-20BC4EC9DCAC/office2003-KB957784-FullFile-DEU.exe|updates/office2003/office2003-kb957784-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/D/A/7/DA70F160-9B8E-4839-AF63-A63AF9EEED09/office2003-KB957784-FullFile-ELL.exe|updates/office2003/office2003-kb957784-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/4/E/2/4E21AFC4-32AB-4F9B-B247-9A800483A800/office2003-KB957784-FullFile-ENU-CSA.exe|updates/office2003/office2003-kb957784-fullfile-enu-csa.exe
:: URL|ESN|http://download.microsoft.com/download/8/8/B/88B06531-D302-44B4-82E8-D4E5A47E4AAE/office2003-KB957784-FullFile-ESN.exe|updates/office2003/office2003-kb957784-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/7/8/7/78749335-47B8-4E28-A6B4-B0984A66079A/office2003-KB957784-FullFile-FIN.exe|updates/office2003/office2003-kb957784-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/5/8/D/58D1EDF0-2A29-4612-8FF2-F49B2BDB6BDD/office2003-KB957784-FullFile-FRA.exe|updates/office2003/office2003-kb957784-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/C/F/9/CF90C4E9-CDDA-47F9-A14D-25A16B554A49/office2003-KB957784-FullFile-HEB.exe|updates/office2003/office2003-kb957784-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/6/6/2/662BEBF1-99EE-464C-B9FD-827541EF06B9/office2003-KB957784-FullFile-HUN.exe|updates/office2003/office2003-kb957784-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/9/7/B/97B97D56-D8B4-4DD6-8458-276103695B9C/office2003-KB957784-FullFile-ITA.exe|updates/office2003/office2003-kb957784-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/3/6/6/3660D5C5-3E64-4619-A1C6-886B4847787C/office2003-KB957784-FullFile-JPN.exe|updates/office2003/office2003-kb957784-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/3/3/2/3323766A-9B85-42A6-9746-00E39656F197/office2003-KB957784-FullFile-KOR.exe|updates/office2003/office2003-kb957784-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/E/F/5/EF584017-65BD-4CF4-B405-DA212706E9D7/office2003-KB957784-FullFile-NLD.exe|updates/office2003/office2003-kb957784-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/F/8/3/F83A4C18-C696-4F7D-9F9B-54704175D4D0/office2003-KB957784-FullFile-NOR.exe|updates/office2003/office2003-kb957784-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/E/8/B/E8BE3DA1-F5C0-410C-830D-0A5CA2D45766/office2003-KB957784-FullFile-PLK.exe|updates/office2003/office2003-kb957784-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/3/D/7/3D7F6C1B-87AA-425E-A8B7-5FC46E1D5532/office2003-KB957784-FullFile-PTB.exe|updates/office2003/office2003-kb957784-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/E/3/6/E36BD2FD-E484-4D6A-8A3D-69D7D2394AF8/office2003-KB957784-FullFile-PTG.exe|updates/office2003/office2003-kb957784-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/5/8/C/58C9C2E8-E3C3-494F-9BAE-E5D69F82D9D7/office2003-KB957784-FullFile-RUS.exe|updates/office2003/office2003-kb957784-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/5/4/4/544E3E3C-906B-41FC-90F7-CE584413800F/office2003-KB957784-FullFile-SVE.exe|updates/office2003/office2003-kb957784-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/6/3/4/63418A24-AFB3-46E3-8CAD-850F5A2CB4C6/office2003-KB957784-FullFile-TRK.exe|updates/office2003/office2003-kb957784-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB957784-FullFile-%WINLANG%.exe /Q"

:: Security Update for Office 2003 (KB954478)
:: MS08-052: Description of the security update for GDI+ for Office 2003: September 9, 2008
:: <http://support.microsoft.com/kb/954478>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=E9F8E309-D721-4BAB-B485-5EEDE8D49EB8>
:: URL|ARA|http://download.microsoft.com/download/c/e/a/cea5f261-d02a-4309-ae0a-f49d6d31a599/office2003-KB954478-FullFile-ARA.exe|updates/office2003/office2003-kb954478-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/5/1/e/51e92180-affc-4fec-9697-ec66a0913337/office2003-KB954478-FullFile-CSY.exe|updates/office2003/office2003-kb954478-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/d/5/a/d5a26f7c-f065-4fc1-8d38-df3d456be0d3/office2003-KB954478-FullFile-DAN.exe|updates/office2003/office2003-kb954478-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/6/e/e/6ee98bec-264f-4127-8218-85ed4822b430/office2003-KB954478-FullFile-DEU.exe|updates/office2003/office2003-kb954478-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/c/c/c/cccfc5b3-bdfd-4339-a8a5-953b2f5cb0a5/office2003-KB954478-FullFile-ELL.exe|updates/office2003/office2003-kb954478-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/8/d/2/8d27353b-65bd-4b70-91a9-d7f8801ca6cc/office2003-KB954478-FullFile-ENU.exe|updates/office2003/office2003-kb954478-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/1/3/3/13353f03-9ffb-437c-b811-493ba220538a/office2003-KB954478-FullFile-ESN.exe|updates/office2003/office2003-kb954478-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/a/8/c/a8cadbe1-ca9f-4ac6-819c-bb57e3883de4/office2003-KB954478-FullFile-FIN.exe|updates/office2003/office2003-kb954478-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/8/0/e/80eb4198-08ec-49d5-af40-e58d0a149ed2/office2003-KB954478-FullFile-FRA.exe|updates/office2003/office2003-kb954478-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/6/a/1/6a1d3630-8bbe-4ae6-8a75-69fc54eb4344/office2003-KB954478-FullFile-HEB.exe|updates/office2003/office2003-kb954478-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/4/0/3/403b1e35-d914-43ff-8f39-089994583a32/office2003-KB954478-FullFile-HUN.exe|updates/office2003/office2003-kb954478-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/a/b/d/abd9dcfb-84fa-4e2e-875a-565646b7a649/office2003-KB954478-FullFile-ITA.exe|updates/office2003/office2003-kb954478-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/a/d/d/adddfd86-1e9a-43f0-85a1-de8f353b2b53/office2003-KB954478-FullFile-JPN.exe|updates/office2003/office2003-kb954478-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/f/5/6/f5630514-4fd9-4aaf-bb70-ebfa6e31f874/office2003-KB954478-FullFile-KOR.exe|updates/office2003/office2003-kb954478-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/a/4/8/a48bfe14-2e35-4013-b63a-04c37be2357e/office2003-KB954478-FullFile-NLD.exe|updates/office2003/office2003-kb954478-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/c/2/0/c2029172-c315-43e9-81b3-ef626755fc6c/office2003-KB954478-FullFile-NOR.exe|updates/office2003/office2003-kb954478-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/a/d/7/ad7cf4d6-8c30-40e1-8839-250effb8e13a/office2003-KB954478-FullFile-PLK.exe|updates/office2003/office2003-kb954478-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/5/3/8/538a6825-bd29-4e60-a58e-2e687712fe60/office2003-KB954478-FullFile-PTB.exe|updates/office2003/office2003-kb954478-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/e/2/a/e2af0196-92a9-4472-b917-4c99428e006e/office2003-KB954478-FullFile-PTG.exe|updates/office2003/office2003-kb954478-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/b/b/8/bb8e1ada-9b29-4ffb-95dc-d7c19e43297e/office2003-KB954478-FullFile-RUS.exe|updates/office2003/office2003-kb954478-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/6/f/8/6f8ad490-e471-4fd9-92c2-5ad3834768ab/office2003-KB954478-FullFile-SVE.exe|updates/office2003/office2003-kb954478-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/8/0/7/8076e486-b955-44bd-ac8e-b3c66ba61f6d/office2003-KB954478-FullFile-TRK.exe|updates/office2003/office2003-kb954478-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB954478-FullFile-%WINLANG%.exe /Q"

:: Security Update for Access Snapshot Viewer 2003 (KB955439)
:: MS08-041: Description of the security update for Access Snapshot Viewer 2003: August 12, 2008
:: <http://support.microsoft.com/kb/955439>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=FD698517-A504-427D-9E5F-FDE8F102142C>
:: URL|ARA|http://download.microsoft.com/download/7/f/3/7f3a9102-5a59-4cc1-8592-d44555247b0c/office2003-KB955439-FullFile-ARA.exe|updates/office2003/office2003-kb955439-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/3/b/8/3b892b4b-8190-4fe0-9556-76b4ba655151/office2003-KB955439-FullFile-CSY.exe|updates/office2003/office2003-kb955439-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/5/8/f/58fd4088-d272-4175-9c51-9aedb8242378/office2003-KB955439-FullFile-DAN.exe|updates/office2003/office2003-kb955439-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/6/2/3/623039c9-ed87-4be2-8155-01d9958f07cb/office2003-KB955439-FullFile-DEU.exe|updates/office2003/office2003-kb955439-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/d/c/0/dc0225fc-229b-47b0-9a3b-e12cfdc105af/office2003-KB955439-FullFile-ELL.exe|updates/office2003/office2003-kb955439-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/a/d/8/ad811e99-07df-4aac-8a35-5cca66394572/office2003-KB955439-FullFile-ENU.exe|updates/office2003/office2003-kb955439-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/3/b/4/3b43ee4d-74dc-4da5-8a7d-9ba19f7da5f4/office2003-KB955439-FullFile-ESN.exe|updates/office2003/office2003-kb955439-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/4/e/b/4eb2167b-1f31-48bf-94ab-884d1c8b1562/office2003-KB955439-FullFile-FIN.exe|updates/office2003/office2003-kb955439-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/c/7/f/c7fe9079-fefa-4586-af72-749c0d985fab/office2003-KB955439-FullFile-FRA.exe|updates/office2003/office2003-kb955439-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/f/f/8/ff885744-d7de-460c-a26b-1152f4d1fe2d/office2003-KB955439-FullFile-HEB.exe|updates/office2003/office2003-kb955439-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/6/a/e/6ae0f244-6003-4153-b317-ef454532b97f/office2003-KB955439-FullFile-HUN.exe|updates/office2003/office2003-kb955439-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/a/b/4/ab43aacb-9101-45dd-9db2-ca947d6b5931/office2003-KB955439-FullFile-ITA.exe|updates/office2003/office2003-kb955439-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/c/c/7/cc79e0fb-e138-4d26-82fa-35b8f260073d/office2003-KB955439-FullFile-JPN.exe|updates/office2003/office2003-kb955439-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/2/6/2/2623617e-4425-4006-9316-a610d3c4d4cb/office2003-KB955439-FullFile-KOR.exe|updates/office2003/office2003-kb955439-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/7/d/5/7d5927c5-f795-4a60-94fb-318e3ea224cc/office2003-KB955439-FullFile-NLD.exe|updates/office2003/office2003-kb955439-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/b/2/e/b2e9c90a-6658-41b5-aa01-7a69181b33de/office2003-KB955439-FullFile-NOR.exe|updates/office2003/office2003-kb955439-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/9/0/b/90b1c621-fa29-4657-bc36-97141bd7124e/office2003-KB955439-FullFile-PLK.exe|updates/office2003/office2003-kb955439-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/8/4/2/842e60fd-8742-4810-9e38-fc9826909bb7/office2003-KB955439-FullFile-PTB.exe|updates/office2003/office2003-kb955439-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/b/f/8/bf861c50-410d-4c01-8d89-2ddea356229d/office2003-KB955439-FullFile-PTG.exe|updates/office2003/office2003-kb955439-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/b/7/a/b7a2b630-a117-4642-8cdb-51698de7d174/office2003-KB955439-FullFile-RUS.exe|updates/office2003/office2003-kb955439-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/a/6/f/a6f5dd3e-dec1-4383-86a2-d964dfdcab5d/office2003-KB955439-FullFile-SVE.exe|updates/office2003/office2003-kb955439-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/6/2/3/623caff8-b33e-46fc-b2c2-709c1f8c9faf/office2003-KB955439-FullFile-TRK.exe|updates/office2003/office2003-kb955439-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB955439-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office 2003 (KB953404)
:: MS08-055: Description of the security update for Office 2003: September 9, 2008
:: <http://support.microsoft.com/kb/953404>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=e670ad22-d3c1-41f7-ba30-6a67139feaa3>
:: URL|ARA|http://download.microsoft.com/download/f/4/2/f42411fc-3189-4ecb-8b43-fd946fdd501a/office2003-KB953404-FullFile-ARA.exe|updates/office2003/office2003-kb953404-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/a/3/d/a3d831b5-73fa-4c90-b2c1-bb553a673868/office2003-KB953404-FullFile-CSY.exe|updates/office2003/office2003-kb953404-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/c/9/a/c9a2d129-1e05-420c-ba1b-79584a02e12c/office2003-KB953404-FullFile-DAN.exe|updates/office2003/office2003-kb953404-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/3/9/f/39f3147a-4eb7-4780-8ce6-3c0f3bc012dc/office2003-KB953404-FullFile-DEU.exe|updates/office2003/office2003-kb953404-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/1/2/6/12612459-235b-41c6-be1e-6ed65574e44a/office2003-KB953404-FullFile-ELL.exe|updates/office2003/office2003-kb953404-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/e/7/a/e7aef1a9-7197-466a-a4ed-ecf59ad16739/office2003-KB953404-FullFile-ENU.exe|updates/office2003/office2003-kb953404-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/1/7/b/17b13fb0-5842-4488-92b2-500d61b01561/office2003-KB953404-FullFile-ESN.exe|updates/office2003/office2003-kb953404-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/1/6/5/16526af5-e6d0-4f26-aa30-03a1fea34625/office2003-KB953404-FullFile-FIN.exe|updates/office2003/office2003-kb953404-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/6/a/8/6a880a91-dd4d-4423-8fdb-66e774018d79/office2003-KB953404-FullFile-FRA.exe|updates/office2003/office2003-kb953404-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/7/d/b/7db17ad3-78df-4750-a4cb-5de050ed9d98/office2003-KB953404-FullFile-HEB.exe|updates/office2003/office2003-kb953404-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/9/9/a/99a27934-f495-42d2-a348-ec6f3c8e3498/office2003-KB953404-FullFile-HUN.exe|updates/office2003/office2003-kb953404-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/9/9/2/99248c9e-53d3-416e-9ed9-4255c2215849/office2003-KB953404-FullFile-ITA.exe|updates/office2003/office2003-kb953404-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/f/9/a/f9a49615-e7c8-4748-b578-a60bfcadbd05/office2003-KB953404-FullFile-JPN.exe|updates/office2003/office2003-kb953404-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/7/f/f/7ffe6ba3-589f-444e-861e-642506e3977f/office2003-KB953404-FullFile-KOR.exe|updates/office2003/office2003-kb953404-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/4/e/7/4e77095a-99d1-4644-a739-75cb557e6804/office2003-KB953404-FullFile-NLD.exe|updates/office2003/office2003-kb953404-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/5/a/a/5aa44890-a86d-40da-9541-7c4c71d93dcc/office2003-KB953404-FullFile-NOR.exe|updates/office2003/office2003-kb953404-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/a/5/8/a5816964-0e4b-4f23-845e-4c0a61e7df08/office2003-KB953404-FullFile-PLK.exe|updates/office2003/office2003-kb953404-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/9/a/b/9abd1212-ebf3-4453-98c3-bef7b9e2451f/office2003-KB953404-FullFile-PTB.exe|updates/office2003/office2003-kb953404-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/5/4/7/54763ff1-eff2-4e99-9ce2-099d8c7870cb/office2003-KB953404-FullFile-PTG.exe|updates/office2003/office2003-kb953404-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/2/f/d/2fd7a504-4c3e-4355-8694-2d432524486a/office2003-KB953404-FullFile-RUS.exe|updates/office2003/office2003-kb953404-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/a/1/8/a186b04f-52c2-4acc-b07f-50e6d317a110/office2003-KB953404-FullFile-SVE.exe|updates/office2003/office2003-kb953404-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/e/0/3/e03bec61-afe7-478c-be94-29f5a1193821/office2003-KB953404-FullFile-TRK.exe|updates/office2003/office2003-kb953404-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB953404-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office Word 2003 (KB950241)
:: MS08-026: Description of the security bulletin for Microsoft Office Word 2003: May 13, 2008
:: <http://support.microsoft.com/kb/950241>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=bc33d144-f917-47b8-961f-744ca847e14c>
:: URL|ARA|http://download.microsoft.com/download/0/d/5/0d575515-2f2b-4408-8ebe-08efac275f18/office2003-KB950241-FullFile-ARA.exe|updates/office2003/office2003-kb950241-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/0/3/7/0377dd7d-f87d-47a8-be97-e9dc6762f4bb/office2003-KB950241-FullFile-CSY.exe|updates/office2003/office2003-kb950241-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/4/3/5/4359be95-c546-4868-ae33-c0e612a9d488/office2003-KB950241-FullFile-DAN.exe|updates/office2003/office2003-kb950241-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/f/9/b/f9bad0a3-3e01-4359-979b-813b0c832c97/office2003-KB950241-FullFile-DEU.exe|updates/office2003/office2003-kb950241-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/c/c/9/cc920854-0976-4eef-abdf-bd40b2e14dbe/office2003-KB950241-FullFile-ELL.exe|updates/office2003/office2003-kb950241-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/5/7/3/573b9119-b136-44a4-99d1-dabf7c576904/office2003-KB950241-FullFile-ENU.exe|updates/office2003/office2003-kb950241-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/3/f/b/3fb28292-c533-4ec7-91c7-2bf5d4d57c6f/office2003-KB950241-FullFile-ESN.exe|updates/office2003/office2003-kb950241-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/7/5/4/75420f18-1b4b-4ee2-aaa3-84da83b20b20/office2003-KB950241-FullFile-FIN.exe|updates/office2003/office2003-kb950241-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/7/e/b/7eb67cdc-0c13-4980-8fe2-4aa5cafb5489/office2003-KB950241-FullFile-FRA.exe|updates/office2003/office2003-kb950241-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/c/c/f/ccf68fd1-da84-46fa-811b-bde74d1fd3ef/office2003-KB950241-FullFile-HEB.exe|updates/office2003/office2003-kb950241-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/1/d/0/1d067be4-9c12-4b7f-93e2-4842d9983504/office2003-KB950241-FullFile-HUN.exe|updates/office2003/office2003-kb950241-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/9/1/6/916e084f-5f3c-4654-9e59-e95d9c085664/office2003-KB950241-FullFile-ITA.exe|updates/office2003/office2003-kb950241-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/f/4/f/f4fcf615-1ab6-488e-b949-afe26648692d/office2003-KB950241-FullFile-JPN.exe|updates/office2003/office2003-kb950241-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/3/9/8/398b841c-cd1e-4c8c-8f03-14608921c800/office2003-KB950241-FullFile-KOR.exe|updates/office2003/office2003-kb950241-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/0/2/6/0265abef-db2c-4ce7-89d2-146e22410ccd/office2003-KB950241-FullFile-NLD.exe|updates/office2003/office2003-kb950241-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/1/2/4/1243fde3-6964-49b5-823e-49cf286f044a/office2003-KB950241-FullFile-NOR.exe|updates/office2003/office2003-kb950241-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/a/1/6/a16a4b3c-3ef3-40b9-91e3-6c47ba9d5d7b/office2003-KB950241-FullFile-PLK.exe|updates/office2003/office2003-kb950241-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/f/8/2/f82fb735-76fa-48f4-be61-b3f1ec8cc8b7/office2003-KB950241-FullFile-PTB.exe|updates/office2003/office2003-kb950241-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/a/d/6/ad620071-2cc3-4fe6-8268-13b74259f110/office2003-KB950241-FullFile-PTG.exe|updates/office2003/office2003-kb950241-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/2/4/a/24a142e4-6233-4c37-b31c-0206a879bc56/office2003-KB950241-FullFile-RUS.exe|updates/office2003/office2003-kb950241-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/b/4/4/b4411a9a-0ae4-4938-9202-60a0f5c6ab77/office2003-KB950241-FullFile-SVE.exe|updates/office2003/office2003-kb950241-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/0/9/d/09dfa458-0cab-42b0-8fbc-42860864af1d/office2003-KB950241-FullFile-TRK.exe|updates/office2003/office2003-kb950241-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB950241-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office Publisher 2003 (KB950213)
:: MS08-027: Description of the security bulletin for Publisher 2003: May 13, 2008
:: <http://support.microsoft.com/kb/950213>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=c18b060b-9828-4952-8e80-5328c0832d83>
:: URL|ARA|http://download.microsoft.com/download/d/b/4/db4e11c1-fd17-49fa-a85c-d8aa9d455db1/office2003-KB950213-FullFile-ARA.exe|updates/office2003/office2003-kb950213-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/1/6/3/1637a6f0-5742-4726-84f6-46ddedecde71/office2003-KB950213-FullFile-CSY.exe|updates/office2003/office2003-kb950213-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/3/0/8/3089c5bc-af1c-4c7a-8eff-24a71fb641bf/office2003-KB950213-FullFile-DAN.exe|updates/office2003/office2003-kb950213-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/d/9/2/d926f4b7-6323-42b3-9cae-67da1a451204/office2003-KB950213-FullFile-DEU.exe|updates/office2003/office2003-kb950213-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/1/0/7/10715690-4cba-4d6d-87ed-825e82a94aae/office2003-KB950213-FullFile-ELL.exe|updates/office2003/office2003-kb950213-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/a/5/f/a5fd0289-33ea-4663-827a-56680f682831/office2003-KB950213-FullFile-ENU.exe|updates/office2003/office2003-kb950213-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/e/f/a/efab0dfa-87a3-4a5c-bab2-b16535c61d78/office2003-KB950213-FullFile-ESN.exe|updates/office2003/office2003-kb950213-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/d/c/9/dc9ce86a-880b-4083-9c27-28e8a786639e/office2003-KB950213-FullFile-FIN.exe|updates/office2003/office2003-kb950213-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/8/7/1/871c153b-f743-4e25-8257-ad3454c41706/office2003-KB950213-FullFile-FRA.exe|updates/office2003/office2003-kb950213-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/5/2/d/52d02596-5b74-4403-9385-fc9aa06a64b7/office2003-KB950213-FullFile-HEB.exe|updates/office2003/office2003-kb950213-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/5/b/d/5bd95357-e681-4e70-ac3f-2a2b0da3a3bc/office2003-KB950213-FullFile-HUN.exe|updates/office2003/office2003-kb950213-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/0/c/4/0c45b6e5-22dc-4717-ba32-b88c406576dd/office2003-KB950213-FullFile-ITA.exe|updates/office2003/office2003-kb950213-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/2/a/b/2abe626c-8163-4cd1-96e6-5c7ce1c9540f/office2003-KB950213-FullFile-JPN.exe|updates/office2003/office2003-kb950213-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/9/6/7/967d4a84-5a07-4aa4-b37d-e52a848d7f3e/office2003-KB950213-FullFile-KOR.exe|updates/office2003/office2003-kb950213-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/3/8/6/38630ad7-edf6-480b-99fe-e2f136a4689e/office2003-KB950213-FullFile-NLD.exe|updates/office2003/office2003-kb950213-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/a/d/b/adb3aa36-3777-425f-87c7-656c2bf591b4/office2003-KB950213-FullFile-NOR.exe|updates/office2003/office2003-kb950213-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/5/b/a/5bafad55-1e60-4cbd-940c-e1548f0146ff/office2003-KB950213-FullFile-PLK.exe|updates/office2003/office2003-kb950213-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/2/b/6/2b6e2bb7-ea0b-4513-84dc-cfc6096b5da7/office2003-KB950213-FullFile-PTB.exe|updates/office2003/office2003-kb950213-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/b/3/f/b3fc4122-81b4-4877-8bfa-64f9f60ab4ae/office2003-KB950213-FullFile-PTG.exe|updates/office2003/office2003-kb950213-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/f/9/8/f98579c5-9047-41b4-b234-f1eb30e46a2f/office2003-KB950213-FullFile-RUS.exe|updates/office2003/office2003-kb950213-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/5/e/8/5e8e3fcc-ad17-40a4-9903-500bddad0053/office2003-KB950213-FullFile-SVE.exe|updates/office2003/office2003-kb950213-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/c/5/8/c582d5d1-96d1-4449-aadd-61c44687bd44/office2003-KB950213-FullFile-TRK.exe|updates/office2003/office2003-kb950213-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB950213-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office PowerPoint 2003 (KB948988)
:: MS08-051: Description of the security update for PowerPoint 2003: August 12, 2008
:: <http://support.microsoft.com/kb/948988>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=7A7C21F0-5E0E-4DEE-9710-1CE3D565913F>
:: URL|ARA|http://download.microsoft.com/download/4/8/6/486e2373-45a4-49a7-ab7d-1c98405d6c7f/office2003-KB948988-FullFile-ARA.exe|updates/office2003/office2003-kb948988-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/c/c/6/cc659c41-e24c-4704-ae4f-d479959be9ab/office2003-KB948988-FullFile-CSY.exe|updates/office2003/office2003-kb948988-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/4/3/5/435ffd17-ffcd-4f8a-bcfb-7c36744593f9/office2003-KB948988-FullFile-DAN.exe|updates/office2003/office2003-kb948988-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/f/1/8/f1868075-b066-440f-8295-ca471bdcfd26/office2003-KB948988-FullFile-DEU.exe|updates/office2003/office2003-kb948988-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/a/b/f/abfa99b0-748f-475e-9ac4-813f981353dc/office2003-KB948988-FullFile-ELL.exe|updates/office2003/office2003-kb948988-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/9/3/a/93a12e34-76cb-4fb7-9331-3cea96495b81/office2003-KB948988-FullFile-ENU.exe|updates/office2003/office2003-kb948988-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/4/b/c/4bc4e875-0dd0-466f-9c34-8a15b07ed764/office2003-KB948988-FullFile-ESN.exe|updates/office2003/office2003-kb948988-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/1/8/8/188b8ab4-a9a7-4f02-a73b-a5c73b88f576/office2003-KB948988-FullFile-FIN.exe|updates/office2003/office2003-kb948988-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/2/7/f/27f3d3c1-ae7d-4245-b8f1-5c7f0ff4c2e0/office2003-KB948988-FullFile-FRA.exe|updates/office2003/office2003-kb948988-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/3/4/2/342c5bc2-d6e9-47b2-8628-240d49ae48f1/office2003-KB948988-FullFile-HEB.exe|updates/office2003/office2003-kb948988-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/9/9/5/99547c77-3161-4e96-bd88-0e50b9d61a16/office2003-KB948988-FullFile-HUN.exe|updates/office2003/office2003-kb948988-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/c/4/e/c4e5c4cd-1f2e-488a-a7db-ec2b3f90cccf/office2003-KB948988-FullFile-ITA.exe|updates/office2003/office2003-kb948988-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/a/c/6/ac62977d-5aef-4573-a07d-ae2f405f4796/office2003-KB948988-FullFile-JPN.exe|updates/office2003/office2003-kb948988-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/5/d/1/5d1e25dc-d031-4516-9b1f-7190d467ecda/office2003-KB948988-FullFile-KOR.exe|updates/office2003/office2003-kb948988-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/c/c/3/cc3bb20d-3901-4a42-8e4a-8a495d7d5bab/office2003-KB948988-FullFile-NLD.exe|updates/office2003/office2003-kb948988-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/2/2/d/22d4ecea-3b65-4217-b668-4498e5d8b0da/office2003-KB948988-FullFile-NOR.exe|updates/office2003/office2003-kb948988-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/c/1/8/c1882e43-de9c-491f-87fc-ea3fbf7765cc/office2003-KB948988-FullFile-PLK.exe|updates/office2003/office2003-kb948988-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/9/7/e/97e2fa63-4c95-426e-ae6d-5fb4ce384daf/office2003-KB948988-FullFile-PTB.exe|updates/office2003/office2003-kb948988-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/7/4/c/74c8b816-9250-43e3-8a65-b4f5183f8b66/office2003-KB948988-FullFile-PTG.exe|updates/office2003/office2003-kb948988-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/a/6/2/a62a1bdf-811d-48eb-b93c-802e711a2b46/office2003-KB948988-FullFile-RUS.exe|updates/office2003/office2003-kb948988-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/1/8/1/181697c8-d183-4f24-a65f-8b0074671ada/office2003-KB948988-FullFile-SVE.exe|updates/office2003/office2003-kb948988-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/1/d/4/1d4592d6-3acb-4c7e-910a-4932d1ba623c/office2003-KB948988-FullFile-TRK.exe|updates/office2003/office2003-kb948988-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB948988-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office Web Components (KB947319)
:: MS09-043: Description of the security update for Office 2003 Web Components and Office XP Web Components in Office 2003: August 11, 2009
:: <http://support.microsoft.com/kb/947319>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=95c94c9a-6aca-42fb-9679-3234f06c72f7>
:: URL|ARA|http://download.microsoft.com/download/F/9/1/F9130AA7-B60D-4CBB-8E64-695F831EB467/office2003-KB947319-FullFile-ARA.exe|updates/office2003/office2003-kb947319-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/E/8/4/E84C7BF6-ACDC-400C-A73D-95D3EE7E031C/office2003-KB947319-FullFile-CSY.exe|updates/office2003/office2003-kb947319-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/4/B/7/4B70BC6E-9297-47C8-ABEE-244BD3DDC6C6/office2003-KB947319-FullFile-DAN.exe|updates/office2003/office2003-kb947319-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/B/5/5/B55D6C63-8A40-4B5B-9BFD-1B3DD06BA771/office2003-KB947319-FullFile-DEU.exe|updates/office2003/office2003-kb947319-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/E/6/7/E6768F1B-9FE6-4A58-8342-88E376D82912/office2003-KB947319-FullFile-ELL.exe|updates/office2003/office2003-kb947319-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/8/3/5/83574009-9F5C-4EBE-AE78-9467810FAD19/office2003-KB947319-FullFile-ENU.exe|updates/office2003/office2003-kb947319-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/F/4/D/F4D46C21-2F57-4092-BB00-C5306CF9A5D9/office2003-KB947319-FullFile-ESN.exe|updates/office2003/office2003-kb947319-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/E/A/2/EA222EE6-48E5-473C-B0A4-A37F9D9AA8FC/office2003-KB947319-FullFile-FIN.exe|updates/office2003/office2003-kb947319-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/5/F/8/5F862447-B0D4-437C-8458-2BC4083419B1/office2003-KB947319-FullFile-FRA.exe|updates/office2003/office2003-kb947319-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/8/3/B/83B5DEC7-6A17-4FE6-BFF0-BE3A3C30CBCD/office2003-KB947319-FullFile-HEB.exe|updates/office2003/office2003-kb947319-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/5/A/1/5A1902F6-3946-4C1D-8761-9C7D5B2850EA/office2003-KB947319-FullFile-HUN.exe|updates/office2003/office2003-kb947319-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/F/F/5/FF5C3F94-276E-44FC-97A4-AC55B61BCEC1/office2003-KB947319-FullFile-ITA.exe|updates/office2003/office2003-kb947319-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/3/B/3/3B3BB3D0-FBFA-4ECC-9CDA-552D67BFF7DA/office2003-KB947319-FullFile-JPN.exe|updates/office2003/office2003-kb947319-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/D/4/9/D49758B2-23B7-4603-9960-E1A18FA57ACF/office2003-KB947319-FullFile-KOR.exe|updates/office2003/office2003-kb947319-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/0/3/C/03C73740-2931-49CB-9724-6A6ED0646BD3/office2003-KB947319-FullFile-NLD.exe|updates/office2003/office2003-kb947319-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/3/4/C/34CCED31-9036-4BC2-9F40-7AB805D5DDCD/office2003-KB947319-FullFile-NOR.exe|updates/office2003/office2003-kb947319-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/4/F/2/4F2EF0B8-EAFB-4B0F-BB06-13F5FF2F3469/office2003-KB947319-FullFile-PLK.exe|updates/office2003/office2003-kb947319-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/F/2/B/F2B38F64-F785-42B2-9BCC-87033977AC37/office2003-KB947319-FullFile-PTB.exe|updates/office2003/office2003-kb947319-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/D/D/E/DDEA2145-DF77-4DD3-A5D7-A8DFF9F26FD6/office2003-KB947319-FullFile-PTG.exe|updates/office2003/office2003-kb947319-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/2/F/3/2F36B14F-F1B9-48BA-B2E1-D15CBE70B5A0/office2003-KB947319-FullFile-RUS.exe|updates/office2003/office2003-kb947319-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/6/A/8/6A8B140C-C213-4378-977F-E7F9907F724D/office2003-KB947319-FullFile-SVE.exe|updates/office2003/office2003-kb947319-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/A/2/0/A201EE48-6D0A-47CB-9BDA-9A4400876BDC/office2003-KB947319-FullFile-TRK.exe|updates/office2003/office2003-kb947319-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB947319-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Office 2003 (KB945185)
:: MS08-013: Description of the security update for Office 2003: February 12, 2008
:: <http://support.microsoft.com/kb/945185>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=F4AC0F34-4604-4BBE-9669-01DB645041CA>
:: URL|ARA|http://download.microsoft.com/download/9/6/a/96a83886-df02-41c0-8da5-2dea6109494b/office2003-KB945185-FullFile-ARA.exe|updates/office2003/office2003-kb945185-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/7/5/7/7575bb36-1eed-4b80-908e-9484da842c37/office2003-KB945185-FullFile-CSY.exe|updates/office2003/office2003-kb945185-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/a/3/8/a3873b67-7ac2-4664-bc75-cb21a9653747/office2003-KB945185-FullFile-DAN.exe|updates/office2003/office2003-kb945185-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/d/c/6/dc6013ef-6e38-4b9e-9cbb-2fe81844210f/office2003-KB945185-FullFile-DEU.exe|updates/office2003/office2003-kb945185-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/a/1/a/a1ade5c0-5b9a-44d7-857d-0bb3489bcf8c/office2003-KB945185-FullFile-ELL.exe|updates/office2003/office2003-kb945185-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/4/f/1/4f1d780c-36c9-45f4-99f1-801a5327a3de/office2003-KB945185-FullFile-ENU.exe|updates/office2003/office2003-kb945185-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/6/4/b/64b34195-0a64-48eb-84ae-e22d94f0416e/office2003-KB945185-FullFile-ESN.exe|updates/office2003/office2003-kb945185-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/e/c/a/eca32aa0-856b-42bb-a1b7-91375e24e8dc/office2003-KB945185-FullFile-FIN.exe|updates/office2003/office2003-kb945185-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/8/d/8/8d81649b-45c1-4820-a2dc-a47f1bde8eb3/office2003-KB945185-FullFile-FRA.exe|updates/office2003/office2003-kb945185-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/b/2/f/b2f5d7ec-446c-4b56-81c2-a1d4a10dfa89/office2003-KB945185-FullFile-HEB.exe|updates/office2003/office2003-kb945185-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/7/1/f/71f4381e-78f3-4210-8c77-bbc2a3dfd907/office2003-KB945185-FullFile-HUN.exe|updates/office2003/office2003-kb945185-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/8/f/9/8f912a1c-9d5c-4bc3-b8b7-48800b611fbe/office2003-KB945185-FullFile-ITA.exe|updates/office2003/office2003-kb945185-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/9/6/b/96bd9710-9c87-4260-ad2a-ea248098010c/office2003-KB945185-FullFile-JPN.exe|updates/office2003/office2003-kb945185-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/5/8/8/588f7b11-4d66-48b3-8bdc-8880fddddcb2/office2003-KB945185-FullFile-KOR.exe|updates/office2003/office2003-kb945185-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/3/5/c/35c5439e-d103-4955-9e76-18f6411c13e3/office2003-KB945185-FullFile-NLD.exe|updates/office2003/office2003-kb945185-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/b/b/d/bbda2772-a92c-4702-986c-7fed6efd9409/office2003-KB945185-FullFile-NOR.exe|updates/office2003/office2003-kb945185-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/6/9/8/698cffbc-34a2-43a8-9f4d-6643c5ee4876/office2003-KB945185-FullFile-PLK.exe|updates/office2003/office2003-kb945185-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/5/f/e/5fe97351-f576-4185-93e9-d7e45a6db89b/office2003-KB945185-FullFile-PTB.exe|updates/office2003/office2003-kb945185-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/1/1/3/113e6b1b-1c04-484a-ab91-eca55dc36ef8/office2003-KB945185-FullFile-PTG.exe|updates/office2003/office2003-kb945185-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/6/9/1/6914841b-f911-4e65-bb32-cb6ee3320236/office2003-KB945185-FullFile-RUS.exe|updates/office2003/office2003-kb945185-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/b/8/3/b83af37d-a931-4b2f-8161-6639345e38e4/office2003-KB945185-FullFile-SVE.exe|updates/office2003/office2003-kb945185-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/7/d/4/7d4971ef-ed46-4dd4-88e1-dcde7cd30d41/office2003-KB945185-FullFile-TRK.exe|updates/office2003/office2003-kb945185-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB945185-FullFile-%WINLANG%.exe /Q"

:: Security Update for Microsoft Works Suite 2005 (KB943973)
:: MS08-011: Description of the security update for Microsoft Works File Converter: February 12, 2008
:: <http://support.microsoft.com/kb/943973>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=30C9C3FE-FB85-43D9-BBC3-0B30D3A20286>
:: URL|ARA|http://download.microsoft.com/download/4/3/6/43622890-96a7-430b-aa24-2b118dc8f017/office2003-KB943973-FullFile-ARA.exe|updates/office2003/office2003-kb943973-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/4/9/0/49044c2b-00f6-4b71-ac93-1181ecb05e2b/office2003-KB943973-FullFile-CSY.exe|updates/office2003/office2003-kb943973-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/a/f/a/afa96150-a2c6-4320-a292-fc540f0fde25/office2003-KB943973-FullFile-DAN.exe|updates/office2003/office2003-kb943973-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/b/b/e/bbe80c61-de72-4b19-a05f-26c3a7cd61d7/office2003-KB943973-FullFile-DEU.exe|updates/office2003/office2003-kb943973-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/6/0/f/60fe68e1-3b87-4aa7-a4b1-85741a941b47/office2003-KB943973-FullFile-ELL.exe|updates/office2003/office2003-kb943973-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/2/3/3/23383749-c05a-4148-94f7-e1951095f429/office2003-KB943973-FullFile-ENU.exe|updates/office2003/office2003-kb943973-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/9/2/b/92b11c5a-7d32-4b0f-991e-8dc5cad4b75b/office2003-KB943973-FullFile-ESN.exe|updates/office2003/office2003-kb943973-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/9/b/e/9be6a6ff-e47e-4096-a255-685cdd160a13/office2003-KB943973-FullFile-FIN.exe|updates/office2003/office2003-kb943973-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/3/d/a/3da620da-a9cf-4cd2-b54a-6edd9687404f/office2003-KB943973-FullFile-FRA.exe|updates/office2003/office2003-kb943973-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/7/1/2/7126811d-fb64-4605-8e23-9167afd4b394/office2003-KB943973-FullFile-HEB.exe|updates/office2003/office2003-kb943973-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/5/0/5/50512d11-bb0c-4f97-9c67-412116a88f65/office2003-KB943973-FullFile-HUN.exe|updates/office2003/office2003-kb943973-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/6/6/6/666792d6-09d9-49e5-ad5d-9a87d014dd82/office2003-KB943973-FullFile-ITA.exe|updates/office2003/office2003-kb943973-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/c/2/9/c29d1806-5731-4c78-b39e-54e284104240/office2003-KB943973-FullFile-JPN.exe|updates/office2003/office2003-kb943973-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/5/5/7/55755e17-bb2b-4561-bbb8-8c785e4144d7/office2003-KB943973-FullFile-KOR.exe|updates/office2003/office2003-kb943973-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/b/6/9/b6945aad-fc9b-4ae2-8d6a-05d080b81be8/office2003-KB943973-FullFile-NLD.exe|updates/office2003/office2003-kb943973-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/f/3/6/f363ad98-dcc3-4324-8812-974a50cba140/office2003-KB943973-FullFile-NOR.exe|updates/office2003/office2003-kb943973-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/a/b/6/ab66765b-4e33-4d64-a8d1-4cea4b1a899a/office2003-KB943973-FullFile-PLK.exe|updates/office2003/office2003-kb943973-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/7/2/4/7240d5c9-a9b9-44ca-8c3b-b73093c54dc9/office2003-KB943973-FullFile-PTB.exe|updates/office2003/office2003-kb943973-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/3/8/d/38d34b9f-b3f9-44de-9fe0-1d9033b08d4a/office2003-KB943973-FullFile-PTG.exe|updates/office2003/office2003-kb943973-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/c/4/5/c45ed0b2-cd1f-4d45-89c2-d4a08a7bfc00/office2003-KB943973-FullFile-RUS.exe|updates/office2003/office2003-kb943973-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/3/8/0/3805c2a4-d4ab-4249-8f3f-f236687e431d/office2003-KB943973-FullFile-SVE.exe|updates/office2003/office2003-kb943973-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/5/a/2/5a258ebb-0120-4b3e-b7c3-36c6ff62b1df/office2003-KB943973-FullFile-TRK.exe|updates/office2003/office2003-kb943973-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB943973-FullFile-%WINLANG%.exe /Q"

:: Office 2003 Service Pack 3 (SP3)
:: Description of Office 2003 Service Pack 3
:: <http://support.microsoft.com/kb/923618>
:: <http://www.microsoft.com/downloads/details.aspx?familyid=e25b7049-3e13-433b-b9d2-5e3c1132f206>
:: URL|ARA|http://download.microsoft.com/download/a/b/d/abd76d1e-37a0-47fd-ae92-03883d8cfaf1/Office2003SP3-KB923618-FullFile-ARA.exe|updates/office2003/office2003sp3-kb923618-fullfile-ara.exe
:: URL|CSY|http://download.microsoft.com/download/0/2/2/022cb8a9-b8f5-472c-897b-a20605d40ce3/Office2003SP3-KB923618-FullFile-CSY.exe|updates/office2003/office2003sp3-kb923618-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/9/8/6/9868b31a-1f7d-4378-a617-efaba12ca028/Office2003SP3-KB923618-FullFile-DAN.exe|updates/office2003/office2003sp3-kb923618-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/d/d/7/dd7c2bd3-c6fc-4b54-a1c1-a1164b7f1100/Office2003SP3-KB923618-FullFile-DEU.exe|updates/office2003/office2003sp3-kb923618-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/9/c/5/9c57c8d7-b37f-4528-b976-e237f815e325/Office2003SP3-KB923618-FullFile-ELL.exe|updates/office2003/office2003sp3-kb923618-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/7/7/8/778493c2-ace3-44c5-8bc3-d102da80e0f6/Office2003SP3-KB923618-FullFile-ENU.exe|updates/office2003/office2003sp3-kb923618-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/b/3/b/b3bd1060-0b3c-442e-a38c-fc81ba9fde9f/Office2003SP3-KB923618-FullFile-ESN.exe|updates/office2003/office2003sp3-kb923618-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/7/3/a/73a8da2d-48d0-4c65-80fc-24009358a230/Office2003SP3-KB923618-FullFile-FIN.exe|updates/office2003/office2003sp3-kb923618-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/7/c/4/7c461cee-9688-4ea1-91c1-d11e6639d949/Office2003SP3-KB923618-FullFile-FRA.exe|updates/office2003/office2003sp3-kb923618-fullfile-fra.exe
:: URL|HEB|http://download.microsoft.com/download/7/7/f/77f4cbeb-eed0-496f-a318-46e9fa5e4ea6/Office2003SP3-KB923618-FullFile-HEB.exe|updates/office2003/office2003sp3-kb923618-fullfile-heb.exe
:: URL|HUN|http://download.microsoft.com/download/1/e/0/1e0dda50-9ccc-4bbf-b141-5694d3f2dc02/Office2003SP3-KB923618-FullFile-HUN.exe|updates/office2003/office2003sp3-kb923618-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/f/b/8/fb8bb4aa-d26d-45ea-979b-c24c6fba3cf4/Office2003SP3-KB923618-FullFile-ITA.exe|updates/office2003/office2003sp3-kb923618-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/8/7/1/871b3beb-826b-493c-984d-1a4f22dd9760/Office2003SP3-KB923618-FullFile-JPN.exe|updates/office2003/office2003sp3-kb923618-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/0/2/5/025ec5c6-c1c9-4316-84ca-9cd12060910e/Office2003SP3-KB923618-FullFile-KOR.exe|updates/office2003/office2003sp3-kb923618-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/7/4/0/7405b0b0-9c6d-46a2-9edd-1d29eff1a420/Office2003SP3-KB923618-FullFile-NLD.exe|updates/office2003/office2003sp3-kb923618-fullfile-nld.exe
:: URL|NOR|http://download.microsoft.com/download/1/8/d/18d1c9ed-cab4-4b9b-9ed2-04851739ded5/Office2003SP3-KB923618-FullFile-NOR.exe|updates/office2003/office2003sp3-kb923618-fullfile-nor.exe
:: URL|PLK|http://download.microsoft.com/download/6/d/d/6ddd6b02-599f-45ae-9cab-6ef265ff6109/Office2003SP3-KB923618-FullFile-PLK.exe|updates/office2003/office2003sp3-kb923618-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/6/2/c/62cb65b9-b860-4227-ab3b-1bd174881701/Office2003SP3-KB923618-FullFile-PTB.exe|updates/office2003/office2003sp3-kb923618-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/0/0/8/008fc717-c06f-4046-9741-3289a4d54832/Office2003SP3-KB923618-FullFile-PTG.exe|updates/office2003/office2003sp3-kb923618-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/e/7/5/e75b369b-04bf-482b-8807-b2e4edac4386/Office2003SP3-KB923618-FullFile-RUS.exe|updates/office2003/office2003sp3-kb923618-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/8/6/c/86c435d8-803d-497c-8dc6-947871d3e682/Office2003SP3-KB923618-FullFile-SVE.exe|updates/office2003/office2003sp3-kb923618-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/0/8/c/08ca462c-3b03-4cf4-a3ad-bbeaedb7dea8/Office2003SP3-KB923618-FullFile-TRK.exe|updates/office2003/office2003sp3-kb923618-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\Office2003SP3-KB923618-FullFile-%WINLANG%.exe /r:n /q /c:\"msiexec /qb /l* %SystemDrive%\netinst\logs\kb923618.txt /p MAINSP3.msp REBOOT=ReallySuppress\""

:: Edit install/site/keys.bat and provide your license key
call %Z%\site\keys.bat
if %office2k3%==xxxxxxx goto nokey

todo.pl ".reboot-on 194 %Z%\packages\office2003\setup.exe /qb /l* %SystemDrive%\netinst\logs\office2003.txt ADDLOCAL=ALL NOUSERNAME=1 PIDKEY=%office2k3%"

if errorlevel 1 exit 1
exit 0

:nokey
@echo *** Unable to get Office license key
@echo ***  (did you forget to edit %Z%\site\keys.bat?)
exit 2


:: Security Update for Microsoft Office Outlook 2003 (KB980373)
:: <https://www.microsoft.com/en-us/download/details.aspx?id=12701>
:: URL|CSY|http://download.microsoft.com/download/F/2/F/F2F7EE1B-6DFA-4AC3-A04F-D4F64282E374/office2003-KB980373-FullFile-CSY.exe|updates/office2003/office2003-kb980373-fullfile-csy.exe
:: URL|DAN|http://download.microsoft.com/download/F/F/9/FF9C5153-D5EB-474E-9FEF-661C94B1B403/office2003-KB980373-FullFile-DAN.exe|updates/office2003/office2003-kb980373-fullfile-dan.exe
:: URL|DEU|http://download.microsoft.com/download/7/D/7/7D7295D3-9F2C-48AC-9707-EB12F69617DF/office2003-KB980373-FullFile-DEU.exe|updates/office2003/office2003-kb980373-fullfile-deu.exe
:: URL|ELL|http://download.microsoft.com/download/C/3/6/C36DABC0-FE19-4633-8DB7-7ACBC5892221/office2003-KB980373-FullFile-ELL.exe|updates/office2003/office2003-kb980373-fullfile-ell.exe
:: URL|ENU|http://download.microsoft.com/download/C/A/6/CA6D40D6-547C-489A-83A0-AE0EA8DE457C/office2003-KB980373-FullFile-ENU.exe|updates/office2003/office2003-kb980373-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/0/0/2/0021888B-DC0C-4131-BB4C-C7F68CC56D92/office2003-KB980373-FullFile-ESN.exe|updates/office2003/office2003-kb980373-fullfile-esn.exe
:: URL|FIN|http://download.microsoft.com/download/E/C/C/ECC1A9CE-F905-4B4F-8ACE-8A9569171A88/office2003-KB980373-FullFile-FIN.exe|updates/office2003/office2003-kb980373-fullfile-fin.exe
:: URL|FRA|http://download.microsoft.com/download/B/A/A/BAA57E7F-B6A1-48C1-87CD-2EA9138302BC/office2003-KB980373-FullFile-FRA.exe|updates/office2003/office2003-kb980373-fullfile-fra.exe
:: URL|HUN|http://download.microsoft.com/download/2/4/3/2439D02B-2575-46F4-8F5D-38AABDD04AE0/office2003-KB980373-FullFile-HUN.exe|updates/office2003/office2003-kb980373-fullfile-hun.exe
:: URL|ITA|http://download.microsoft.com/download/F/3/2/F32D3B4A-FDC8-4E94-806D-F5C0BCB73890/office2003-KB980373-FullFile-ITA.exe|updates/office2003/office2003-kb980373-fullfile-ita.exe
:: URL|JPN|http://download.microsoft.com/download/2/A/0/2A060013-E91A-4CF4-A355-2AF0356211B5/office2003-KB980373-FullFile-JPN.exe|updates/office2003/office2003-kb980373-fullfile-jpn.exe
:: URL|KOR|http://download.microsoft.com/download/E/6/1/E615C15A-E6F3-4129-9DAA-8DE4B240984C/office2003-KB980373-FullFile-KOR.exe|updates/office2003/office2003-kb980373-fullfile-kor.exe
:: URL|NLD|http://download.microsoft.com/download/B/A/1/BA196572-FB12-4CC8-A904-A83C9D00466A/office2003-KB980373-FullFile-NLD.exe|updates/office2003/office2003-kb980373-fullfile-nld.exe
:: URL|PLK|http://download.microsoft.com/download/B/B/A/BBA9E37A-1E44-445D-A0E3-75A6600AD57C/office2003-KB980373-FullFile-PLK.exe|updates/office2003/office2003-kb980373-fullfile-plk.exe
:: URL|PTB|http://download.microsoft.com/download/C/D/D/CDD9A305-D7F9-4A74-891D-0C1EA2593296/office2003-KB980373-FullFile-PTB.exe|updates/office2003/office2003-kb980373-fullfile-ptb.exe
:: URL|PTG|http://download.microsoft.com/download/8/7/C/87C2E8EC-450A-4830-9F69-518BE6FF8CE6/office2003-KB980373-FullFile-PTG.exe|updates/office2003/office2003-kb980373-fullfile-ptg.exe
:: URL|RUS|http://download.microsoft.com/download/3/B/7/3B7D6D3C-4FF7-432D-83C8-D303935CF87A/office2003-KB980373-FullFile-RUS.exe|updates/office2003/office2003-kb980373-fullfile-rus.exe
:: URL|SVE|http://download.microsoft.com/download/E/F/8/EF81AD8C-8E8E-41B8-A359-4CCCA3E864A8/office2003-KB980373-FullFile-SVE.exe|updates/office2003/office2003-kb980373-fullfile-sve.exe
:: URL|TRK|http://download.microsoft.com/download/8/A/A/8AA57128-D4D8-4258-B3DA-0231CA470209/office2003-KB980373-FullFile-TRK.exe|updates/office2003/office2003-kb980373-fullfile-trk.exe
todo.pl ".reboot-on 194 %Z%\updates\office2003\office2003-KB980373-FullFile-%WINLANG%.exe /Q"

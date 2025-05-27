:: OPTIONAL: Install Microsoft Remote Desktop Client

:: Remote Desktop Connection for Windows [6.0.2600.0]
:: <http://www.microsoft.com/downloads/details.aspx?FamilyID=80111f21-d48d-426e-96c2-08aa2bd23a49>
:: No Download found for ARA.
:: URL|CSY|http://download.microsoft.com/download/9/e/f/9ef7a8cb-0033-456c-913c-8f0ce9eb2f55/msrdpcli.exe|packages/rdpclient/csy/msrdpcli.exe
:: No Download found for DAN.
:: URL|DEU|http://download.microsoft.com/download/1/6/a/16a9c57d-d6b4-4cc8-84d5-e9f37c54057a/msrdpcli.exe|packages/rdpclient/deu/msrdpcli.exe
:: No Download found for ELL.
:: URL|ENU|http://download.microsoft.com/download/8/e/8/8e88f947-3b95-49b8-a76d-b647bb86e4b4/msrdpcli.exe|packages/rdpclient/enu/msrdpcli.exe
:: URL|ESN|http://download.microsoft.com/download/5/7/4/5743190e-abac-404f-83fd-84281bea1306/msrdpcli.exe|packages/rdpclient/esn/msrdpcli.exe
:: No Download found for FIN.
:: URL|FRA|http://download.microsoft.com/download/e/5/c/e5c34dae-d539-4873-80a3-6916ef7c5d78/msrdpcli.exe|packages/rdpclient/fra/msrdpcli.exe
:: No Download found for HEB.
:: URL|HUN|http://download.microsoft.com/download/2/2/4/224bfd95-f4a7-44c3-9d87-ecfe72dbd8ad/msrdpcli.exe|packages/rdpclient/hun/msrdpcli.exe
:: URL|ITA|http://download.microsoft.com/download/0/4/5/045a2c57-d75b-48cc-b55d-19662f1de8a1/msrdpcli.exe|packages/rdpclient/ita/msrdpcli.exe
:: URL|JPN|http://download.microsoft.com/download/6/f/9/6f96cb40-cdb7-4851-abea-9f9d67c77ae7/msrdpcli.exe|packages/rdpclient/jpn/msrdpcli.exe
:: URL|KOR|http://download.microsoft.com/download/5/e/a/5ead664f-64b4-4a8c-87bc-c827e4bec8f1/msrdpcli.exe|packages/rdpclient/kor/msrdpcli.exe
:: URL|NLD|http://download.microsoft.com/download/b/2/b/b2bca450-16c2-485d-9b67-d4c19b915dca/msrdpcli.exe|packages/rdpclient/nld/msrdpcli.exe
:: No Download found for NOR.
:: URL|PLK|http://download.microsoft.com/download/2/a/b/2ab711ba-302d-45b8-974c-8004ddad4b02/msrdpcli.exe|packages/rdpclient/plk/msrdpcli.exe
:: URL|PTB|http://download.microsoft.com/download/6/4/3/6431a7d9-e411-415b-b64a-1742a2a9572a/msrdpcli.exe|packages/rdpclient/ptb/msrdpcli.exe
:: URL|PTG|http://download.microsoft.com/download/5/9/1/59144b48-f67d-44d2-8dc2-082a6295811e/msrdpcli.exe|packages/rdpclient/ptg/msrdpcli.exe
:: URL|RUS|http://download.microsoft.com/download/6/d/9/6d97948c-44fa-4752-a575-d33842a0d2b1/msrdpcli.exe|packages/rdpclient/rus/msrdpcli.exe
:: URL|SVE|http://download.microsoft.com/download/5/1/3/5138bec3-f593-4fa9-9a9c-b8887649e967/msrdpcli.exe|packages/rdpclient/sve/msrdpcli.exe
:: URL|TRK|http://download.microsoft.com/download/6/a/4/6a4d27d1-7d21-4069-a331-9ebb007aedc9/msrdpcli.exe|packages/rdpclient/trk/msrdpcli.exe
todo.pl ".reboot-on 194 %Z%\packages\rdpclient\%WINLANG%\msrdpcli.exe /q /c:\"msiexec /l* %SystemDrive%\netinst\logs\msrdpcli.txt /i msrdpcli.msi /qb\""


:: The 2007 Microsoft Office Suite Service Pack 3 (SP3)
:: Description of the 2007 Microsoft Office suite Service Pack 3
:: <http://support.microsoft.com/kb/2526086>
:: <http://www.microsoft.com/en-us/download/details.aspx?id=27838>
:: URL|ENU|http://download.microsoft.com/download/2/2/A/22AA9422-C45D-46FA-808F-179A1BEBB2A7/office2007sp3-kb2526086-fullfile-en-us.exe|updates/office2007/enu/office2007sp3-kb2526086-fullfile-enu.exe
:: URL|ESN|http://download.microsoft.com/download/E/1/D/E1D71BF9-2D60-40D2-A473-0B06E63F113D/office2007sp3-kb2526086-fullfile-es-es.exe|updates/office2007/office2007sp3-kb2526086-fullfile-esn.exe
todo.pl ".reboot-on 194 %Z%\updates\office2007\office2007sp3-kb2526086-fullfile-%WINLANG%.exe /quiet /norestart"

:: https://docs.microsoft.com/en-us/previous-versions/office/office-2010/cc179006(v=office.14)
:: https://blogs.technet.microsoft.com/odsupport/2009/06/10/customize-office-2007-by-using-the-config-xml/
todo.pl "%Z%\packages\office2007\setup.exe /config %Z%\site\office2007.xml"

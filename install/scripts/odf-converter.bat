:: ODF Translator Add-ins  for Office
:: HOME: http://odf-converter.sourceforge.net/
:: URL|ALL|http://sourceforge.net/projects/odf-converter/files/ODF%20Add-in%20for%20Office/Release%204.0/OdfAddInForOfficeSetup-en_4.0.5309.exe|updates/common/odf-converter-en_4.0.5309.exe
todo.pl ".reboot-on 194 msiexec /i %TEMP%\odf-converter\OdfAddInForOfficeSetup.msi /q ALLUSERS=1"

todo.pl ".reboot-on 194 %Z%\updates\common\odf-converter-en_4.0.5309.exe /C /t:\"%TEMP%\odf-converter\""

:: INSTALL :: Microsoft .NET Package for windows XP
:: MORE INFO: http://msdn.microsoft.com/en-us/library/bb822049.aspx
:: URL|ALL|http://download.microsoft.com/download/3/1/8/318161B8-9874-48E4-BB38-9EB82C5D6358/dotNetFx40_Client_x86.exe|updates/common/dotnetfx40-client-x86.exe
:: URL|ALL|http://download.microsoft.com/download/2/0/e/20e90413-712f-438c-988e-fdaa79a8ac3d/dotnetfx35.exe|updates/common/dotnetfx35-sp1.exe
:: URL|ALL|http://download.microsoft.com/download/C/6/A/C6ADC586-2518-404B-8973-E1E22C556AF4/NDP35SP1-KB958484-x86.exe|updates/common/NDP35SP1-KB958484-x86.exe

todo.pl ".reboot-on 194 %Z%\updates\common\dotnetfx40-client-x86.exe /q /norestart"
:: INSTALL JUST 4.0
:: todo.pl ".reboot-on 194 %Z%\updates\common\NDP35SP1-KB958484-x86.exe /q /norestart"
:: todo.pl ".reboot-on 194 %Z%\updates\common\dotnetfx35-sp1.exe /q /norestart"

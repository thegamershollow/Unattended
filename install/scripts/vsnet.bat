:: Install Visual Studio .NET
@Echo off
set VSNETDIR=%Z_PATH%\packages\VSNET

:: Lots of prereqs here.  Remember that these are actually executed in
:: reverse order.

:: Visual Studio .NET 2003 GDIPLUS.DLL Security Update
:: Microsoft Security Bulletin MS04-028
:: <http://www.microsoft.com/technet/security/bulletin/ms04-028.mspx>
:: URL|ALL|http://download.microsoft.com/download/c/9/5/c956e5c8-11aa-4707-97e1-be9d8bc2b48f/VS7.1-KB830348-X86.exe|updates/common/vs7.1-kb830348-x86.exe
todo.pl ".reboot-on 194 %Z%\updates\common\VS7.1-KB830348-X86.exe /q"

:: Visual Studio .NET 2003 Crystal Reports Security Update
:: Microsoft Security Bulletin MS04-017
:: "Vulnerability in Crystal Reports Web Viewer Could Allow Information Disclosure and Denial of Service (842689)"
:: <http://www.microsoft.com/technet/security/bulletin/ms04-017.mspx>
:: <http://www.microsoft.com/downloads/details.aspx?FamilyId=659CA40E-808D-431D-A7D3-33BC3ACE922D>
:: URL|ALL|http://download.microsoft.com/download/0/5/d/05d3fd51-4b60-49e1-a762-afa47ac5ec6b/VS7.1-KB841870-X86.exe|updates/common/vs7.1-kb841870-x86.exe
todo.pl ".reboot-on 194 %Z%\updates\common\VS7.1-KB841870-X86.exe /q"

:: Install Visual Studio proper.
todo.pl "AutoIt %Z%\scripts\vsnet.aut"

:: Before that, install the Visual J# core.
:: (.NET needs to be installed before this)
todo.pl ".reboot-on 194 %VSNETDIR%\WCU\JSharpRedistCore\vjredist.exe /q /c:\"inst /q\""

:: And first, install the "Web Exec Client" and "Setup Runtime",
:: whatever those are.
todo.pl "msiexec /qb /l* %SystemDrive%\netinst\logs\weccom.txt /i %VSNETDIR%\WCU\weccom.msi" "msiexec /qb /l* %SystemDrive%\netinst\logs\bootstrap.txt /i %VSNETDIR%\WCU\bootstrap.msi"

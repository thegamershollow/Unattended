:: Windows XP with Service Pack 1 and Service Pack 1a symbols
:: <http://www.microsoft.com/whdc/devtools/debugging/symbolpkg.mspx>
:: URL|ALL|http://msdl.microsoft.com/download/symbols/packages/windowsxp/xpsp1sym_x86.exe|updates/winxpsp1/xpsp1sym_x86.exe
@Echo off
todo.pl "%Z%\updates\winxpsp1\xpsp1sym_x86.exe /q /c:\"symbols.exe /u\""

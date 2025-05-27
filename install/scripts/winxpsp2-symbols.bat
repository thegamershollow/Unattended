:: Windows XP with Service Pack 2 symbols
:: <http://www.microsoft.com/whdc/devtools/debugging/symbolpkg.mspx>
:: URL|ALL|http://msdl.microsoft.com/download/symbols/packages/windowsxp/WindowsXP-KB835935-SP2-slp-Symbols.exe|updates/winxpsp2/windowsxp-kb835935-sp2-slp-symbols.exe
@Echo off
todo.pl "%Z%\updates\winxpsp2\windowsxp-kb835935-sp2-slp-symbols.exe /q /c:\"symbols.exe /u\""

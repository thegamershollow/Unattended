:: Windows Server 2003 SP1 symbols
:: <http://www.microsoft.com/whdc/devtools/debugging/symbolpkg.mspx>
:: URL|ALL|http://msdl.microsoft.com/download/symbols/packages/windows2003/Windows2003_sp1.x86.fre.rtm.symbols.exe|updates/ws2k3sp1/windows2003_sp1.x86.fre.rtm.symbols.exe
@Echo off
todo.pl "%Z%\updates\ws2k3sp1\windows2003_sp1.x86.fre.rtm.symbols.exe /q /c:\"symbols.exe /u\""
